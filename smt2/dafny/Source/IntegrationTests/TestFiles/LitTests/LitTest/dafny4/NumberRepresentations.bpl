// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy

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

function Tclass._System.___hFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc2: TyTag;

// Tclass._System.___hFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == Tagclass._System.___hFunc2
     && TagFamily(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == tytagFamily$_#Func2);

function Tclass._System.___hFunc2_0(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_0(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T0);

function Tclass._System.___hFunc2_1(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_1(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T1);

function Tclass._System.___hFunc2_2(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_2(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc2(#$T0, #$T1, #$R)));

function Handle2([Heap,Box,Box]Box, [Heap,Box,Box]bool, [Heap,Box,Box]Set) : HandleType;

function Apply2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Box;

function Requires2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : bool;

function Reads2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) == h[heap, bx0, bx1]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  r[heap, bx0, bx1] ==> Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx: Box :: 
  { Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx) } 
  Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx)
     == Set#IsMember(rd[heap, bx0, bx1], bx));

function {:inline} Requires2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

function {:inline} Reads2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// empty-reads property for Reads2 
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Reads2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     ==> (Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
       <==> Set#Equal(Reads2(t0, t1, t2, heap, f, bx0, bx1), Set#Empty(): Set)));

// empty-reads property for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Requires2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
     ==> Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1)
       == Requires2(t0, t1, t2, heap, f, bx0, bx1));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     <==> (forall h: Heap, bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, u0: Ty, u1: Ty, u2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)), $Is(f, Tclass._System.___hFunc2(u0, u1, u2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, t2) } { $IsBox(bx, u2) } 
        $IsBox(bx, t2) ==> $IsBox(bx, u2))
     ==> $Is(f, Tclass._System.___hFunc2(u0, u1, u2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
       <==> (forall bx0: Box, bx1: Box :: 
        { Apply2(t0, t1, t2, h, f, bx0, bx1) } { Reads2(t0, t1, t2, h, f, bx0, bx1) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && Requires2(t0, t1, t2, h, f, bx0, bx1)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r)) } 
            r != null && Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
     ==> (forall bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsAllocBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2, h)));

function Tclass._System.___hPartialFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc2: TyTag;

// Tclass._System.___hPartialFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hPartialFunc2
     && TagFamily(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#PartialFunc2);

function Tclass._System.___hPartialFunc2_0(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_0(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc2_1(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_1(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc2_2(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_2(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Set#Equal(Reads2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hTotalFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc2: TyTag;

// Tclass._System.___hTotalFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hTotalFunc2
     && TagFamily(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#TotalFunc2);

function Tclass._System.___hTotalFunc2_0(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_0(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc2_1(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_1(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc2_2(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_2(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Requires2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h));

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.eval
function _module.__default.eval($ly: LayerType, digits#0: Seq, base#0: int) : int
uses {
// definition axiom for _module.__default.eval (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, digits#0: Seq, base#0: int :: 
    { _module.__default.eval($LS($ly), digits#0, base#0) } 
    _module.__default.eval#canCall(digits#0, base#0)
         || (0 < $FunctionContextHeight && $Is(digits#0, TSeq(TInt)) && LitInt(2) <= base#0)
       ==> (Seq#Length(digits#0) != LitInt(0)
           ==> _module.__default.eval#canCall(Seq#Drop(digits#0, LitInt(1)), base#0))
         && _module.__default.eval($LS($ly), digits#0, base#0)
           == (if Seq#Length(digits#0) == LitInt(0)
             then 0
             else $Unbox(Seq#Index(digits#0, LitInt(0))): int
               + Mul(base#0, _module.__default.eval($ly, Seq#Drop(digits#0, LitInt(1)), base#0))));
// definition axiom for _module.__default.eval for decreasing-related literals (revealed)
axiom {:id "id1"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, digits#0: Seq, base#0: int :: 
    {:weight 3} { _module.__default.eval($LS($ly), Lit(digits#0), base#0) } 
    _module.__default.eval#canCall(Lit(digits#0), base#0)
         || (0 < $FunctionContextHeight && $Is(digits#0, TSeq(TInt)) && LitInt(2) <= base#0)
       ==> (Seq#Length(Lit(digits#0)) != LitInt(0)
           ==> _module.__default.eval#canCall(Lit(Seq#Drop(Lit(digits#0), LitInt(1))), base#0))
         && _module.__default.eval($LS($ly), Lit(digits#0), base#0)
           == (if Seq#Length(Lit(digits#0)) == LitInt(0)
             then 0
             else $Unbox(Seq#Index(Lit(digits#0), LitInt(0))): int
               + Mul(base#0, 
                _module.__default.eval($LS($ly), Lit(Seq#Drop(Lit(digits#0), LitInt(1))), base#0))));
// definition axiom for _module.__default.eval for all literals (revealed)
axiom {:id "id2"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, digits#0: Seq, base#0: int :: 
    {:weight 3} { _module.__default.eval($LS($ly), Lit(digits#0), LitInt(base#0)) } 
    _module.__default.eval#canCall(Lit(digits#0), LitInt(base#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(digits#0, TSeq(TInt))
           && LitInt(2) <= LitInt(base#0))
       ==> (Seq#Length(Lit(digits#0)) != LitInt(0)
           ==> _module.__default.eval#canCall(Lit(Seq#Drop(Lit(digits#0), LitInt(1))), LitInt(base#0)))
         && _module.__default.eval($LS($ly), Lit(digits#0), LitInt(base#0))
           == (if Seq#Length(Lit(digits#0)) == LitInt(0)
             then 0
             else $Unbox(Seq#Index(Lit(digits#0), LitInt(0))): int
               + Mul(LitInt(base#0), 
                LitInt(_module.__default.eval($LS($ly), Lit(Seq#Drop(Lit(digits#0), LitInt(1))), LitInt(base#0))))));
}

function _module.__default.eval#canCall(digits#0: Seq, base#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, digits#0: Seq, base#0: int :: 
  { _module.__default.eval($LS($ly), digits#0, base#0) } 
  _module.__default.eval($LS($ly), digits#0, base#0)
     == _module.__default.eval($ly, digits#0, base#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, digits#0: Seq, base#0: int :: 
  { _module.__default.eval(AsFuelBottom($ly), digits#0, base#0) } 
  _module.__default.eval($ly, digits#0, base#0)
     == _module.__default.eval($LZ, digits#0, base#0));

function _module.__default.eval#requires(LayerType, Seq, int) : bool;

// #requires axiom for _module.__default.eval
axiom (forall $ly: LayerType, digits#0: Seq, base#0: int :: 
  { _module.__default.eval#requires($ly, digits#0, base#0) } 
  $Is(digits#0, TSeq(TInt))
     ==> _module.__default.eval#requires($ly, digits#0, base#0) == (LitInt(2) <= base#0));

procedure {:verboseName "eval (well-formedness)"} CheckWellformed$$_module.__default.eval(digits#0: Seq where $Is(digits#0, TSeq(TInt)), base#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "eval (well-formedness)"} CheckWellformed$$_module.__default.eval(digits#0: Seq, base#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##base#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id3"} LitInt(2) <= base#0;
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
        if (Seq#Length(digits#0) == LitInt(0))
        {
            assume {:id "id4"} _module.__default.eval($LS($LZ), digits#0, base#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.eval($LS($LZ), digits#0, base#0), TInt);
            return;
        }
        else
        {
            assert {:id "id5"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(digits#0);
            assert {:id "id6"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0 := Seq#Drop(digits#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
            ##base#0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0, TInt, $Heap);
            assert {:id "id7"} {:subsumption 0} LitInt(2) <= ##base#0;
            assume LitInt(2) <= ##base#0;
            assert {:id "id8"} Seq#Rank(##digits#0) < Seq#Rank(digits#0);
            assume _module.__default.eval#canCall(Seq#Drop(digits#0, LitInt(1)), base#0);
            assume {:id "id9"} _module.__default.eval($LS($LZ), digits#0, base#0)
               == $Unbox(Seq#Index(digits#0, LitInt(0))): int
                 + Mul(base#0, _module.__default.eval($LS($LZ), Seq#Drop(digits#0, LitInt(1)), base#0));
            assume _module.__default.eval#canCall(Seq#Drop(digits#0, LitInt(1)), base#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.eval($LS($LZ), digits#0, base#0), TInt);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "test_eval (well-formedness)"} CheckWellFormed$$_module.__default.test__eval();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test_eval (call)"} Call$$_module.__default.test__eval();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "test_eval (correctness)"} Impl$$_module.__default.test__eval() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test_eval (correctness)"} Impl$$_module.__default.test__eval() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var base#0: int;
  var ##digits#0: Seq;
  var ##base#0: int;
  var base#2: int;
  var ##digits#1: Seq;
  var ##base#1: int;
  var base#4: int;
  var ##digits#2: Seq;
  var ##base#2: int;
  var ##digits#3: Seq;
  var ##base#3: int;
  var oct#0: int;
  var dec#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var ##digits#4: Seq;
  var ##base#4: int;
  var ##digits#5: Seq;
  var ##base#5: int;
  var ##digits#6: Seq;
  var ##base#6: int;
  var ##digits#7: Seq;
  var ##base#7: int;
  var ##digits#8: Seq;
  var ##base#8: int;

    // AddMethodImpl: test_eval, Impl$$_module.__default.test__eval
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(18,3)
    // Begin Comprehension WF check
    havoc base#0;
    if (true)
    {
        if (LitInt(2) <= base#0)
        {
            ##digits#0 := Lit(Seq#Empty(): Seq);
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
            ##base#0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0, TInt, $Heap);
            assert {:id "id10"} {:subsumption 0} LitInt(2) <= ##base#0;
            assume _module.__default.eval#canCall(Lit(Seq#Empty(): Seq), base#0);
        }
    }

    // End Comprehension WF check
    assume (forall base#1: int :: 
      { _module.__default.eval($LS($LZ), Seq#Empty(): Seq, base#1) } 
      LitInt(2) <= base#1
         ==> _module.__default.eval#canCall(Lit(Seq#Empty(): Seq), base#1));
    assert {:id "id11"} {:subsumption 0} (forall base#1: int :: 
      { _module.__default.eval($LS($LS($LZ)), Seq#Empty(): Seq, base#1) } 
      LitInt(2) <= base#1
         ==> _module.__default.eval($LS($LS($LZ)), Lit(Seq#Empty(): Seq), base#1)
           == LitInt(0));
    assume {:id "id12"} (forall base#1: int :: 
      { _module.__default.eval($LS($LZ), Seq#Empty(): Seq, base#1) } 
      LitInt(2) <= base#1
         ==> _module.__default.eval($LS($LZ), Lit(Seq#Empty(): Seq), base#1) == LitInt(0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(19,3)
    // Begin Comprehension WF check
    havoc base#2;
    if (true)
    {
        if (LitInt(2) <= base#2)
        {
            ##digits#1 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
            ##base#1 := base#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#1, TInt, $Heap);
            assert {:id "id13"} {:subsumption 0} LitInt(2) <= ##base#1;
            assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#2);
        }
    }

    // End Comprehension WF check
    assume (forall base#3: int :: 
      { _module.__default.eval($LS($LZ), Seq#Build(Seq#Empty(): Seq, $Box(0)), base#3) } 
      LitInt(2) <= base#3
         ==> _module.__default.eval#canCall(Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#3));
    assert {:id "id14"} {:subsumption 0} (forall base#3: int :: 
      { _module.__default.eval($LS($LS($LZ)), Seq#Build(Seq#Empty(): Seq, $Box(0)), base#3) } 
      LitInt(2) <= base#3
         ==> _module.__default.eval($LS($LS($LZ)), Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#3)
           == LitInt(0));
    assume {:id "id15"} (forall base#3: int :: 
      { _module.__default.eval($LS($LZ), Seq#Build(Seq#Empty(): Seq, $Box(0)), base#3) } 
      LitInt(2) <= base#3
         ==> _module.__default.eval($LS($LZ), Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#3)
           == LitInt(0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(24,3)
    // Begin Comprehension WF check
    havoc base#4;
    if (true)
    {
        if (LitInt(2) <= base#4)
        {
            ##digits#2 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
            ##base#2 := base#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#2, TInt, $Heap);
            assert {:id "id16"} {:subsumption 0} LitInt(2) <= ##base#2;
            assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0)))), 
              base#4);
        }
    }

    // End Comprehension WF check
    assume (forall base#5: int :: 
      { _module.__default.eval($LS($LZ), Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(0)), $Box(0)), base#5) } 
      LitInt(2) <= base#5
         ==> _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0)))), 
          base#5));
    assert {:id "id17"} {:subsumption 0} (forall base#5: int :: 
      { _module.__default.eval($LS($LS($LZ)), Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(0)), $Box(0)), base#5) } 
      LitInt(2) <= base#5
         ==> _module.__default.eval($LS($LS($LZ)), 
            Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0)))), 
            base#5)
           == LitInt(0));
    assume {:id "id18"} (forall base#5: int :: 
      { _module.__default.eval($LS($LZ), Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(0)), $Box(0)), base#5) } 
      LitInt(2) <= base#5
         ==> _module.__default.eval($LS($LZ), 
            Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(0)))), 
            base#5)
           == LitInt(0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(26,3)
    ##digits#3 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3))), $Box(LitInt(2))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#3, TSeq(TInt), $Heap);
    ##base#3 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#3, TInt, $Heap);
    assert {:id "id19"} {:subsumption 0} LitInt(2) <= ##base#3;
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3))), $Box(LitInt(2)))), 
      LitInt(10));
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3))), $Box(LitInt(2)))), 
      LitInt(10));
    assert {:id "id20"} {:subsumption 0} LitInt(_module.__default.eval($LS($LS($LZ)), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3))), $Box(LitInt(2)))), 
          LitInt(10)))
       == LitInt(23);
    assume {:id "id21"} LitInt(_module.__default.eval($LS($LZ), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3))), $Box(LitInt(2)))), 
          LitInt(10)))
       == LitInt(23);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(28,16)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(8);
    assume true;
    $rhs#1 := LitInt(10);
    oct#0 := $rhs#0;
    dec#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(29,3)
    ##digits#4 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(3))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#4, TSeq(TInt), $Heap);
    ##base#4 := oct#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#4, TInt, $Heap);
    assert {:id "id26"} {:subsumption 0} LitInt(2) <= ##base#4;
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(3)))), 
      oct#0);
    ##digits#5 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(5))), $Box(LitInt(2))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#5, TSeq(TInt), $Heap);
    ##base#5 := dec#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#5, TInt, $Heap);
    assert {:id "id27"} {:subsumption 0} LitInt(2) <= ##base#5;
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(5))), $Box(LitInt(2)))), 
      dec#0);
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(3)))), 
        oct#0)
       && _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(5))), $Box(LitInt(2)))), 
        dec#0);
    assert {:id "id28"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(3)))), 
        oct#0)
       == _module.__default.eval($LS($LS($LZ)), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(5))), $Box(LitInt(2)))), 
        dec#0);
    assume {:id "id29"} _module.__default.eval($LS($LZ), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(3)))), 
        oct#0)
       == _module.__default.eval($LS($LZ), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(5))), $Box(LitInt(2)))), 
        dec#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(31,3)
    ##digits#6 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#6, TSeq(TInt), $Heap);
    ##base#6 := LitInt(420);
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#6, TInt, $Heap);
    assert {:id "id30"} {:subsumption 0} LitInt(2) <= ##base#6;
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(420));
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(420));
    assert {:id "id31"} {:subsumption 0} LitInt(_module.__default.eval($LS($LS($LZ)), Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(420)))
       == LitInt(29);
    assume {:id "id32"} LitInt(_module.__default.eval($LS($LZ), Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(420)))
       == LitInt(29);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(32,3)
    ##digits#7 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#7, TSeq(TInt), $Heap);
    ##base#7 := LitInt(8);
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#7, TInt, $Heap);
    assert {:id "id33"} {:subsumption 0} LitInt(2) <= ##base#7;
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(8));
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(8));
    assert {:id "id34"} {:subsumption 0} LitInt(_module.__default.eval($LS($LS($LZ)), Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(8)))
       == LitInt(29);
    assume {:id "id35"} LitInt(_module.__default.eval($LS($LZ), Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(29)))), LitInt(8)))
       == LitInt(29);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(34,3)
    ##digits#8 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(-2))), $Box(LitInt(1))), 
        $Box(LitInt(-3))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#8, TSeq(TInt), $Heap);
    ##base#8 := LitInt(5);
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#8, TInt, $Heap);
    assert {:id "id36"} {:subsumption 0} LitInt(2) <= ##base#8;
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(-2))), $Box(LitInt(1))), 
          $Box(LitInt(-3)))), 
      LitInt(5));
    assume _module.__default.eval#canCall(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(-2))), $Box(LitInt(1))), 
          $Box(LitInt(-3)))), 
      LitInt(5));
    assert {:id "id37"} {:subsumption 0} LitInt(_module.__default.eval($LS($LS($LZ)), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(-2))), $Box(LitInt(1))), 
              $Box(LitInt(-3)))), 
          LitInt(5)))
       == LitInt(-72);
    assume {:id "id38"} LitInt(_module.__default.eval($LS($LZ), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(-2))), $Box(LitInt(1))), 
              $Box(LitInt(-3)))), 
          LitInt(5)))
       == LitInt(-72);
}



// function declaration for _module._default.IsSkewNumber
function _module.__default.IsSkewNumber(digits#0: Seq, lowDigit#0: int, base#0: int) : bool
uses {
// definition axiom for _module.__default.IsSkewNumber (revealed)
axiom {:id "id39"} 0 <= $FunctionContextHeight
   ==> (forall digits#0: Seq, lowDigit#0: int, base#0: int :: 
    { _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0) } 
    _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
         || (0 < $FunctionContextHeight && $Is(digits#0, TSeq(TInt)))
       ==> _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
         == (
          LitInt(2) <= base#0
           && 
          lowDigit#0 <= LitInt(0)
           && 0 < lowDigit#0 + base#0
           && (forall i#0: int :: 
            { $Unbox(Seq#Index(digits#0, i#0)): int } 
            (LitInt(0) <= i#0 && i#0 < Seq#Length(digits#0)
                 ==> lowDigit#0 <= $Unbox(Seq#Index(digits#0, i#0)): int)
               && (LitInt(0) <= i#0 && i#0 < Seq#Length(digits#0)
                 ==> $Unbox(Seq#Index(digits#0, i#0)): int < lowDigit#0 + base#0))));
// definition axiom for _module.__default.IsSkewNumber for all literals (revealed)
axiom {:id "id40"} 0 <= $FunctionContextHeight
   ==> (forall digits#0: Seq, lowDigit#0: int, base#0: int :: 
    {:weight 3} { _module.__default.IsSkewNumber(Lit(digits#0), LitInt(lowDigit#0), LitInt(base#0)) } 
    _module.__default.IsSkewNumber#canCall(Lit(digits#0), LitInt(lowDigit#0), LitInt(base#0))
         || (0 < $FunctionContextHeight && $Is(digits#0, TSeq(TInt)))
       ==> _module.__default.IsSkewNumber(Lit(digits#0), LitInt(lowDigit#0), LitInt(base#0))
         == (
          LitInt(2) <= LitInt(base#0)
           && 
          LitInt(lowDigit#0) <= LitInt(0)
           && 0 < lowDigit#0 + base#0
           && (forall i#1: int :: 
            { $Unbox(Seq#Index(digits#0, i#1)): int } 
            (LitInt(0) <= i#1 && i#1 < Seq#Length(Lit(digits#0))
                 ==> LitInt(lowDigit#0) <= $Unbox(Seq#Index(Lit(digits#0), i#1)): int)
               && (LitInt(0) <= i#1 && i#1 < Seq#Length(Lit(digits#0))
                 ==> $Unbox(Seq#Index(Lit(digits#0), i#1)): int < lowDigit#0 + base#0))));
}

function _module.__default.IsSkewNumber#canCall(digits#0: Seq, lowDigit#0: int, base#0: int) : bool;

function _module.__default.IsSkewNumber#requires(Seq, int, int) : bool;

// #requires axiom for _module.__default.IsSkewNumber
axiom (forall digits#0: Seq, lowDigit#0: int, base#0: int :: 
  { _module.__default.IsSkewNumber#requires(digits#0, lowDigit#0, base#0) } 
  $Is(digits#0, TSeq(TInt))
     ==> _module.__default.IsSkewNumber#requires(digits#0, lowDigit#0, base#0) == true);

procedure {:verboseName "IsSkewNumber (well-formedness)"} CheckWellformed$$_module.__default.IsSkewNumber(digits#0: Seq where $Is(digits#0, TSeq(TInt)), lowDigit#0: int, base#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IsSkewNumber (well-formedness)"} CheckWellformed$$_module.__default.IsSkewNumber(digits#0: Seq, lowDigit#0: int, base#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#2: int;


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
        if (LitInt(2) <= base#0)
        {
            if (lowDigit#0 <= LitInt(0))
            {
            }
        }

        if (LitInt(2) <= base#0 && lowDigit#0 <= LitInt(0) && 0 < lowDigit#0 + base#0)
        {
            // Begin Comprehension WF check
            havoc i#2;
            if (true)
            {
                if (LitInt(0) <= i#2)
                {
                }

                if (LitInt(0) <= i#2 && i#2 < Seq#Length(digits#0))
                {
                    assert {:id "id41"} 0 <= i#2 && i#2 < Seq#Length(digits#0);
                    if (lowDigit#0 <= $Unbox(Seq#Index(digits#0, i#2)): int)
                    {
                        assert {:id "id42"} 0 <= i#2 && i#2 < Seq#Length(digits#0);
                    }
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id43"} _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
           == (
            LitInt(2) <= base#0
             && 
            lowDigit#0 <= LitInt(0)
             && 0 < lowDigit#0 + base#0
             && (forall i#3: int :: 
              { $Unbox(Seq#Index(digits#0, i#3)): int } 
              (LitInt(0) <= i#3 && i#3 < Seq#Length(digits#0)
                   ==> lowDigit#0 <= $Unbox(Seq#Index(digits#0, i#3)): int)
                 && (LitInt(0) <= i#3 && i#3 < Seq#Length(digits#0)
                   ==> $Unbox(Seq#Index(digits#0, i#3)): int < lowDigit#0 + base#0)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "CompleteNat (well-formedness)"} CheckWellFormed$$_module.__default.CompleteNat(n#0: int where LitInt(0) <= n#0, base#0: int)
   returns (digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CompleteNat (well-formedness)"} CheckWellFormed$$_module.__default.CompleteNat(n#0: int, base#0: int) returns (digits#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;


    // AddMethodImpl: CompleteNat, CheckWellFormed$$_module.__default.CompleteNat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id44"} LitInt(2) <= base#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc digits#0;
    ##digits#0 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0);
    assume {:id "id45"} _module.__default.IsSkewNumber(digits#0, LitInt(0), base#0);
    ##digits#1 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id46"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(digits#0, base#0);
    assume {:id "id47"} _module.__default.eval($LS($LZ), digits#0, base#0) == n#0;
}



procedure {:verboseName "CompleteNat (call)"} Call$$_module.__default.CompleteNat(n#0: int where LitInt(0) <= n#0, base#0: int)
   returns (digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id48"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0)
     && (_module.__default.IsSkewNumber(digits#0, LitInt(0), base#0)
       ==> _module.__default.eval#canCall(digits#0, base#0));
  free ensures {:id "id49"} _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0)
     && 
    _module.__default.IsSkewNumber(digits#0, LitInt(0), base#0)
     && 
    LitInt(2) <= base#0
     && 
    LitInt(0) <= LitInt(0)
     && 0 < 0 + base#0
     && (forall i#0: int :: 
      { $Unbox(Seq#Index(digits#0, i#0)): int } 
      (LitInt(0) <= i#0 && i#0 < Seq#Length(digits#0)
           ==> LitInt(0) <= $Unbox(Seq#Index(digits#0, i#0)): int)
         && (LitInt(0) <= i#0 && i#0 < Seq#Length(digits#0)
           ==> $Unbox(Seq#Index(digits#0, i#0)): int < 0 + base#0));
  ensures {:id "id50"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0) == n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CompleteNat (correctness)"} Impl$$_module.__default.CompleteNat(n#0: int where LitInt(0) <= n#0, base#0: int)
   returns (digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id51"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0)
     && (_module.__default.IsSkewNumber(digits#0, LitInt(0), base#0)
       ==> _module.__default.eval#canCall(digits#0, base#0));
  ensures {:id "id52"} _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0)
     ==> _module.__default.IsSkewNumber(digits#0, LitInt(0), base#0)
       || LitInt(2) <= base#0;
  ensures {:id "id53"} _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0)
     ==> _module.__default.IsSkewNumber(digits#0, LitInt(0), base#0)
       || LitInt(0) <= LitInt(0);
  ensures {:id "id54"} _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0)
     ==> _module.__default.IsSkewNumber(digits#0, LitInt(0), base#0) || 0 < 0 + base#0;
  ensures {:id "id55"} _module.__default.IsSkewNumber#canCall(digits#0, LitInt(0), base#0)
     ==> _module.__default.IsSkewNumber(digits#0, LitInt(0), base#0)
       || (forall i#1: int :: 
        { $Unbox(Seq#Index(digits#0, i#1)): int } 
        (LitInt(0) <= i#1 && i#1 < Seq#Length(digits#0)
             ==> LitInt(0) <= $Unbox(Seq#Index(digits#0, i#1)): int)
           && (LitInt(0) <= i#1 && i#1 < Seq#Length(digits#0)
             ==> $Unbox(Seq#Index(digits#0, i#1)): int < 0 + base#0));
  ensures {:id "id56"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0) == n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CompleteNat (correctness)"} Impl$$_module.__default.CompleteNat(n#0: int, base#0: int) returns (digits#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#1_0: int;
  var m#1_0: int;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var n##1_0: int;
  var base##1_0: int;
  var d##1_0: int;
  var $rhs##1_0: Seq;
  var n##1_1: int;
  var base##1_1: int;

    // AddMethodImpl: CompleteNat, Impl$$_module.__default.CompleteNat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(55,3)
    assume true;
    if (n#0 < base#0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(56,12)
        assume true;
        assume true;
        digits#0 := Seq#Build(Seq#Empty(): Seq, $Box(n#0));
    }
    else
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(58,14)
        assume true;
        assume true;
        assert {:id "id58"} base#0 != 0;
        assume true;
        $rhs#1_0 := Div(n#0, base#0);
        assert {:id "id60"} base#0 != 0;
        assume true;
        $rhs#1_1 := Mod(n#0, base#0);
        d#1_0 := $rhs#1_0;
        m#1_0 := $rhs#1_1;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(59,5)
        assume true;
        assert {:id "id64"} Mul(base#0, d#1_0) + m#1_0 == n#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(60,14)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##1_0 := n#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##1_0 := base#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##1_0 := d#1_0;
        call {:id "id65"} Call$$_module.__default.DivIsLess(n##1_0, base##1_0, d##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(61,5)
        if (d#1_0 < n#0)
        {
        }

        assume true;
        assert {:id "id66"} {:subsumption 0} d#1_0 < n#0;
        assert {:id "id67"} {:subsumption 0} LitInt(0) <= m#1_0;
        assume {:id "id68"} d#1_0 < n#0 && LitInt(0) <= m#1_0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(62,26)
        assume true;
        // TrCallStmt: Adding lhs with type seq<int>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id69"} $Is(d#1_0, Tclass._System.nat());
        n##1_1 := d#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##1_1 := base#0;
        assert {:id "id70"} 0 <= n#0 || n##1_1 == n#0;
        assert {:id "id71"} 0 <= base#0 || n##1_1 < n#0 || base##1_1 == base#0;
        assert {:id "id72"} n##1_1 < n#0 || (n##1_1 == n#0 && base##1_1 < base#0);
        call {:id "id73"} $rhs##1_0 := Call$$_module.__default.CompleteNat(n##1_1, base##1_1);
        // TrCallStmt: After ProcessCallStmt
        digits#0 := $rhs##1_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(63,12)
        assume true;
        assume true;
        digits#0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(m#1_0)), digits#0);
    }
}



procedure {:verboseName "DivIsLess (well-formedness)"} CheckWellFormed$$_module.__default.DivIsLess(n#0: int where LitInt(0) <= n#0, base#0: int, d#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DivIsLess (well-formedness)"} CheckWellFormed$$_module.__default.DivIsLess(n#0: int, base#0: int, d#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: DivIsLess, CheckWellFormed$$_module.__default.DivIsLess
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(2) <= base#0)
    {
    }

    assume {:id "id76"} LitInt(2) <= base#0 && base#0 <= n#0;
    assert {:id "id77"} base#0 != 0;
    assume {:id "id78"} d#0 == Div(n#0, base#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id79"} d#0 < n#0;
}



procedure {:verboseName "DivIsLess (call)"} Call$$_module.__default.DivIsLess(n#0: int where LitInt(0) <= n#0, base#0: int, d#0: int);
  // user-defined preconditions
  requires {:id "id80"} LitInt(2) <= base#0;
  requires {:id "id81"} base#0 <= n#0;
  requires {:id "id82"} d#0 == Div(n#0, base#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id83"} d#0 < n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DivIsLess (correctness)"} Impl$$_module.__default.DivIsLess(n#0: int where LitInt(0) <= n#0, base#0: int, d#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id84"} LitInt(2) <= base#0;
  requires {:id "id85"} base#0 <= n#0;
  requires {:id "id86"} d#0 == Div(n#0, base#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id87"} d#0 < n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DivIsLess (correctness)"} Impl$$_module.__default.DivIsLess(n#0: int, base#0: int, d#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: int;
  var x##0_0_2_0: int;
  var y##0_0_2_0: int;
  var a##0_0_5_0: int;
  var x##0_0_5_0: int;
  var y##0_0_5_0: int;

    // AddMethodImpl: DivIsLess, Impl$$_module.__default.DivIsLess
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(71,9)
    assume true;
    assert {:id "id88"} base#0 != 0;
    assume true;
    m#0 := Mod(n#0, base#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(72,3)
    assume true;
    if (n#0 <= d#0)
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume {:id "id106"} Mul(base#0, d#0) + m#0 == n#0;
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            push;
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(75,11)
            assume true;
            assert {:id "id107"} LitInt(0) <= m#0;
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assert line0 ==> line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assert {:id "id108"} {:subsumption 0} Mul(base#0, d#0) + m#0 == n#0 ==> Mul(base#0, d#0) <= n#0;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume {:id "id102"} Mul(base#0, d#0) <= n#0;
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            push;
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(77,11)
            assume true;
            assert {:id "id103"} n#0 <= d#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(77,40)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_0_5_0 := base#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0_0_5_0 := n#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##0_0_5_0 := d#0;
            call {:id "id104"} Call$$_module.__default.MulIsMonotonic(a##0_0_5_0, x##0_0_5_0, y##0_0_5_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assert {:id "id105"} {:subsumption 0} Mul(base#0, d#0) <= n#0 ==> Mul(base#0, n#0) <= n#0;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume {:id "id100"} Mul(base#0, n#0) <= n#0;
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            push;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assert line2 ==> line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assert {:id "id101"} {:subsumption 0} Mul(base#0, n#0) <= n#0 ==> Mul(base#0 - 1, n#0) + n#0 <= n#0;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume {:id "id98"} Mul(base#0 - 1, n#0) + n#0 <= n#0;
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            push;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assert line3 ==> line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assert {:id "id99"} {:subsumption 0} Mul(base#0 - 1, n#0) + n#0 <= n#0 ==> Mul(base#0 - 1, n#0) <= LitInt(0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume {:id "id94"} Mul(base#0 - 1, n#0) <= LitInt(0);
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            push;
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(81,11)
            assume true;
            assert {:id "id95"} Mul(base#0 - 1, n#0) <= LitInt(0);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(81,46)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0_0_2_0 := base#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##0_0_2_0 := n#0;
            call {:id "id96"} Call$$_module.__default.MulSign(x##0_0_2_0, y##0_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            if (LitInt(0) < base#0 - 1)
            {
            }

            assume true;
            // ----- assert line4 ==> line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assert {:id "id97"} {:subsumption 0} Mul(base#0 - 1, n#0) <= LitInt(0)
               ==> base#0 - 1 <= LitInt(0) || n#0 <= LitInt(0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            if (LitInt(0) < base#0 - 1)
            {
            }

            assume true;
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            push;
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(83,11)
            assume true;
            assert {:id "id92"} 0 < n#0;
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assert {:id "id93"} {:subsumption 0} (base#0 - 1 <= LitInt(0) || n#0 <= LitInt(0)) == (base#0 - 1 <= LitInt(0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            push;
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(85,11)
            assume true;
            assert {:id "id90"} LitInt(2) <= base#0;
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assume true;
            // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(73,5)
            assert {:id "id91"} {:subsumption 0} (base#0 - 1 <= LitInt(0)) == Lit(false);
            assume false;
        }

        assume {:id "id109"} Mul(base#0, d#0) + m#0 == n#0 ==> false;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(88,5)
        assume true;
        assert {:id "id110"} Lit(false);
    }
    else
    {
    }
}



procedure {:verboseName "MulSign (well-formedness)"} CheckWellFormed$$_module.__default.MulSign(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MulSign (call)"} Call$$_module.__default.MulSign(x#0: int, y#0: int);
  // user-defined preconditions
  requires {:id "id115"} Mul(x#0, y#0) <= LitInt(0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id116"} x#0 <= LitInt(0) || y#0 <= LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MulSign (correctness)"} Impl$$_module.__default.MulSign(x#0: int, y#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id117"} Mul(x#0, y#0) <= LitInt(0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id118"} x#0 <= LitInt(0) || y#0 <= LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MulSign (correctness)"} Impl$$_module.__default.MulSign(x#0: int, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MulSign, Impl$$_module.__default.MulSign
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Complete (well-formedness)"} CheckWellFormed$$_module.__default.Complete(n#0: int, lowDigit#0: int, base#0: int)
   returns (digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Complete (well-formedness)"} CheckWellFormed$$_module.__default.Complete(n#0: int, lowDigit#0: int, base#0: int) returns (digits#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;


    // AddMethodImpl: Complete, CheckWellFormed$$_module.__default.Complete
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id119"} LitInt(2) <= base#0;
    if (lowDigit#0 <= LitInt(0))
    {
    }

    assume {:id "id120"} lowDigit#0 <= LitInt(0) && 0 < lowDigit#0 + base#0;
    if (*)
    {
        assume {:id "id121"} LitInt(0) <= lowDigit#0;
        assume {:id "id122"} LitInt(0) <= n#0;
    }
    else
    {
        assume {:id "id123"} LitInt(0) <= lowDigit#0 ==> LitInt(0) <= n#0;
    }

    if (*)
    {
        assume {:id "id124"} lowDigit#0 + base#0 <= LitInt(1);
        assume {:id "id125"} n#0 <= LitInt(0);
    }
    else
    {
        assume {:id "id126"} lowDigit#0 + base#0 <= LitInt(1) ==> n#0 <= LitInt(0);
    }

    if (LitInt(0) <= n#0)
    {
    }
    else
    {
    }

    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc digits#0;
    ##digits#0 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0);
    assume {:id "id127"} _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0);
    ##digits#1 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id128"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(digits#0, base#0);
    assume {:id "id129"} _module.__default.eval($LS($LZ), digits#0, base#0) == n#0;
}



procedure {:verboseName "Complete (call)"} Call$$_module.__default.Complete(n#0: int, lowDigit#0: int, base#0: int)
   returns (digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id130"} LitInt(2) <= base#0;
  requires {:id "id131"} lowDigit#0 <= LitInt(0);
  requires {:id "id132"} 0 < lowDigit#0 + base#0;
  requires {:id "id133"} LitInt(0) <= lowDigit#0 ==> LitInt(0) <= n#0;
  requires {:id "id134"} lowDigit#0 + base#0 <= LitInt(1) ==> n#0 <= LitInt(0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
     && (_module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
       ==> _module.__default.eval#canCall(digits#0, base#0));
  free ensures {:id "id135"} _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#0: int :: 
      { $Unbox(Seq#Index(digits#0, i#0)): int } 
      (LitInt(0) <= i#0 && i#0 < Seq#Length(digits#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(digits#0, i#0)): int)
         && (LitInt(0) <= i#0 && i#0 < Seq#Length(digits#0)
           ==> $Unbox(Seq#Index(digits#0, i#0)): int < lowDigit#0 + base#0));
  ensures {:id "id136"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0) == n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Complete (correctness)"} Impl$$_module.__default.Complete(n#0: int, lowDigit#0: int, base#0: int)
   returns (digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id137"} LitInt(2) <= base#0;
  requires {:id "id138"} lowDigit#0 <= LitInt(0);
  requires {:id "id139"} 0 < lowDigit#0 + base#0;
  requires {:id "id140"} LitInt(0) <= lowDigit#0 ==> LitInt(0) <= n#0;
  requires {:id "id141"} lowDigit#0 + base#0 <= LitInt(1) ==> n#0 <= LitInt(0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
     && (_module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
       ==> _module.__default.eval#canCall(digits#0, base#0));
  ensures {:id "id142"} _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
       || LitInt(2) <= base#0;
  ensures {:id "id143"} _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  ensures {:id "id144"} _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  ensures {:id "id145"} _module.__default.IsSkewNumber#canCall(digits#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(digits#0, lowDigit#0, base#0)
       || (forall i#1: int :: 
        { $Unbox(Seq#Index(digits#0, i#1)): int } 
        (LitInt(0) <= i#1 && i#1 < Seq#Length(digits#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(digits#0, i#1)): int)
           && (LitInt(0) <= i#1 && i#1 < Seq#Length(digits#0)
             ==> $Unbox(Seq#Index(digits#0, i#1)): int < lowDigit#0 + base#0));
  ensures {:id "id146"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0) == n#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Complete (correctness)"} Impl$$_module.__default.Complete(n#0: int, lowDigit#0: int, base#0: int)
   returns (digits#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0_0: Seq;
  var n##1_0_0: int;
  var lowDigit##1_0_0: int;
  var base##1_0_0: int;
  var $rhs##1_0_1: Seq;
  var a##1_0_0: Seq;
  var lowDigit##1_0_1: int;
  var base##1_0_1: int;
  var $rhs##1_1_0: Seq;
  var n##1_1_0: int;
  var lowDigit##1_1_0: int;
  var base##1_1_0: int;
  var $rhs##1_1_1: Seq;
  var a##1_1_0: Seq;
  var lowDigit##1_1_1: int;
  var base##1_1_1: int;

    // AddMethodImpl: Complete, Impl$$_module.__default.Complete
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(109,3)
    if (lowDigit#0 <= n#0)
    {
    }

    assume true;
    if (lowDigit#0 <= n#0 && n#0 < lowDigit#0 + base#0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(110,12)
        assume true;
        assume true;
        digits#0 := Seq#Build(Seq#Empty(): Seq, $Box(n#0));
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(111,10)
        assume true;
        if (0 < n#0)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(112,23)
            assume true;
            // TrCallStmt: Adding lhs with type seq<int>
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##1_0_0 := n#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            lowDigit##1_0_0 := lowDigit#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            base##1_0_0 := base#0;
            assert {:id "id148"} 0 <= (if LitInt(0) <= n#0 then n#0 else 0 - n#0)
               || (if LitInt(0) <= n##1_0_0 then n##1_0_0 else 0 - n##1_0_0)
                 == (if LitInt(0) <= n#0 then n#0 else 0 - n#0);
            assert {:id "id149"} (if LitInt(0) <= n##1_0_0 then n##1_0_0 else 0 - n##1_0_0)
               < (if LitInt(0) <= n#0 then n#0 else 0 - n#0);
            call {:id "id150"} $rhs##1_0_0 := Call$$_module.__default.Complete(n##1_0_0, lowDigit##1_0_0, base##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            digits#0 := $rhs##1_0_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(113,18)
            assume true;
            // TrCallStmt: Adding lhs with type seq<int>
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_0 := digits#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            lowDigit##1_0_1 := lowDigit#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            base##1_0_1 := base#0;
            call {:id "id152"} $rhs##1_0_1 := Call$$_module.__default.inc(a##1_0_0, lowDigit##1_0_1, base##1_0_1);
            // TrCallStmt: After ProcessCallStmt
            digits#0 := $rhs##1_0_1;
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(115,23)
            assume true;
            // TrCallStmt: Adding lhs with type seq<int>
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            n##1_1_0 := n#0 + 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            lowDigit##1_1_0 := lowDigit#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            base##1_1_0 := base#0;
            assert {:id "id154"} 0 <= (if LitInt(0) <= n#0 then n#0 else 0 - n#0)
               || (if LitInt(0) <= n##1_1_0 then n##1_1_0 else 0 - n##1_1_0)
                 == (if LitInt(0) <= n#0 then n#0 else 0 - n#0);
            assert {:id "id155"} (if LitInt(0) <= n##1_1_0 then n##1_1_0 else 0 - n##1_1_0)
               < (if LitInt(0) <= n#0 then n#0 else 0 - n#0);
            call {:id "id156"} $rhs##1_1_0 := Call$$_module.__default.Complete(n##1_1_0, lowDigit##1_1_0, base##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            digits#0 := $rhs##1_1_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(116,18)
            assume true;
            // TrCallStmt: Adding lhs with type seq<int>
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_1_0 := digits#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            lowDigit##1_1_1 := lowDigit#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            base##1_1_1 := base#0;
            call {:id "id158"} $rhs##1_1_1 := Call$$_module.__default.dec(a##1_1_0, lowDigit##1_1_1, base##1_1_1);
            // TrCallStmt: After ProcessCallStmt
            digits#0 := $rhs##1_1_1;
        }
    }
}



procedure {:verboseName "inc (well-formedness)"} CheckWellFormed$$_module.__default.inc(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns (b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "inc (well-formedness)"} CheckWellFormed$$_module.__default.inc(a#0: Seq, lowDigit#0: int, base#0: int) returns (b#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;
  var ##digits#2: Seq;
  var ##lowDigit#1: int;
  var ##base#2: int;
  var ##digits#3: Seq;
  var ##base#3: int;
  var ##digits#4: Seq;
  var ##base#4: int;


    // AddMethodImpl: inc, CheckWellFormed$$_module.__default.inc
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0);
    assume {:id "id160"} _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0);
    if (*)
    {
        ##digits#1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
        ##base#1 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1, TInt, $Heap);
        assert {:id "id161"} {:subsumption 0} LitInt(2) <= ##base#1;
        assume LitInt(2) <= ##base#1;
        assume _module.__default.eval#canCall(a#0, base#0);
        assume {:id "id162"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0);
        assume {:id "id163"} 1 < lowDigit#0 + base#0;
    }
    else
    {
        assume {:id "id164"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0)
           ==> 1 < lowDigit#0 + base#0;
    }

    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc b#0;
    ##digits#2 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
    ##lowDigit#1 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#1, TInt, $Heap);
    ##base#2 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#2, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0);
    assume {:id "id165"} _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0);
    ##digits#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#3, TSeq(TInt), $Heap);
    ##base#3 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#3, TInt, $Heap);
    assert {:id "id166"} {:subsumption 0} LitInt(2) <= ##base#3;
    assume LitInt(2) <= ##base#3;
    assume _module.__default.eval#canCall(b#0, base#0);
    ##digits#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#4, TSeq(TInt), $Heap);
    ##base#4 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#4, TInt, $Heap);
    assert {:id "id167"} {:subsumption 0} LitInt(2) <= ##base#4;
    assume LitInt(2) <= ##base#4;
    assume _module.__default.eval#canCall(a#0, base#0);
    assume {:id "id168"} _module.__default.eval($LS($LZ), b#0, base#0)
       == _module.__default.eval($LS($LZ), a#0, base#0) + 1;
}



procedure {:verboseName "inc (call)"} Call$$_module.__default.inc(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns (b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id169"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id170"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id171"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id172"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(a#0, i#0)): int } 
        (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#0)): int)
           && (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> $Unbox(Seq#Index(a#0, i#0)): int < lowDigit#0 + base#0));
  requires {:id "id173"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0)
     ==> 1 < lowDigit#0 + base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     && (_module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       ==> _module.__default.eval#canCall(b#0, base#0)
         && _module.__default.eval#canCall(a#0, base#0));
  free ensures {:id "id174"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#1: int :: 
      { $Unbox(Seq#Index(b#0, i#1)): int } 
      (LitInt(0) <= i#1 && i#1 < Seq#Length(b#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(b#0, i#1)): int)
         && (LitInt(0) <= i#1 && i#1 < Seq#Length(b#0)
           ==> $Unbox(Seq#Index(b#0, i#1)): int < lowDigit#0 + base#0));
  ensures {:id "id175"} _module.__default.eval($LS($LS($LZ)), b#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), a#0, base#0) + 1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "inc (correctness)"} Impl$$_module.__default.inc(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns (b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id176"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#2: int :: 
      { $Unbox(Seq#Index(a#0, i#2)): int } 
      (LitInt(0) <= i#2 && i#2 < Seq#Length(a#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#2)): int)
         && (LitInt(0) <= i#2 && i#2 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#2)): int < lowDigit#0 + base#0));
  requires {:id "id177"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0)
     ==> 1 < lowDigit#0 + base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     && (_module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       ==> _module.__default.eval#canCall(b#0, base#0)
         && _module.__default.eval#canCall(a#0, base#0));
  ensures {:id "id178"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  ensures {:id "id179"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  ensures {:id "id180"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  ensures {:id "id181"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || (forall i#3: int :: 
        { $Unbox(Seq#Index(b#0, i#3)): int } 
        (LitInt(0) <= i#3 && i#3 < Seq#Length(b#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(b#0, i#3)): int)
           && (LitInt(0) <= i#3 && i#3 < Seq#Length(b#0)
             ==> $Unbox(Seq#Index(b#0, i#3)): int < lowDigit#0 + base#0));
  ensures {:id "id182"} _module.__default.eval($LS($LS($LZ)), b#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), a#0, base#0) + 1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "inc (correctness)"} Impl$$_module.__default.inc(a#0: Seq, lowDigit#0: int, base#0: int) returns (b#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_1_1_0: Heap;
  var a'#1_1_0: Seq
     where $Is(a'#1_1_0, TSeq(TInt)) && $IsAlloc(a'#1_1_0, TSeq(TInt), $Heap);
  var ##digits#1_1_0: Seq;
  var ##base#1_1_0: int;
  var ##digits#1_1_1: Seq;
  var ##base#1_1_1: int;
  var b'#1_1_0: Seq
     where $Is(b'#1_1_0, TSeq(TInt)) && $IsAlloc(b'#1_1_0, TSeq(TInt), $Heap);
  var $rhs##1_1_0: Seq;
  var a##1_1_0: Seq;
  var lowDigit##1_1_0: int;
  var base##1_1_0: int;
  var ##digits#1_1_2: Seq;
  var ##base#1_1_2: int;
  var ##digits#1_1_3: Seq;
  var ##base#1_1_3: int;
  var ##digits#1_1_4: Seq;
  var ##lowDigit#1_1_0: int;
  var ##base#1_1_4: int;
  var ##digits#1_1_0_0_0: Seq;
  var ##base#1_1_0_0_0: int;
  var ##digits#1_1_0_0_1: Seq;
  var ##base#1_1_0_0_1: int;
  var ##digits#1_1_0_1_0: Seq;
  var ##base#1_1_0_1_0: int;
  var ##digits#1_1_0_1_1: Seq;
  var ##base#1_1_0_1_1: int;
  var ##digits#1_1_0_2_0: Seq;
  var ##base#1_1_0_2_0: int;
  var ##digits#1_1_0_2_1: Seq;
  var ##base#1_1_0_2_1: int;
  var ##digits#1_1_0_3_0: Seq;
  var ##base#1_1_0_3_0: int;
  var ##digits#1_1_0_3_1: Seq;
  var ##base#1_1_0_3_1: int;
  var ##digits#1_1_0_3_2: Seq;
  var ##base#1_1_0_3_2: int;
  var ##digits#1_1_0_3_3: Seq;
  var ##base#1_1_0_3_3: int;
  var ##digits#1_1_0_4_0: Seq;
  var ##base#1_1_0_4_0: int;
  var ##digits#1_1_0_4_1: Seq;
  var ##base#1_1_0_4_1: int;
  var ##digits#1_1_0_5_0: Seq;
  var ##base#1_1_0_5_0: int;
  var ##digits#1_1_0_5_1: Seq;
  var ##base#1_1_0_5_1: int;
  var ##digits#1_1_0_6_0: Seq;
  var ##base#1_1_0_6_0: int;
  var ##digits#1_1_0_6_1: Seq;
  var ##base#1_1_0_6_1: int;
  var ##digits#1_1_0_0: Seq;
  var ##base#1_1_0_0: int;

    // AddMethodImpl: inc, Impl$$_module.__default.inc
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(125,3)
    assume true;
    if (Seq#Equal(a#0, Seq#Empty(): Seq))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(126,7)
        assume true;
        assume true;
        b#0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))));
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(127,10)
        assert {:id "id184"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        if ($Unbox(Seq#Index(a#0, LitInt(0))): int + 1 < lowDigit#0 + base#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(128,7)
            assume true;
            assert {:id "id185"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assert {:id "id186"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            b#0 := Seq#Update(a#0, LitInt(0), $Box($Unbox(Seq#Index(a#0, LitInt(0))): int + 1));
        }
        else
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(131,5)
            assert {:id "id188"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            if (*)
            {
                // ----- assert statement proof ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(131,5)
                assert {:id "id189"} $Unbox(Seq#Index(a#0, LitInt(0))): int + 1 == lowDigit#0 + base#0;
                assume false;
            }

            $Heap_at_1_1_0 := $Heap;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(132,12)
            assume true;
            assert {:id "id190"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
            assume true;
            a'#1_1_0 := Seq#Drop(a#0, LitInt(1));
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(133,5)
            ##digits#1_1_0 := a#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#1_1_0, TSeq(TInt), $Heap);
            ##base#1_1_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#1_1_0, TInt, $Heap);
            assert {:id "id192"} {:subsumption 0} LitInt(2) <= ##base#1_1_0;
            assume _module.__default.eval#canCall(a#0, base#0);
            assert {:id "id193"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            ##digits#1_1_1 := a'#1_1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#1_1_1, TSeq(TInt), $Heap);
            ##base#1_1_1 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#1_1_1, TInt, $Heap);
            assert {:id "id194"} {:subsumption 0} LitInt(2) <= ##base#1_1_1;
            assume _module.__default.eval#canCall(a'#1_1_0, base#0);
            assume _module.__default.eval#canCall(a#0, base#0)
               && _module.__default.eval#canCall(a'#1_1_0, base#0);
            assert {:id "id195"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), a#0, base#0)
               == $Unbox(Seq#Index(a#0, LitInt(0))): int
                 + Mul(base#0, _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0));
            assume {:id "id196"} _module.__default.eval($LS($LZ), a#0, base#0)
               == $Unbox(Seq#Index(a#0, LitInt(0))): int
                 + Mul(base#0, _module.__default.eval($LS($LZ), a'#1_1_0, base#0));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(135,18)
            assume true;
            // TrCallStmt: Adding lhs with type seq<int>
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_1_0 := a'#1_1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            lowDigit##1_1_0 := lowDigit#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            base##1_1_0 := base#0;
            assert {:id "id197"} 0 <= lowDigit#0
               || Seq#Rank(a##1_1_0) < Seq#Rank(a#0)
               || lowDigit##1_1_0 == lowDigit#0;
            assert {:id "id198"} 0 <= base#0
               || Seq#Rank(a##1_1_0) < Seq#Rank(a#0)
               || lowDigit##1_1_0 < lowDigit#0
               || base##1_1_0 == base#0;
            assert {:id "id199"} Seq#Rank(a##1_1_0) < Seq#Rank(a#0)
               || (Seq#Rank(a##1_1_0) == Seq#Rank(a#0)
                 && (lowDigit##1_1_0 < lowDigit#0
                   || (lowDigit##1_1_0 == lowDigit#0 && base##1_1_0 < base#0)));
            call {:id "id200"} $rhs##1_1_0 := Call$$_module.__default.inc(a##1_1_0, lowDigit##1_1_0, base##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            b'#1_1_0 := $rhs##1_1_0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(136,5)
            ##digits#1_1_2 := b'#1_1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#1_1_2, TSeq(TInt), $Heap);
            ##base#1_1_2 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#1_1_2, TInt, $Heap);
            assert {:id "id202"} {:subsumption 0} LitInt(2) <= ##base#1_1_2;
            assume _module.__default.eval#canCall(b'#1_1_0, base#0);
            ##digits#1_1_3 := a'#1_1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#1_1_3, TSeq(TInt), $Heap);
            ##base#1_1_3 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#1_1_3, TInt, $Heap);
            assert {:id "id203"} {:subsumption 0} LitInt(2) <= ##base#1_1_3;
            assume _module.__default.eval#canCall(a'#1_1_0, base#0);
            assume _module.__default.eval#canCall(b'#1_1_0, base#0)
               && _module.__default.eval#canCall(a'#1_1_0, base#0);
            assert {:id "id204"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), b'#1_1_0, base#0)
               == _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0) + 1;
            assume {:id "id205"} _module.__default.eval($LS($LZ), b'#1_1_0, base#0)
               == _module.__default.eval($LS($LZ), a'#1_1_0, base#0) + 1;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(138,7)
            assume true;
            assume true;
            b#0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(lowDigit#0)), b'#1_1_0);
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(139,5)
            ##digits#1_1_4 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#1_1_4, TSeq(TInt), $Heap);
            ##lowDigit#1_1_0 := lowDigit#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##lowDigit#1_1_0, TInt, $Heap);
            ##base#1_1_4 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#1_1_4, TInt, $Heap);
            assume _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0);
            assume _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0);
            assert {:id "id207"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
               ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
            assert {:id "id208"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
               ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
                 || lowDigit#0 <= LitInt(0);
            assert {:id "id209"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
               ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
                 || 0 < lowDigit#0 + base#0;
            assert {:id "id210"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
               ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
                 || (forall i#1_1_0: int :: 
                  { $Unbox(Seq#Index(b#0, i#1_1_0)): int } 
                  (LitInt(0) <= i#1_1_0 && i#1_1_0 < Seq#Length(b#0)
                       ==> lowDigit#0 <= $Unbox(Seq#Index(b#0, i#1_1_0)): int)
                     && (LitInt(0) <= i#1_1_0 && i#1_1_0 < Seq#Length(b#0)
                       ==> $Unbox(Seq#Index(b#0, i#1_1_0)): int < lowDigit#0 + base#0));
            assume {:id "id211"} _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_0, TSeq(TInt), $Heap);
                ##base#1_1_0_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_0, TInt, $Heap);
                assert {:id "id249"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_0;
                assume _module.__default.eval#canCall(b#0, base#0);
                assume _module.__default.eval#canCall(b#0, base#0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_6_0 := b#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_6_0, TSeq(TInt), $Heap);
                ##base#1_1_0_6_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_6_0, TInt, $Heap);
                assume {:id "id244"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_6_0;
                assume _module.__default.eval#canCall(b#0, base#0);
                assume _module.__default.eval#canCall(b#0, base#0);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id245"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
                assert {:id "id246"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
                ##digits#1_1_0_6_1 := Seq#Drop(b#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_6_1, TSeq(TInt), $Heap);
                ##base#1_1_0_6_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_6_1, TInt, $Heap);
                assert {:id "id247"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_6_1;
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id248"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), b#0, base#0)
                   == $Unbox(Seq#Index(b#0, LitInt(0))): int
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), Seq#Drop(b#0, LitInt(1)), base#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assume {:id "id236"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
                assume {:id "id237"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
                ##digits#1_1_0_5_0 := Seq#Drop(b#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_5_0, TSeq(TInt), $Heap);
                ##base#1_1_0_5_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_5_0, TInt, $Heap);
                assume {:id "id238"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_5_0;
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(145,11)
                assert {:id "id239"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
                assume true;
                assert {:id "id240"} $Unbox(Seq#Index(b#0, LitInt(0))): int == lowDigit#0;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id241"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
                ##digits#1_1_0_5_1 := Seq#Drop(b#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_5_1, TSeq(TInt), $Heap);
                ##base#1_1_0_5_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_5_1, TInt, $Heap);
                assert {:id "id242"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_5_1;
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id243"} {:subsumption 0} $Unbox(Seq#Index(b#0, LitInt(0))): int
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), Seq#Drop(b#0, LitInt(1)), base#0))
                   == lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), Seq#Drop(b#0, LitInt(1)), base#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assume {:id "id230"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
                ##digits#1_1_0_4_0 := Seq#Drop(b#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_4_0, TSeq(TInt), $Heap);
                ##base#1_1_0_4_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_4_0, TInt, $Heap);
                assume {:id "id231"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_4_0;
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                assume _module.__default.eval#canCall(Seq#Drop(b#0, LitInt(1)), base#0);
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(147,11)
                assert {:id "id232"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
                assume true;
                assert {:id "id233"} Seq#Equal(Seq#Drop(b#0, LitInt(1)), b'#1_1_0);
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_4_1 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_4_1, TSeq(TInt), $Heap);
                ##base#1_1_0_4_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_4_1, TInt, $Heap);
                assert {:id "id234"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_4_1;
                assume _module.__default.eval#canCall(b'#1_1_0, base#0);
                assume _module.__default.eval#canCall(b'#1_1_0, base#0);
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id235"} {:subsumption 0} lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), Seq#Drop(b#0, LitInt(1)), base#0))
                   == lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), b'#1_1_0, base#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_3_0 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_3_0, TSeq(TInt), $Heap);
                ##base#1_1_0_3_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_3_0, TInt, $Heap);
                assume {:id "id223"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_3_0;
                assume _module.__default.eval#canCall(b'#1_1_0, base#0);
                assume _module.__default.eval#canCall(b'#1_1_0, base#0);
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(149,11)
                ##digits#1_1_0_3_1 := b'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_3_1, TSeq(TInt), $Heap);
                ##base#1_1_0_3_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_3_1, TInt, $Heap);
                assert {:id "id224"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_3_1;
                assume _module.__default.eval#canCall(b'#1_1_0, base#0);
                ##digits#1_1_0_3_2 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_3_2, TSeq(TInt), $Heap);
                ##base#1_1_0_3_2 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_3_2, TInt, $Heap);
                assert {:id "id225"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_3_2;
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                assume _module.__default.eval#canCall(b'#1_1_0, base#0)
                   && _module.__default.eval#canCall(a'#1_1_0, base#0);
                assert {:id "id226"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), b'#1_1_0, base#0)
                   == _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0) + 1;
                assume {:id "id227"} _module.__default.eval($LS($LZ), b'#1_1_0, base#0)
                   == _module.__default.eval($LS($LZ), a'#1_1_0, base#0) + 1;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_3_3 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_3_3, TSeq(TInt), $Heap);
                ##base#1_1_0_3_3 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_3_3, TInt, $Heap);
                assert {:id "id228"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_3_3;
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id229"} {:subsumption 0} lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), b'#1_1_0, base#0))
                   == lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0) + 1);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_2_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_2_0, TSeq(TInt), $Heap);
                ##base#1_1_0_2_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_2_0, TInt, $Heap);
                assume {:id "id220"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_2_0;
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_2_1 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_2_1, TSeq(TInt), $Heap);
                ##base#1_1_0_2_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_2_1, TInt, $Heap);
                assert {:id "id221"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_2_1;
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id222"} {:subsumption 0} lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0) + 1)
                   == lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0))
                     + base#0;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_1_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_1_0, TSeq(TInt), $Heap);
                ##base#1_1_0_1_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_1_0, TInt, $Heap);
                assume {:id "id216"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_1_0;
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(152,11)
                assume $Unbox(Seq#Index(a#0, LitInt(0))): int + 1 == lowDigit#0 + base#0;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id217"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                ##digits#1_1_0_1_1 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_1_1, TSeq(TInt), $Heap);
                ##base#1_1_0_1_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_1_1, TInt, $Heap);
                assert {:id "id218"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_1_1;
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id219"} {:subsumption 0} lowDigit#0
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0))
                     + base#0
                   == $Unbox(Seq#Index(a#0, LitInt(0))): int
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0))
                     + 1;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assume {:id "id212"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                ##digits#1_1_0_0_0 := a'#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_0_0, TSeq(TInt), $Heap);
                ##base#1_1_0_0_0 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_0_0, TInt, $Heap);
                assume {:id "id213"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_0_0;
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                assume _module.__default.eval#canCall(a'#1_1_0, base#0);
                // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                ##digits#1_1_0_0_1 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#1_1_0_0_1, TSeq(TInt), $Heap);
                ##base#1_1_0_0_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#1_1_0_0_1, TInt, $Heap);
                assert {:id "id214"} {:subsumption 0} LitInt(2) <= ##base#1_1_0_0_1;
                assume _module.__default.eval#canCall(a#0, base#0);
                assume _module.__default.eval#canCall(a#0, base#0);
                // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(141,5)
                assert {:id "id215"} {:subsumption 0} $Unbox(Seq#Index(a#0, LitInt(0))): int
                     + Mul(base#0, _module.__default.eval($LS($LS($LZ)), a'#1_1_0, base#0))
                     + 1
                   == _module.__default.eval($LS($LS($LZ)), a#0, base#0) + 1;
                assume false;
            }

            assume {:id "id250"} _module.__default.eval($LS($LZ), b#0, base#0)
               == _module.__default.eval($LS($LZ), a#0, base#0) + 1;
        }
    }
}



procedure {:verboseName "dec (well-formedness)"} CheckWellFormed$$_module.__default.dec(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns (b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "dec (well-formedness)"} CheckWellFormed$$_module.__default.dec(a#0: Seq, lowDigit#0: int, base#0: int) returns (b#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;
  var ##digits#2: Seq;
  var ##lowDigit#1: int;
  var ##base#2: int;
  var ##digits#3: Seq;
  var ##base#3: int;
  var ##digits#4: Seq;
  var ##base#4: int;


    // AddMethodImpl: dec, CheckWellFormed$$_module.__default.dec
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0);
    assume {:id "id251"} _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0);
    if (*)
    {
        ##digits#1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
        ##base#1 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1, TInt, $Heap);
        assert {:id "id252"} {:subsumption 0} LitInt(2) <= ##base#1;
        assume LitInt(2) <= ##base#1;
        assume _module.__default.eval#canCall(a#0, base#0);
        assume {:id "id253"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0);
        assume {:id "id254"} lowDigit#0 < 0;
    }
    else
    {
        assume {:id "id255"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0) ==> lowDigit#0 < 0;
    }

    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc b#0;
    ##digits#2 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
    ##lowDigit#1 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#1, TInt, $Heap);
    ##base#2 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#2, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0);
    assume {:id "id256"} _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0);
    ##digits#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#3, TSeq(TInt), $Heap);
    ##base#3 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#3, TInt, $Heap);
    assert {:id "id257"} {:subsumption 0} LitInt(2) <= ##base#3;
    assume LitInt(2) <= ##base#3;
    assume _module.__default.eval#canCall(b#0, base#0);
    ##digits#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#4, TSeq(TInt), $Heap);
    ##base#4 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#4, TInt, $Heap);
    assert {:id "id258"} {:subsumption 0} LitInt(2) <= ##base#4;
    assume LitInt(2) <= ##base#4;
    assume _module.__default.eval#canCall(a#0, base#0);
    assume {:id "id259"} _module.__default.eval($LS($LZ), b#0, base#0)
       == _module.__default.eval($LS($LZ), a#0, base#0) - 1;
}



procedure {:verboseName "dec (call)"} Call$$_module.__default.dec(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns (b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id260"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id261"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id262"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id263"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(a#0, i#0)): int } 
        (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#0)): int)
           && (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> $Unbox(Seq#Index(a#0, i#0)): int < lowDigit#0 + base#0));
  requires {:id "id264"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0) ==> lowDigit#0 < 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     && (_module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       ==> _module.__default.eval#canCall(b#0, base#0)
         && _module.__default.eval#canCall(a#0, base#0));
  free ensures {:id "id265"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#1: int :: 
      { $Unbox(Seq#Index(b#0, i#1)): int } 
      (LitInt(0) <= i#1 && i#1 < Seq#Length(b#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(b#0, i#1)): int)
         && (LitInt(0) <= i#1 && i#1 < Seq#Length(b#0)
           ==> $Unbox(Seq#Index(b#0, i#1)): int < lowDigit#0 + base#0));
  ensures {:id "id266"} _module.__default.eval($LS($LS($LZ)), b#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), a#0, base#0) - 1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "dec (correctness)"} Impl$$_module.__default.dec(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns (b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id267"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#2: int :: 
      { $Unbox(Seq#Index(a#0, i#2)): int } 
      (LitInt(0) <= i#2 && i#2 < Seq#Length(a#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#2)): int)
         && (LitInt(0) <= i#2 && i#2 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#2)): int < lowDigit#0 + base#0));
  requires {:id "id268"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0) ==> lowDigit#0 < 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     && (_module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       ==> _module.__default.eval#canCall(b#0, base#0)
         && _module.__default.eval#canCall(a#0, base#0));
  ensures {:id "id269"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  ensures {:id "id270"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  ensures {:id "id271"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  ensures {:id "id272"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || (forall i#3: int :: 
        { $Unbox(Seq#Index(b#0, i#3)): int } 
        (LitInt(0) <= i#3 && i#3 < Seq#Length(b#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(b#0, i#3)): int)
           && (LitInt(0) <= i#3 && i#3 < Seq#Length(b#0)
             ==> $Unbox(Seq#Index(b#0, i#3)): int < lowDigit#0 + base#0));
  ensures {:id "id273"} _module.__default.eval($LS($LS($LZ)), b#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), a#0, base#0) - 1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "dec (correctness)"} Impl$$_module.__default.dec(a#0: Seq, lowDigit#0: int, base#0: int) returns (b#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_1_0: Seq;
  var a##1_1_0: Seq;
  var lowDigit##1_1_0: int;
  var base##1_1_0: int;

    // AddMethodImpl: dec, Impl$$_module.__default.dec
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(165,3)
    assume true;
    if (Seq#Equal(a#0, Seq#Empty(): Seq))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(166,7)
        assume true;
        assume true;
        b#0 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(-1))));
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(167,10)
        assert {:id "id275"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        if (lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int - 1)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(168,7)
            assume true;
            assert {:id "id276"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assert {:id "id277"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            b#0 := Seq#Update(a#0, LitInt(0), $Box($Unbox(Seq#Index(a#0, LitInt(0))): int - 1));
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(170,13)
            assume true;
            // TrCallStmt: Adding lhs with type seq<int>
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id279"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_1_0 := Seq#Drop(a#0, LitInt(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            lowDigit##1_1_0 := lowDigit#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            base##1_1_0 := base#0;
            assert {:id "id280"} 0 <= lowDigit#0
               || Seq#Rank(a##1_1_0) < Seq#Rank(a#0)
               || lowDigit##1_1_0 == lowDigit#0;
            assert {:id "id281"} 0 <= base#0
               || Seq#Rank(a##1_1_0) < Seq#Rank(a#0)
               || lowDigit##1_1_0 < lowDigit#0
               || base##1_1_0 == base#0;
            assert {:id "id282"} Seq#Rank(a##1_1_0) < Seq#Rank(a#0)
               || (Seq#Rank(a##1_1_0) == Seq#Rank(a#0)
                 && (lowDigit##1_1_0 < lowDigit#0
                   || (lowDigit##1_1_0 == lowDigit#0 && base##1_1_0 < base#0)));
            call {:id "id283"} $rhs##1_1_0 := Call$$_module.__default.dec(a##1_1_0, lowDigit##1_1_0, base##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            b#0 := $rhs##1_1_0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(171,7)
            assume true;
            assume true;
            b#0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(lowDigit#0 + base#0 - 1)), b#0);
        }
    }
}



// function declaration for _module._default.trim
function _module.__default.trim($ly: LayerType, digits#0: Seq) : Seq
uses {
// consequence axiom for _module.__default.trim
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, digits#0: Seq :: 
    { _module.__default.trim($ly, digits#0) } 
    _module.__default.trim#canCall(digits#0)
         || (0 < $FunctionContextHeight && $Is(digits#0, TSeq(TInt)))
       ==> $Is(_module.__default.trim($ly, digits#0), TSeq(TInt)));
// definition axiom for _module.__default.trim (revealed)
axiom {:id "id286"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, digits#0: Seq :: 
    { _module.__default.trim($LS($ly), digits#0) } 
    _module.__default.trim#canCall(digits#0)
         || (0 < $FunctionContextHeight && $Is(digits#0, TSeq(TInt)))
       ==> (Seq#Length(digits#0) != 0
             && $Unbox(Seq#Index(digits#0, Seq#Length(digits#0) - 1)): int == LitInt(0)
           ==> _module.__default.trim#canCall(Seq#Take(digits#0, Seq#Length(digits#0) - 1)))
         && _module.__default.trim($LS($ly), digits#0)
           == (if Seq#Length(digits#0) != 0
               && $Unbox(Seq#Index(digits#0, Seq#Length(digits#0) - 1)): int == LitInt(0)
             then _module.__default.trim($ly, Seq#Take(digits#0, Seq#Length(digits#0) - 1))
             else digits#0));
// definition axiom for _module.__default.trim for all literals (revealed)
axiom {:id "id287"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, digits#0: Seq :: 
    {:weight 3} { _module.__default.trim($LS($ly), Lit(digits#0)) } 
    _module.__default.trim#canCall(Lit(digits#0))
         || (0 < $FunctionContextHeight && $Is(digits#0, TSeq(TInt)))
       ==> (Seq#Length(Lit(digits#0)) != 0
             && $Unbox(Seq#Index(Lit(digits#0), Seq#Length(Lit(digits#0)) - 1)): int
               == LitInt(0)
           ==> _module.__default.trim#canCall(Seq#Take(Lit(digits#0), Seq#Length(Lit(digits#0)) - 1)))
         && _module.__default.trim($LS($ly), Lit(digits#0))
           == (if Seq#Length(Lit(digits#0)) != 0
               && $Unbox(Seq#Index(Lit(digits#0), Seq#Length(Lit(digits#0)) - 1)): int
                 == LitInt(0)
             then _module.__default.trim($LS($ly), Seq#Take(Lit(digits#0), Seq#Length(Lit(digits#0)) - 1))
             else digits#0));
}

function _module.__default.trim#canCall(digits#0: Seq) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, digits#0: Seq :: 
  { _module.__default.trim($LS($ly), digits#0) } 
  _module.__default.trim($LS($ly), digits#0)
     == _module.__default.trim($ly, digits#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, digits#0: Seq :: 
  { _module.__default.trim(AsFuelBottom($ly), digits#0) } 
  _module.__default.trim($ly, digits#0) == _module.__default.trim($LZ, digits#0));

function _module.__default.trim#requires(LayerType, Seq) : bool;

// #requires axiom for _module.__default.trim
axiom (forall $ly: LayerType, digits#0: Seq :: 
  { _module.__default.trim#requires($ly, digits#0) } 
  $Is(digits#0, TSeq(TInt))
     ==> _module.__default.trim#requires($ly, digits#0) == true);

procedure {:verboseName "trim (well-formedness)"} CheckWellformed$$_module.__default.trim(digits#0: Seq where $Is(digits#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "trim (well-formedness)"} CheckWellformed$$_module.__default.trim(digits#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##digits#0: Seq;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.trim($LS($LZ), digits#0), TSeq(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Seq#Length(digits#0) != 0)
        {
            assert {:id "id288"} 0 <= Seq#Length(digits#0) - 1 && Seq#Length(digits#0) - 1 < Seq#Length(digits#0);
        }

        if (Seq#Length(digits#0) != 0
           && $Unbox(Seq#Index(digits#0, Seq#Length(digits#0) - 1)): int == LitInt(0))
        {
            assert {:id "id289"} 0 <= Seq#Length(digits#0) - 1
               && Seq#Length(digits#0) - 1 <= Seq#Length(digits#0);
            ##digits#0 := Seq#Take(digits#0, Seq#Length(digits#0) - 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
            assert {:id "id290"} Seq#Rank(##digits#0) < Seq#Rank(digits#0);
            assume _module.__default.trim#canCall(Seq#Take(digits#0, Seq#Length(digits#0) - 1));
            assume {:id "id291"} _module.__default.trim($LS($LZ), digits#0)
               == _module.__default.trim($LS($LZ), Seq#Take(digits#0, Seq#Length(digits#0) - 1));
            assume _module.__default.trim#canCall(Seq#Take(digits#0, Seq#Length(digits#0) - 1));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.trim($LS($LZ), digits#0), TSeq(TInt));
            return;
        }
        else
        {
            assume {:id "id292"} _module.__default.trim($LS($LZ), digits#0) == digits#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.trim($LS($LZ), digits#0), TSeq(TInt));
            return;
        }

        assume false;
    }
}



procedure {:verboseName "TrimResult (well-formedness)"} CheckWellFormed$$_module.__default.TrimResult(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrimResult (well-formedness)"} CheckWellFormed$$_module.__default.TrimResult(digits#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var last#Z#0: int;
  var let#0#0#0: int;
  var ##digits#0: Seq;
  var ##digits#1: Seq;


    // AddMethodImpl: TrimResult, CheckWellFormed$$_module.__default.TrimResult
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc last#Z#0;
    ##digits#0 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    assume _module.__default.trim#canCall(digits#0);
    assume {:id "id293"} let#0#0#0 == Seq#Length(_module.__default.trim($LS($LZ), digits#0)) - 1;
    assume _module.__default.trim#canCall(digits#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id294"} last#Z#0 == let#0#0#0;
    if (LitInt(0) <= last#Z#0)
    {
        ##digits#1 := digits#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
        assume _module.__default.trim#canCall(digits#0);
        assert {:id "id295"} 0 <= last#Z#0
           && last#Z#0 < Seq#Length(_module.__default.trim($LS($LZ), digits#0));
    }

    assume {:id "id296"} (var last#0 := Seq#Length(_module.__default.trim($LS($LZ), digits#0)) - 1; 
      LitInt(0) <= last#0
         ==> $Unbox(Seq#Index(_module.__default.trim($LS($LZ), digits#0), last#0)): int != 0);
}



procedure {:verboseName "TrimResult (call)"} Call$$_module.__default.TrimResult(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.trim#canCall(digits#0)
     && (var last#0 := Seq#Length(_module.__default.trim($LS($LZ), digits#0)) - 1; 
      LitInt(0) <= last#0 ==> _module.__default.trim#canCall(digits#0));
  ensures {:id "id297"} (var last#0 := Seq#Length(_module.__default.trim($LS($LS($LZ)), digits#0)) - 1; 
    LitInt(0) <= last#0
       ==> $Unbox(Seq#Index(_module.__default.trim($LS($LS($LZ)), digits#0), last#0)): int
         != 0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TrimResult (correctness)"} Impl$$_module.__default.TrimResult(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.trim#canCall(digits#0)
     && (var last#0 := Seq#Length(_module.__default.trim($LS($LZ), digits#0)) - 1; 
      LitInt(0) <= last#0 ==> _module.__default.trim#canCall(digits#0));
  ensures {:id "id298"} (var last#0 := Seq#Length(_module.__default.trim($LS($LS($LZ)), digits#0)) - 1; 
    LitInt(0) <= last#0
       ==> $Unbox(Seq#Index(_module.__default.trim($LS($LS($LZ)), digits#0), last#0)): int
         != 0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrimResult (correctness)"} Impl$$_module.__default.TrimResult(digits#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: TrimResult, Impl$$_module.__default.TrimResult
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#digits0#0: Seq :: 
      { _module.__default.trim($LS($LZ), $ih#digits0#0) } 
      $Is($ih#digits0#0, TSeq(TInt))
           && Lit(true)
           && Seq#Rank($ih#digits0#0) < Seq#Rank(digits#0)
         ==> (var last#1 := Seq#Length(_module.__default.trim($LS($LZ), $ih#digits0#0)) - 1; 
          LitInt(0) <= last#1
             ==> $Unbox(Seq#Index(_module.__default.trim($LS($LZ), $ih#digits0#0), last#1)): int
               != 0));
    $_reverifyPost := false;
}



procedure {:verboseName "TrimProperty (well-formedness)"} CheckWellFormed$$_module.__default.TrimProperty(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrimProperty (well-formedness)"} CheckWellFormed$$_module.__default.TrimProperty(a#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##digits#1: Seq;


    // AddMethodImpl: TrimProperty, CheckWellFormed$$_module.__default.TrimProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    assume _module.__default.trim#canCall(a#0);
    assume {:id "id299"} Seq#Equal(a#0, _module.__default.trim($LS($LZ), a#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        assume {:id "id300"} Seq#Equal(a#0, Seq#Empty(): Seq);
    }
    else
    {
        assume {:id "id301"} !Seq#Equal(a#0, Seq#Empty(): Seq);
        assert {:id "id302"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
        assert {:id "id303"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
        ##digits#1 := Seq#Drop(a#0, LitInt(1));
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
        assume _module.__default.trim#canCall(Seq#Drop(a#0, LitInt(1)));
        assume {:id "id304"} Seq#Equal(Seq#Drop(a#0, LitInt(1)), 
          _module.__default.trim($LS($LZ), Seq#Drop(a#0, LitInt(1))));
    }
}



procedure {:verboseName "TrimProperty (call)"} Call$$_module.__default.TrimProperty(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id305"} Seq#Equal(a#0, _module.__default.trim($LS($LS($LZ)), a#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures !Seq#Equal(a#0, Seq#Empty(): Seq)
     ==> _module.__default.trim#canCall(Seq#Drop(a#0, LitInt(1)));
  ensures {:id "id306"} Seq#Equal(a#0, Seq#Empty(): Seq)
     || Seq#Equal(Seq#Drop(a#0, LitInt(1)), 
      _module.__default.trim($LS($LS($LZ)), Seq#Drop(a#0, LitInt(1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TrimProperty (correctness)"} Impl$$_module.__default.TrimProperty(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id307"} Seq#Equal(a#0, _module.__default.trim($LS($LS($LZ)), a#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures !Seq#Equal(a#0, Seq#Empty(): Seq)
     ==> _module.__default.trim#canCall(Seq#Drop(a#0, LitInt(1)));
  ensures {:id "id308"} Seq#Equal(a#0, Seq#Empty(): Seq)
     || Seq#Equal(Seq#Drop(a#0, LitInt(1)), 
      _module.__default.trim($LS($LS($LZ)), Seq#Drop(a#0, LitInt(1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrimProperty (correctness)"} Impl$$_module.__default.TrimProperty(a#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var b#0: Seq;
  var ##digits#2: Seq;

    // AddMethodImpl: TrimProperty, Impl$$_module.__default.TrimProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: Seq :: 
      { Seq#Drop($ih#a0#0, LitInt(1)) } 
      $Is($ih#a0#0, TSeq(TInt))
           && Seq#Equal($ih#a0#0, _module.__default.trim($LS($LZ), $ih#a0#0))
           && Seq#Rank($ih#a0#0) < Seq#Rank(a#0)
         ==> Seq#Equal($ih#a0#0, Seq#Empty(): Seq)
           || Seq#Equal(Seq#Drop($ih#a0#0, LitInt(1)), 
            _module.__default.trim($LS($LZ), Seq#Drop($ih#a0#0, LitInt(1)))));
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(197,3)
    // Begin Comprehension WF check
    havoc b#0;
    if ($Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap))
    {
        ##digits#2 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
        assume _module.__default.trim#canCall(b#0);
    }

    // End Comprehension WF check
    assume (forall b#1: Seq :: 
      { _module.__default.trim($LS($LZ), b#1) } 
      $Is(b#1, TSeq(TInt)) ==> _module.__default.trim#canCall(b#1));
    assert {:id "id309"} {:subsumption 0} (forall b#1: Seq :: 
      { _module.__default.trim($LS($LS($LZ)), b#1) } 
      $Is(b#1, TSeq(TInt))
           && (forall b$ih#0#0: Seq :: 
            { _module.__default.trim($LS($LZ), b$ih#0#0) } 
            $Is(b$ih#0#0, TSeq(TInt))
               ==> 
              Seq#Rank(b$ih#0#0) < Seq#Rank(b#1)
               ==> Seq#Length(_module.__default.trim($LS($LZ), b$ih#0#0)) <= Seq#Length(b$ih#0#0))
           && true
         ==> Seq#Length(_module.__default.trim($LS($LS($LZ)), b#1)) <= Seq#Length(b#1));
    assume {:id "id310"} (forall b#1: Seq :: 
      { _module.__default.trim($LS($LZ), b#1) } 
      $Is(b#1, TSeq(TInt))
         ==> Seq#Length(_module.__default.trim($LS($LZ), b#1)) <= Seq#Length(b#1));
}



procedure {:verboseName "TrimPreservesValue (well-formedness)"} CheckWellFormed$$_module.__default.TrimPreservesValue(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    base#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrimPreservesValue (well-formedness)"} CheckWellFormed$$_module.__default.TrimPreservesValue(digits#0: Seq, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##digits#2: Seq;
  var ##base#1: int;


    // AddMethodImpl: TrimPreservesValue, CheckWellFormed$$_module.__default.TrimPreservesValue
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id311"} LitInt(2) <= base#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##digits#0 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assert {:id "id312"} {:subsumption 0} LitInt(2) <= ##base#0;
    assume LitInt(2) <= ##base#0;
    assume _module.__default.eval#canCall(digits#0, base#0);
    ##digits#2 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
    assume _module.__default.trim#canCall(digits#0);
    ##digits#1 := _module.__default.trim($LS($LZ), digits#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id313"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(_module.__default.trim($LS($LZ), digits#0), base#0);
    assume {:id "id314"} _module.__default.eval($LS($LZ), digits#0, base#0)
       == _module.__default.eval($LS($LZ), _module.__default.trim($LS($LZ), digits#0), base#0);
}



procedure {:verboseName "TrimPreservesValue (call)"} Call$$_module.__default.TrimPreservesValue(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    base#0: int);
  // user-defined preconditions
  requires {:id "id315"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(digits#0, base#0)
     && 
    _module.__default.trim#canCall(digits#0)
     && _module.__default.eval#canCall(_module.__default.trim($LS($LZ), digits#0), base#0);
  ensures {:id "id316"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), _module.__default.trim($LS($LS($LZ)), digits#0), base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TrimPreservesValue (correctness)"} Impl$$_module.__default.TrimPreservesValue(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    base#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id317"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(digits#0, base#0)
     && 
    _module.__default.trim#canCall(digits#0)
     && _module.__default.eval#canCall(_module.__default.trim($LS($LZ), digits#0), base#0);
  ensures {:id "id318"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), _module.__default.trim($LS($LS($LZ)), digits#0), base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TrimPreservesValue (correctness)"} Impl$$_module.__default.TrimPreservesValue(digits#0: Seq, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var last#0: int;
  var digits##0_0: Seq;
  var base##0_0: int;

    // AddMethodImpl: TrimPreservesValue, Impl$$_module.__default.TrimPreservesValue
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#digits0#0: Seq, $ih#base0#0: int :: 
      { _module.__default.eval($LS($LZ), _module.__default.trim($LS($LZ), $ih#digits0#0), $ih#base0#0) } 
      $Is($ih#digits0#0, TSeq(TInt))
           && LitInt(2) <= $ih#base0#0
           && (Seq#Rank($ih#digits0#0) < Seq#Rank(digits#0)
             || (Seq#Rank($ih#digits0#0) == Seq#Rank(digits#0)
               && 
              0 <= $ih#base0#0
               && $ih#base0#0 < base#0))
         ==> _module.__default.eval($LS($LZ), $ih#digits0#0, $ih#base0#0)
           == _module.__default.eval($LS($LZ), _module.__default.trim($LS($LZ), $ih#digits0#0), $ih#base0#0));
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(204,12)
    assume true;
    assume true;
    last#0 := Seq#Length(digits#0) - 1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(205,3)
    if (Seq#Length(digits#0) != 0)
    {
        assert {:id "id320"} 0 <= last#0 && last#0 < Seq#Length(digits#0);
    }

    assume true;
    if (Seq#Length(digits#0) != 0
       && $Unbox(Seq#Index(digits#0, last#0)): int == LitInt(0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(206,5)
        assert {:id "id321"} {:subsumption 0} 0 <= last#0 && last#0 <= Seq#Length(digits#0);
        assume true;
        assert {:id "id322"} Seq#Equal(digits#0, 
          Seq#Append(Seq#Take(digits#0, last#0), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(207,29)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id323"} 0 <= last#0 && last#0 <= Seq#Length(digits#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        digits##0_0 := Seq#Take(digits#0, last#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##0_0 := base#0;
        call {:id "id324"} Call$$_module.__default.LeadingZeroInsignificant(digits##0_0, base##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "LeadingZeroInsignificant (well-formedness)"} CheckWellFormed$$_module.__default.LeadingZeroInsignificant(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    base#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeadingZeroInsignificant (well-formedness)"} CheckWellFormed$$_module.__default.LeadingZeroInsignificant(digits#0: Seq, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;


    // AddMethodImpl: LeadingZeroInsignificant, CheckWellFormed$$_module.__default.LeadingZeroInsignificant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id325"} LitInt(2) <= base#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##digits#0 := digits#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assert {:id "id326"} {:subsumption 0} LitInt(2) <= ##base#0;
    assume LitInt(2) <= ##base#0;
    assume _module.__default.eval#canCall(digits#0, base#0);
    ##digits#1 := Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id327"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#0);
    assume {:id "id328"} _module.__default.eval($LS($LZ), digits#0, base#0)
       == _module.__default.eval($LS($LZ), 
        Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
        base#0);
}



procedure {:verboseName "LeadingZeroInsignificant (call)"} Call$$_module.__default.LeadingZeroInsignificant(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    base#0: int);
  // user-defined preconditions
  requires {:id "id329"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(digits#0, base#0)
     && _module.__default.eval#canCall(Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#0);
  ensures {:id "id330"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), 
      Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
      base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "LeadingZeroInsignificant (correctness)"} Impl$$_module.__default.LeadingZeroInsignificant(digits#0: Seq
       where $Is(digits#0, TSeq(TInt)) && $IsAlloc(digits#0, TSeq(TInt), $Heap), 
    base#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id331"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(digits#0, base#0)
     && _module.__default.eval#canCall(Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#0);
  ensures {:id "id332"} _module.__default.eval($LS($LS($LZ)), digits#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), 
      Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
      base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeadingZeroInsignificant (correctness)"} Impl$$_module.__default.LeadingZeroInsignificant(digits#0: Seq, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var d#0_0: int;
  var ##digits#0_0_0_0: Seq;
  var ##base#0_0_0_0: int;
  var ##digits#0_0_0_1: Seq;
  var ##base#0_0_0_1: int;
  var ##digits#0_0_1_0: Seq;
  var ##base#0_0_1_0: int;
  var ##digits#0_0_1_1: Seq;
  var ##base#0_0_1_1: int;
  var ##digits#0_0_2_0: Seq;
  var ##base#0_0_2_0: int;
  var ##digits#0_0_2_1: Seq;
  var ##base#0_0_2_1: int;
  var ##digits#0_0_3_0: Seq;
  var ##base#0_0_3_0: int;
  var digits##0_0_3_0: Seq;
  var base##0_0_3_0: int;
  var ##digits#0_0_3_1: Seq;
  var ##base#0_0_3_1: int;
  var ##digits#0_0_4_0: Seq;
  var ##base#0_0_4_0: int;
  var ##digits#0_0_4_1: Seq;
  var ##base#0_0_4_1: int;
  var ##digits#0_0_5_0: Seq;
  var ##base#0_0_5_0: int;
  var ##digits#0_0_5_1: Seq;
  var ##base#0_0_5_1: int;
  var ##digits#0_0_0: Seq;
  var ##base#0_0_0: int;

    // AddMethodImpl: LeadingZeroInsignificant, Impl$$_module.__default.LeadingZeroInsignificant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#digits0#0: Seq, $ih#base0#0: int :: 
      { _module.__default.eval($LS($LZ), 
          Seq#Append($ih#digits0#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
          $ih#base0#0) } 
      $Is($ih#digits0#0, TSeq(TInt))
           && LitInt(2) <= $ih#base0#0
           && (Seq#Rank($ih#digits0#0) < Seq#Rank(digits#0)
             || (Seq#Rank($ih#digits0#0) == Seq#Rank(digits#0)
               && 
              0 <= $ih#base0#0
               && $ih#base0#0 < base#0))
         ==> _module.__default.eval($LS($LZ), $ih#digits0#0, $ih#base0#0)
           == _module.__default.eval($LS($LZ), 
            Seq#Append($ih#digits0#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
            $ih#base0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(215,3)
    assume true;
    if (Seq#Length(digits#0) != 0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(216,11)
        assume true;
        assert {:id "id333"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(digits#0);
        assume true;
        d#0_0 := $Unbox(Seq#Index(digits#0, LitInt(0))): int;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(217,5)
        assert {:id "id335"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
        assume true;
        assert {:id "id336"} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
          digits#0);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            ##digits#0_0_0 := digits#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_0, TSeq(TInt), $Heap);
            ##base#0_0_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_0, TInt, $Heap);
            assert {:id "id372"} {:subsumption 0} LitInt(2) <= ##base#0_0_0;
            assume _module.__default.eval#canCall(digits#0, base#0);
            assume _module.__default.eval#canCall(digits#0, base#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            ##digits#0_0_5_0 := digits#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_5_0, TSeq(TInt), $Heap);
            ##base#0_0_5_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_5_0, TInt, $Heap);
            assume {:id "id368"} {:subsumption 0} LitInt(2) <= ##base#0_0_5_0;
            assume _module.__default.eval#canCall(digits#0, base#0);
            assume _module.__default.eval#canCall(digits#0, base#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id369"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_5_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_5_1, TSeq(TInt), $Heap);
            ##base#0_0_5_1 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_5_1, TInt, $Heap);
            assert {:id "id370"} {:subsumption 0} LitInt(2) <= ##base#0_0_5_1;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
              base#0);
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id371"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), digits#0, base#0)
               == _module.__default.eval($LS($LS($LZ)), 
                Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                base#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assume {:id "id363"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_4_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_4_0, TSeq(TInt), $Heap);
            ##base#0_0_4_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_4_0, TInt, $Heap);
            assume {:id "id364"} {:subsumption 0} LitInt(2) <= ##base#0_0_4_0;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
              base#0);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id365"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_4_1 := Seq#Drop(digits#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_4_1, TSeq(TInt), $Heap);
            ##base#0_0_4_1 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_4_1, TInt, $Heap);
            assert {:id "id366"} {:subsumption 0} LitInt(2) <= ##base#0_0_4_1;
            assume _module.__default.eval#canCall(Seq#Drop(digits#0, LitInt(1)), base#0);
            assume _module.__default.eval#canCall(Seq#Drop(digits#0, LitInt(1)), base#0);
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id367"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), 
                Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                base#0)
               == d#0_0
                 + Mul(base#0, 
                  _module.__default.eval($LS($LS($LZ)), Seq#Drop(digits#0, LitInt(1)), base#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assume {:id "id354"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_3_0 := Seq#Drop(digits#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_3_0, TSeq(TInt), $Heap);
            ##base#0_0_3_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_3_0, TInt, $Heap);
            assume {:id "id355"} {:subsumption 0} LitInt(2) <= ##base#0_0_3_0;
            assume _module.__default.eval#canCall(Seq#Drop(digits#0, LitInt(1)), base#0);
            assume _module.__default.eval#canCall(Seq#Drop(digits#0, LitInt(1)), base#0);
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(222,33)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id356"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            digits##0_0_3_0 := Seq#Drop(digits#0, LitInt(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            base##0_0_3_0 := base#0;
            assert {:id "id357"} 0 <= base#0
               || Seq#Rank(digits##0_0_3_0) < Seq#Rank(digits#0)
               || base##0_0_3_0 == base#0;
            assert {:id "id358"} Seq#Rank(digits##0_0_3_0) < Seq#Rank(digits#0)
               || (Seq#Rank(digits##0_0_3_0) == Seq#Rank(digits#0) && base##0_0_3_0 < base#0);
            call {:id "id359"} Call$$_module.__default.LeadingZeroInsignificant(digits##0_0_3_0, base##0_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id360"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_3_1 := Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_3_1, TSeq(TInt), $Heap);
            ##base#0_0_3_1 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_3_1, TInt, $Heap);
            assert {:id "id361"} {:subsumption 0} LitInt(2) <= ##base#0_0_3_1;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id362"} {:subsumption 0} d#0_0
                 + Mul(base#0, 
                  _module.__default.eval($LS($LS($LZ)), Seq#Drop(digits#0, LitInt(1)), base#0))
               == d#0_0
                 + Mul(base#0, 
                  _module.__default.eval($LS($LS($LZ)), 
                    Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
                    base#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assume {:id "id349"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_2_0 := Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_2_0, TSeq(TInt), $Heap);
            ##base#0_0_2_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_2_0, TInt, $Heap);
            assume {:id "id350"} {:subsumption 0} LitInt(2) <= ##base#0_0_2_0;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id351"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_2_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
              Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_2_1, TSeq(TInt), $Heap);
            ##base#0_0_2_1 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_2_1, TInt, $Heap);
            assert {:id "id352"} {:subsumption 0} LitInt(2) <= ##base#0_0_2_1;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
                Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
                Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))))), 
              base#0);
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id353"} {:subsumption 0} d#0_0
                 + Mul(base#0, 
                  _module.__default.eval($LS($LS($LZ)), 
                    Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
                    base#0))
               == _module.__default.eval($LS($LS($LZ)), 
                Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
                  Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))))), 
                base#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assume {:id "id341"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_1_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
              Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_1_0, TSeq(TInt), $Heap);
            ##base#0_0_1_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_1_0, TInt, $Heap);
            assume {:id "id342"} {:subsumption 0} LitInt(2) <= ##base#0_0_1_0;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
                Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
                Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))))), 
              base#0);
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(225,9)
            assert {:id "id343"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            assert {:id "id344"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            assume true;
            assert {:id "id345"} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
                Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))))), 
              Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))));
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id346"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_1_1 := Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
              Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_1_1, TSeq(TInt), $Heap);
            ##base#0_0_1_1 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_1_1, TInt, $Heap);
            assert {:id "id347"} {:subsumption 0} LitInt(2) <= ##base#0_0_1_1;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id348"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), 
                Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), 
                  Seq#Append(Seq#Drop(digits#0, LitInt(1)), Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))))), 
                base#0)
               == _module.__default.eval($LS($LS($LZ)), 
                Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                  Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
                base#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assume {:id "id337"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(digits#0);
            ##digits#0_0_0_0 := Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
              Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_0_0, TSeq(TInt), $Heap);
            ##base#0_0_0_0 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_0_0, TInt, $Heap);
            assume {:id "id338"} {:subsumption 0} LitInt(2) <= ##base#0_0_0_0;
            assume _module.__default.eval#canCall(Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            assume _module.__default.eval#canCall(Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
              base#0);
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            ##digits#0_0_0_1 := Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##digits#0_0_0_1, TSeq(TInt), $Heap);
            ##base#0_0_0_1 := base#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##base#0_0_0_1, TInt, $Heap);
            assert {:id "id339"} {:subsumption 0} LitInt(2) <= ##base#0_0_0_1;
            assume _module.__default.eval#canCall(Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#0);
            assume _module.__default.eval#canCall(Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), base#0);
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(218,5)
            assert {:id "id340"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), 
                Seq#Append(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(d#0_0)), Seq#Drop(digits#0, LitInt(1))), 
                  Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
                base#0)
               == _module.__default.eval($LS($LS($LZ)), 
                Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
                base#0);
            assume false;
        }

        assume {:id "id373"} _module.__default.eval($LS($LZ), digits#0, base#0)
           == _module.__default.eval($LS($LZ), 
            Seq#Append(digits#0, Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0)))), 
            base#0);
    }
    else
    {
    }
}



procedure {:verboseName "UniqueRepresentation (well-formedness)"} CheckWellFormed$$_module.__default.UniqueRepresentation(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UniqueRepresentation (well-formedness)"} CheckWellFormed$$_module.__default.UniqueRepresentation(a#0: Seq, b#0: Seq, lowDigit#0: int, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##lowDigit#1: int;
  var ##base#1: int;
  var ##digits#2: Seq;
  var ##digits#3: Seq;
  var ##digits#4: Seq;
  var ##base#2: int;
  var ##digits#5: Seq;
  var ##base#3: int;


    // AddMethodImpl: UniqueRepresentation, CheckWellFormed$$_module.__default.UniqueRepresentation
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0);
    assume {:id "id374"} _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0);
    ##digits#1 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##lowDigit#1 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#1, TInt, $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0);
    assume {:id "id375"} _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0);
    ##digits#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
    assume _module.__default.trim#canCall(a#0);
    assume {:id "id376"} Seq#Equal(a#0, _module.__default.trim($LS($LZ), a#0));
    ##digits#3 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#3, TSeq(TInt), $Heap);
    assume _module.__default.trim#canCall(b#0);
    assume {:id "id377"} Seq#Equal(b#0, _module.__default.trim($LS($LZ), b#0));
    ##digits#4 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#4, TSeq(TInt), $Heap);
    ##base#2 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#2, TInt, $Heap);
    assert {:id "id378"} {:subsumption 0} LitInt(2) <= ##base#2;
    assume LitInt(2) <= ##base#2;
    assume _module.__default.eval#canCall(a#0, base#0);
    ##digits#5 := b#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#5, TSeq(TInt), $Heap);
    ##base#3 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#3, TInt, $Heap);
    assert {:id "id379"} {:subsumption 0} LitInt(2) <= ##base#3;
    assume LitInt(2) <= ##base#3;
    assume _module.__default.eval#canCall(b#0, base#0);
    assume {:id "id380"} _module.__default.eval($LS($LZ), a#0, base#0)
       == _module.__default.eval($LS($LZ), b#0, base#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id381"} Seq#Equal(a#0, b#0);
}



procedure {:verboseName "UniqueRepresentation (call)"} Call$$_module.__default.UniqueRepresentation(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  // user-defined preconditions
  requires {:id "id382"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id383"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id384"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id385"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(a#0, i#0)): int } 
        (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#0)): int)
           && (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> $Unbox(Seq#Index(a#0, i#0)): int < lowDigit#0 + base#0));
  requires {:id "id386"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id387"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id388"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id389"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
       || (forall i#1: int :: 
        { $Unbox(Seq#Index(b#0, i#1)): int } 
        (LitInt(0) <= i#1 && i#1 < Seq#Length(b#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(b#0, i#1)): int)
           && (LitInt(0) <= i#1 && i#1 < Seq#Length(b#0)
             ==> $Unbox(Seq#Index(b#0, i#1)): int < lowDigit#0 + base#0));
  requires {:id "id390"} Seq#Equal(a#0, _module.__default.trim($LS($LS($LZ)), a#0));
  requires {:id "id391"} Seq#Equal(b#0, _module.__default.trim($LS($LS($LZ)), b#0));
  requires {:id "id392"} _module.__default.eval($LS($LS($LZ)), a#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), b#0, base#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id393"} Seq#Equal(a#0, b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "UniqueRepresentation (correctness)"} Impl$$_module.__default.UniqueRepresentation(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id394"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#2: int :: 
      { $Unbox(Seq#Index(a#0, i#2)): int } 
      (LitInt(0) <= i#2 && i#2 < Seq#Length(a#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#2)): int)
         && (LitInt(0) <= i#2 && i#2 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#2)): int < lowDigit#0 + base#0));
  free requires {:id "id395"} _module.__default.IsSkewNumber#canCall(b#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(b#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#3: int :: 
      { $Unbox(Seq#Index(b#0, i#3)): int } 
      (LitInt(0) <= i#3 && i#3 < Seq#Length(b#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(b#0, i#3)): int)
         && (LitInt(0) <= i#3 && i#3 < Seq#Length(b#0)
           ==> $Unbox(Seq#Index(b#0, i#3)): int < lowDigit#0 + base#0));
  requires {:id "id396"} Seq#Equal(a#0, _module.__default.trim($LS($LS($LZ)), a#0));
  requires {:id "id397"} Seq#Equal(b#0, _module.__default.trim($LS($LS($LZ)), b#0));
  requires {:id "id398"} _module.__default.eval($LS($LS($LZ)), a#0, base#0)
     == _module.__default.eval($LS($LS($LZ)), b#0, base#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id399"} Seq#Equal(a#0, b#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UniqueRepresentation (correctness)"} Impl$$_module.__default.UniqueRepresentation(a#0: Seq, b#0: Seq, lowDigit#0: int, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##digits#6: Seq;
  var ##base#4: int;
  var a##0_0: Seq;
  var lowDigit##0_0: int;
  var base##0_0: int;
  var a##0_1: Seq;
  var lowDigit##0_1: int;
  var base##0_1: int;
  var aa#1_0: int;
  var bb#1_0: int;
  var $rhs#1_0: int;
  var ##digits#1_0: Seq;
  var ##base#1_0: int;
  var $rhs#1_1: int;
  var ##digits#1_1: Seq;
  var ##base#1_1: int;
  var arest#1_0: Seq
     where $Is(arest#1_0, TSeq(TInt)) && $IsAlloc(arest#1_0, TSeq(TInt), $Heap);
  var brest#1_0: Seq
     where $Is(brest#1_0, TSeq(TInt)) && $IsAlloc(brest#1_0, TSeq(TInt), $Heap);
  var $rhs#1_2: Seq;
  var $rhs#1_3: Seq;
  var ma#1_0: int;
  var mb#1_0: int;
  var $rhs#1_4: int;
  var $rhs#1_5: int;
  var a##1_0: Seq;
  var lowDigit##1_0: int;
  var base##1_0: int;
  var a##1_1: Seq;
  var lowDigit##1_1: int;
  var base##1_1: int;
  var y#1_0: int;
  var ##digits#1_2: Seq;
  var ##base#1_2: int;
  var ##digits#1_3: Seq;
  var ##base#1_3: int;
  var x##1_0: int;
  var a##1_2: int;
  var ##digits#1_4: Seq;
  var ##base#1_4: int;
  var b##1_0: int;
  var ##digits#1_5: Seq;
  var ##base#1_5: int;
  var y##1_0: int;
  var ##digits#1_6: Seq;
  var ##base#1_6: int;
  var ##digits#1_7: Seq;
  var ##base#1_7: int;
  var a##1_3: Seq;
  var a##1_4: Seq;
  var a##1_5: Seq;
  var b##1_1: Seq;
  var lowDigit##1_2: int;
  var base##1_2: int;

    // AddMethodImpl: UniqueRepresentation, Impl$$_module.__default.UniqueRepresentation
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: Seq, $ih#b0#0: Seq, $ih#base0#0: int :: 
      { _module.__default.eval($LS($LZ), $ih#b0#0, $ih#base0#0), _module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0) } 
        { _module.__default.eval($LS($LZ), $ih#b0#0, $ih#base0#0), _module.__default.trim($LS($LZ), $ih#a0#0) } 
        { _module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0), _module.__default.trim($LS($LZ), $ih#b0#0) } 
        { _module.__default.trim($LS($LZ), $ih#b0#0), _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0) } 
        { _module.__default.trim($LS($LZ), $ih#a0#0), _module.__default.IsSkewNumber($ih#b0#0, lowDigit#0, $ih#base0#0) } 
        { _module.__default.IsSkewNumber($ih#b0#0, lowDigit#0, $ih#base0#0), _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0) } 
      $Is($ih#a0#0, TSeq(TInt))
           && $Is($ih#b0#0, TSeq(TInt))
           && 
          _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0)
           && _module.__default.IsSkewNumber($ih#b0#0, lowDigit#0, $ih#base0#0)
           && 
          Seq#Equal($ih#a0#0, _module.__default.trim($LS($LZ), $ih#a0#0))
           && Seq#Equal($ih#b0#0, _module.__default.trim($LS($LZ), $ih#b0#0))
           && _module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0)
             == _module.__default.eval($LS($LZ), $ih#b0#0, $ih#base0#0)
           && (Seq#Rank($ih#a0#0) < Seq#Rank(a#0)
             || (Seq#Rank($ih#a0#0) == Seq#Rank(a#0)
               && (Seq#Rank($ih#b0#0) < Seq#Rank(b#0)
                 || (Seq#Rank($ih#b0#0) == Seq#Rank(b#0)
                   && ((0 <= lowDigit#0 && lowDigit#0 < lowDigit#0)
                     || (lowDigit#0 == lowDigit#0 && 0 <= $ih#base0#0 && $ih#base0#0 < base#0))))))
         ==> Seq#Equal($ih#a0#0, $ih#b0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(240,3)
    ##digits#6 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#6, TSeq(TInt), $Heap);
    ##base#4 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#4, TInt, $Heap);
    assert {:id "id400"} {:subsumption 0} LitInt(2) <= ##base#4;
    assume LitInt(2) <= ##base#4;
    assume _module.__default.eval#canCall(a#0, base#0);
    assume _module.__default.eval#canCall(a#0, base#0);
    if (_module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(241,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        lowDigit##0_0 := lowDigit#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##0_0 := base#0;
        call {:id "id401"} Call$$_module.__default.ZeroIsUnique(a##0_0, lowDigit##0_0, base##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(242,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_1 := b#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        lowDigit##0_1 := lowDigit#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##0_1 := base#0;
        call {:id "id402"} Call$$_module.__default.ZeroIsUnique(a##0_1, lowDigit##0_1, base##0_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(244,16)
        assume true;
        assume true;
        ##digits#1_0 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_0, TSeq(TInt), $Heap);
        ##base#1_0 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_0, TInt, $Heap);
        assert {:id "id403"} {:subsumption 0} LitInt(2) <= ##base#1_0;
        assume LitInt(2) <= ##base#1_0;
        assume _module.__default.eval#canCall(a#0, base#0);
        assume _module.__default.eval#canCall(a#0, base#0);
        $rhs#1_0 := _module.__default.eval($LS($LZ), a#0, base#0);
        ##digits#1_1 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_1, TSeq(TInt), $Heap);
        ##base#1_1 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_1, TInt, $Heap);
        assert {:id "id405"} {:subsumption 0} LitInt(2) <= ##base#1_1;
        assume LitInt(2) <= ##base#1_1;
        assume _module.__default.eval#canCall(b#0, base#0);
        assume _module.__default.eval#canCall(b#0, base#0);
        $rhs#1_1 := _module.__default.eval($LS($LZ), b#0, base#0);
        aa#1_0 := $rhs#1_0;
        bb#1_0 := $rhs#1_1;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(245,22)
        assume true;
        assume true;
        assert {:id "id409"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
        assume true;
        $rhs#1_2 := Seq#Drop(a#0, LitInt(1));
        assert {:id "id411"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
        assume true;
        $rhs#1_3 := Seq#Drop(b#0, LitInt(1));
        arest#1_0 := $rhs#1_2;
        brest#1_0 := $rhs#1_3;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(246,16)
        assume true;
        assume true;
        assert {:id "id415"} base#0 != 0;
        assume true;
        $rhs#1_4 := Mod(aa#1_0, base#0);
        assert {:id "id417"} base#0 != 0;
        assume true;
        $rhs#1_5 := Mod(bb#1_0, base#0);
        ma#1_0 := $rhs#1_4;
        mb#1_0 := $rhs#1_5;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(248,5)
        if (LitInt(0) <= ma#1_0)
        {
        }

        if (LitInt(0) <= ma#1_0 && ma#1_0 < base#0)
        {
            if (LitInt(0) <= mb#1_0)
            {
            }
        }

        assume true;
        assert {:id "id421"} {:subsumption 0} LitInt(0) <= ma#1_0;
        assert {:id "id422"} {:subsumption 0} ma#1_0 < base#0;
        assert {:id "id423"} {:subsumption 0} LitInt(0) <= mb#1_0;
        assert {:id "id424"} {:subsumption 0} mb#1_0 < base#0;
        assume {:id "id425"} LitInt(0) <= ma#1_0 && ma#1_0 < base#0 && LitInt(0) <= mb#1_0 && mb#1_0 < base#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(249,37)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##1_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        lowDigit##1_0 := lowDigit#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##1_0 := base#0;
        call {:id "id426"} Call$$_module.__default.LeastSignificantDigitIsAlmostMod(a##1_0, lowDigit##1_0, base##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(250,37)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##1_1 := b#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        lowDigit##1_1 := lowDigit#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##1_1 := base#0;
        call {:id "id427"} Call$$_module.__default.LeastSignificantDigitIsAlmostMod(a##1_1, lowDigit##1_1, base##1_1);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(251,5)
        if (ma#1_0 == mb#1_0)
        {
            assert {:id "id428"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assert {:id "id429"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
        }

        assume true;
        assert {:id "id430"} {:subsumption 0} ma#1_0 == mb#1_0;
        assert {:id "id431"} {:subsumption 0} $Unbox(Seq#Index(a#0, LitInt(0))): int == $Unbox(Seq#Index(b#0, LitInt(0))): int;
        assume {:id "id432"} ma#1_0 == mb#1_0
           && $Unbox(Seq#Index(a#0, LitInt(0))): int == $Unbox(Seq#Index(b#0, LitInt(0))): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(252,11)
        assume true;
        assert {:id "id433"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        y#1_0 := $Unbox(Seq#Index(a#0, LitInt(0))): int;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(254,5)
        ##digits#1_2 := arest#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_2, TSeq(TInt), $Heap);
        ##base#1_2 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_2, TInt, $Heap);
        assert {:id "id435"} {:subsumption 0} LitInt(2) <= ##base#1_2;
        assume _module.__default.eval#canCall(arest#1_0, base#0);
        assume _module.__default.eval#canCall(arest#1_0, base#0);
        assert {:id "id436"} {:subsumption 0} aa#1_0
           == Mul(base#0, _module.__default.eval($LS($LS($LZ)), arest#1_0, base#0)) + y#1_0;
        assume {:id "id437"} aa#1_0
           == Mul(base#0, _module.__default.eval($LS($LZ), arest#1_0, base#0)) + y#1_0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(255,5)
        ##digits#1_3 := brest#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_3, TSeq(TInt), $Heap);
        ##base#1_3 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_3, TInt, $Heap);
        assert {:id "id438"} {:subsumption 0} LitInt(2) <= ##base#1_3;
        assume _module.__default.eval#canCall(brest#1_0, base#0);
        assume _module.__default.eval#canCall(brest#1_0, base#0);
        assert {:id "id439"} {:subsumption 0} bb#1_0
           == Mul(base#0, _module.__default.eval($LS($LS($LZ)), brest#1_0, base#0)) + y#1_0;
        assume {:id "id440"} bb#1_0
           == Mul(base#0, _module.__default.eval($LS($LZ), brest#1_0, base#0)) + y#1_0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(256,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := base#0;
        ##digits#1_4 := arest#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_4, TSeq(TInt), $Heap);
        ##base#1_4 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_4, TInt, $Heap);
        assert {:id "id441"} {:subsumption 0} LitInt(2) <= ##base#1_4;
        assume LitInt(2) <= ##base#1_4;
        assume _module.__default.eval#canCall(arest#1_0, base#0);
        assume _module.__default.eval#canCall(arest#1_0, base#0);
        // ProcessCallStmt: CheckSubrange
        a##1_2 := _module.__default.eval($LS($LZ), arest#1_0, base#0);
        ##digits#1_5 := brest#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_5, TSeq(TInt), $Heap);
        ##base#1_5 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_5, TInt, $Heap);
        assert {:id "id442"} {:subsumption 0} LitInt(2) <= ##base#1_5;
        assume LitInt(2) <= ##base#1_5;
        assume _module.__default.eval#canCall(brest#1_0, base#0);
        assume _module.__default.eval#canCall(brest#1_0, base#0);
        // ProcessCallStmt: CheckSubrange
        b##1_0 := _module.__default.eval($LS($LZ), brest#1_0, base#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##1_0 := y#1_0;
        call {:id "id443"} Call$$_module.__default.MulInverse(x##1_0, a##1_2, b##1_0, y##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(257,5)
        ##digits#1_6 := arest#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_6, TSeq(TInt), $Heap);
        ##base#1_6 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_6, TInt, $Heap);
        assert {:id "id444"} {:subsumption 0} LitInt(2) <= ##base#1_6;
        assume _module.__default.eval#canCall(arest#1_0, base#0);
        ##digits#1_7 := brest#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#1_7, TSeq(TInt), $Heap);
        ##base#1_7 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#1_7, TInt, $Heap);
        assert {:id "id445"} {:subsumption 0} LitInt(2) <= ##base#1_7;
        assume _module.__default.eval#canCall(brest#1_0, base#0);
        assume _module.__default.eval#canCall(arest#1_0, base#0)
           && _module.__default.eval#canCall(brest#1_0, base#0);
        assert {:id "id446"} {:subsumption 0} _module.__default.eval($LS($LS($LZ)), arest#1_0, base#0)
           == _module.__default.eval($LS($LS($LZ)), brest#1_0, base#0);
        assume {:id "id447"} _module.__default.eval($LS($LZ), arest#1_0, base#0)
           == _module.__default.eval($LS($LZ), brest#1_0, base#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(259,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##1_3 := a#0;
        call {:id "id448"} Call$$_module.__default.TrimProperty(a##1_3);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(260,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##1_4 := b#0;
        call {:id "id449"} Call$$_module.__default.TrimProperty(a##1_4);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(261,25)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##1_5 := arest#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##1_1 := brest#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        lowDigit##1_2 := lowDigit#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##1_2 := base#0;
        assert {:id "id450"} 0 <= lowDigit#0
           || Seq#Rank(a##1_5) < Seq#Rank(a#0)
           || Seq#Rank(b##1_1) < Seq#Rank(b#0)
           || lowDigit##1_2 == lowDigit#0;
        assert {:id "id451"} 0 <= base#0
           || Seq#Rank(a##1_5) < Seq#Rank(a#0)
           || Seq#Rank(b##1_1) < Seq#Rank(b#0)
           || lowDigit##1_2 < lowDigit#0
           || base##1_2 == base#0;
        assert {:id "id452"} Seq#Rank(a##1_5) < Seq#Rank(a#0)
           || (Seq#Rank(a##1_5) == Seq#Rank(a#0)
             && (Seq#Rank(b##1_1) < Seq#Rank(b#0)
               || (Seq#Rank(b##1_1) == Seq#Rank(b#0)
                 && (lowDigit##1_2 < lowDigit#0
                   || (lowDigit##1_2 == lowDigit#0 && base##1_2 < base#0)))));
        call {:id "id453"} Call$$_module.__default.UniqueRepresentation(a##1_5, b##1_1, lowDigit##1_2, base##1_2);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(262,5)
        if (Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(y#1_0)), arest#1_0), a#0))
        {
        }

        assume true;
        assert {:id "id454"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(y#1_0)), arest#1_0), a#0);
        assert {:id "id455"} {:subsumption 0} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(y#1_0)), brest#1_0), b#0);
        assume {:id "id456"} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(y#1_0)), arest#1_0), a#0)
           && Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(y#1_0)), brest#1_0), b#0);
    }
}



procedure {:verboseName "ZeroIsUnique (well-formedness)"} CheckWellFormed$$_module.__default.ZeroIsUnique(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZeroIsUnique (well-formedness)"} CheckWellFormed$$_module.__default.ZeroIsUnique(a#0: Seq, lowDigit#0: int, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##digits#2: Seq;
  var ##base#1: int;


    // AddMethodImpl: ZeroIsUnique, CheckWellFormed$$_module.__default.ZeroIsUnique
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0);
    assume {:id "id457"} _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0);
    ##digits#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    assume _module.__default.trim#canCall(a#0);
    assume {:id "id458"} Seq#Equal(a#0, _module.__default.trim($LS($LZ), a#0));
    ##digits#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id459"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(a#0, base#0);
    assume {:id "id460"} _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id461"} Seq#Equal(a#0, Seq#Empty(): Seq);
}



procedure {:verboseName "ZeroIsUnique (call)"} Call$$_module.__default.ZeroIsUnique(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  // user-defined preconditions
  requires {:id "id462"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id463"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id464"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id465"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(a#0, i#0)): int } 
        (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#0)): int)
           && (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> $Unbox(Seq#Index(a#0, i#0)): int < lowDigit#0 + base#0));
  requires {:id "id466"} Seq#Equal(a#0, _module.__default.trim($LS($LS($LZ)), a#0));
  requires {:id "id467"} _module.__default.eval($LS($LS($LZ)), a#0, base#0) == LitInt(0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id468"} Seq#Equal(a#0, Seq#Empty(): Seq);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ZeroIsUnique (correctness)"} Impl$$_module.__default.ZeroIsUnique(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id469"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#1: int :: 
      { $Unbox(Seq#Index(a#0, i#1)): int } 
      (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#1)): int)
         && (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#1)): int < lowDigit#0 + base#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id470"} Seq#Equal(a#0, Seq#Empty(): Seq);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZeroIsUnique (correctness)"} Impl$$_module.__default.ZeroIsUnique(a#0: Seq, lowDigit#0: int, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a1#0_0: int;
  var ##digits#0_0: Seq;
  var ##base#0_0: int;
  var b#0_0: int;
  var ##digits#0_1: Seq;
  var ##base#0_1: int;
  var $Heap_at_0_0: Heap;
  var a##0_1_5_0: int;
  var x##0_1_5_0: int;
  var y##0_1_5_0: int;
  var a##0_2_5_0: int;
  var x##0_2_5_0: int;
  var y##0_2_5_0: int;
  var d#0_3_0_0_0: int;
  var ##digits#0_3_0_0: Seq;
  var ##lowDigit#0_3_0_0: int;
  var ##base#0_3_0_0: int;
  var ##digits#0_3_0_1: Seq;
  var ##lowDigit#0_3_0_1: int;
  var ##base#0_3_0_1: int;
  var a##0_3_0_1_0: Seq;
  var ##digits#0_3_0_2: Seq;
  var ##digits#0_3_0_3: Seq;
  var a##0_3_0_0: Seq;
  var lowDigit##0_3_0_0: int;
  var base##0_3_0_0: int;
  var ##digits#0_3_2_1_0: Seq;
  var ##digits#0_3_2_2_0: Seq;
  var ##digits#0_3_2_2_1: Seq;
  var ##digits#0_3_2_3_0: Seq;
  var ##digits#0_3_2_3_1: Seq;
  var ##digits#0_3_2_4_0: Seq;
  var ##digits#0_3_2_4_1: Seq;
  var ##digits#0_3_2_5_0: Seq;
  var ##digits#0_3_2_5_1: Seq;
  var ##digits#0_3_2_6_0: Seq;

    // AddMethodImpl: ZeroIsUnique, Impl$$_module.__default.ZeroIsUnique
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(272,3)
    assume true;
    if (!Seq#Equal(a#0, Seq#Empty(): Seq))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(273,12)
        assume true;
        assert {:id "id471"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
        ##digits#0_0 := Seq#Drop(a#0, LitInt(1));
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#0_0, TSeq(TInt), $Heap);
        ##base#0_0 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#0_0, TInt, $Heap);
        assert {:id "id472"} {:subsumption 0} LitInt(2) <= ##base#0_0;
        assume LitInt(2) <= ##base#0_0;
        assume _module.__default.eval#canCall(Seq#Drop(a#0, LitInt(1)), base#0);
        assume _module.__default.eval#canCall(Seq#Drop(a#0, LitInt(1)), base#0);
        a1#0_0 := _module.__default.eval($LS($LZ), Seq#Drop(a#0, LitInt(1)), base#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(274,11)
        assume true;
        assume true;
        b#0_0 := Mul(base#0, a1#0_0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(275,5)
        assert {:id "id475"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        ##digits#0_1 := a#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##digits#0_1, TSeq(TInt), $Heap);
        ##base#0_1 := base#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##base#0_1, TInt, $Heap);
        assert {:id "id476"} {:subsumption 0} LitInt(2) <= ##base#0_1;
        assume _module.__default.eval#canCall(a#0, base#0);
        assume _module.__default.eval#canCall(a#0, base#0);
        assert {:id "id477"} {:subsumption 0} $Unbox(Seq#Index(a#0, LitInt(0))): int + b#0_0
           == _module.__default.eval($LS($LS($LZ)), a#0, base#0);
        assume {:id "id478"} $Unbox(Seq#Index(a#0, LitInt(0))): int + b#0_0
           == _module.__default.eval($LS($LZ), a#0, base#0);
        if (*)
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(278,7)
            assert {:id "id479"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            assert {:id "id480"} Seq#Contains(a#0, Seq#Index(a#0, LitInt(0)));
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(277,5)
            if (0 - base#0 < lowDigit#0)
            {
                assert {:id "id481"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            }

            if (0 - base#0 < lowDigit#0 && lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int)
            {
                assert {:id "id482"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            }

            if (0 - base#0 < lowDigit#0
               && lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int
               && $Unbox(Seq#Index(a#0, LitInt(0))): int < lowDigit#0 + base#0)
            {
            }

            assume true;
            if (*)
            {
                // ----- assert statement proof ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(277,5)
                assert {:id "id483"} {:subsumption 0} 0 - base#0 < lowDigit#0;
                assert {:id "id484"} {:subsumption 0} lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int;
                assert {:id "id485"} {:subsumption 0} $Unbox(Seq#Index(a#0, LitInt(0))): int < lowDigit#0 + base#0;
                assert {:id "id486"} {:subsumption 0} lowDigit#0 + base#0 <= base#0;
                assume false;
            }

            $Heap_at_0_0 := $Heap;
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(277,5)
        if (0 - base#0 < lowDigit#0)
        {
            assume {:id "id487"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        }

        if (0 - base#0 < lowDigit#0 && lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int)
        {
            assume {:id "id488"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        }

        if (0 - base#0 < lowDigit#0
           && lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int
           && $Unbox(Seq#Index(a#0, LitInt(0))): int < lowDigit#0 + base#0)
        {
        }

        assume true;
        if (*)
        {
            // ----- assert statement proof ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(277,5)
            assume true;
            assume true;
            assume true;
            assume true;
            assume false;
        }

        $Heap_at_0_0 := $Heap;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume {:id "id505"} a1#0_0 <= LitInt(-1);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            push;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(285,25)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_1_5_0 := base#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0_1_5_0 := a1#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##0_1_5_0 := LitInt(-1);
            call {:id "id506"} Call$$_module.__default.MulIsMonotonic(a##0_1_5_0, x##0_1_5_0, y##0_1_5_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume true;
            // ----- assert line0 ==> line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id507"} {:subsumption 0} a1#0_0 <= LitInt(-1) ==> Mul(base#0, a1#0_0) <= Mul(base#0, LitInt(-1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume {:id "id502"} Mul(base#0, a1#0_0) <= Mul(base#0, LitInt(-1));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            push;
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(287,12)
            assume true;
            assert {:id "id503"} Mul(base#0, a1#0_0) == b#0_0;
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume true;
            // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id504"} {:subsumption 0} Mul(base#0, a1#0_0) <= Mul(base#0, LitInt(-1))
               ==> b#0_0 <= Mul(base#0, LitInt(-1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume true;
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            push;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id499"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assert {:id "id500"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id501"} {:subsumption 0} (b#0_0 <= Mul(base#0, LitInt(-1)))
               == ($Unbox(Seq#Index(a#0, LitInt(0))): int + b#0_0
                 <= $Unbox(Seq#Index(a#0, LitInt(0))): int - base#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume {:id "id495"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume {:id "id496"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            push;
            push;
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(291,11)
            assume _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0);
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id497"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id498"} {:subsumption 0} ($Unbox(Seq#Index(a#0, LitInt(0))): int + b#0_0
                 <= $Unbox(Seq#Index(a#0, LitInt(0))): int - base#0)
               == (LitInt(0) <= $Unbox(Seq#Index(a#0, LitInt(0))): int - base#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume {:id "id492"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            push;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id493"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id494"} {:subsumption 0} (LitInt(0) <= $Unbox(Seq#Index(a#0, LitInt(0))): int - base#0)
               == (base#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume {:id "id489"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume {:id "id490"} base#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int;
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            push;
            push;
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(295,12)
            assume 0 - base#0 < lowDigit#0
               && lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int
               && $Unbox(Seq#Index(a#0, LitInt(0))): int < lowDigit#0 + base#0
               && lowDigit#0 + base#0 <= base#0;
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assume true;
            // ----- assert line5 ==> line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(283,5)
            assert {:id "id491"} {:subsumption 0} base#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int ==> Lit(false);
            assume false;
        }

        assume {:id "id508"} a1#0_0 <= LitInt(-1) ==> false;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume true;
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume {:id "id524"} LitInt(1) <= a1#0_0;
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            push;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(301,25)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##0_2_5_0 := base#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0_2_5_0 := LitInt(1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##0_2_5_0 := a1#0_0;
            call {:id "id525"} Call$$_module.__default.MulIsMonotonic(a##0_2_5_0, x##0_2_5_0, y##0_2_5_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume true;
            // ----- assert line0 ==> line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id526"} {:subsumption 0} LitInt(1) <= a1#0_0 ==> Mul(base#0, LitInt(1)) <= Mul(base#0, a1#0_0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume true;
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            push;
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(303,11)
            assume true;
            assert {:id "id522"} Mul(base#0, LitInt(1)) == base#0;
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume true;
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id523"} {:subsumption 0} (Mul(base#0, LitInt(1)) <= Mul(base#0, a1#0_0))
               == (base#0 <= Mul(base#0, a1#0_0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume true;
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            push;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id519"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assert {:id "id520"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id521"} {:subsumption 0} (base#0 <= Mul(base#0, a1#0_0))
               == ($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0
                 <= $Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0_0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume {:id "id515"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume {:id "id516"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            push;
            push;
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(307,11)
            assume _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0);
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id517"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id518"} {:subsumption 0} ($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0
                 <= $Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0_0))
               == ($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0 <= LitInt(0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume {:id "id512"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            push;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id513"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id514"} {:subsumption 0} ($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0 <= LitInt(0))
               == ($Unbox(Seq#Index(a#0, LitInt(0))): int <= 0 - base#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume {:id "id509"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
            assume true;
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume {:id "id510"} $Unbox(Seq#Index(a#0, LitInt(0))): int <= 0 - base#0;
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            push;
            push;
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(311,12)
            assume 0 - base#0 < lowDigit#0
               && lowDigit#0 <= $Unbox(Seq#Index(a#0, LitInt(0))): int
               && $Unbox(Seq#Index(a#0, LitInt(0))): int < lowDigit#0 + base#0
               && lowDigit#0 + base#0 <= base#0;
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assume true;
            // ----- assert line5 ==> line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(299,5)
            assert {:id "id511"} {:subsumption 0} $Unbox(Seq#Index(a#0, LitInt(0))): int <= 0 - base#0 ==> Lit(false);
            assume false;
        }

        assume {:id "id527"} LitInt(1) <= a1#0_0 ==> false;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(315,5)
        assume true;
        if (a1#0_0 == LitInt(0))
        {
            if (*)
            {
                if (*)
                {
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(318,11)
                    // Begin Comprehension WF check
                    havoc d#0_3_0_0_0;
                    if (true)
                    {
                        assert {:id "id528"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                        if (Seq#Contains(Seq#Drop(a#0, LitInt(1)), $Box(d#0_3_0_0_0)))
                        {
                        }
                    }

                    // End Comprehension WF check
                    assume true;
                    assert {:id "id529"} (forall d#0_3_0_0_1: int :: 
                      { Seq#Contains(a#0, $Box(d#0_3_0_0_1)) } 
                        { Seq#Contains(Seq#Drop(a#0, 1), $Box(d#0_3_0_0_1)) } 
                      Seq#Contains(Seq#Drop(a#0, LitInt(1)), $Box(d#0_3_0_0_1))
                         ==> Seq#Contains(a#0, $Box(d#0_3_0_0_1)));
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(317,9)
                    assert {:id "id530"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                    ##digits#0_3_0_0 := Seq#Drop(a#0, LitInt(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##digits#0_3_0_0, TSeq(TInt), $Heap);
                    ##lowDigit#0_3_0_0 := lowDigit#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##lowDigit#0_3_0_0, TInt, $Heap);
                    ##base#0_3_0_0 := base#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##base#0_3_0_0, TInt, $Heap);
                    assume _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0);
                    assume _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0);
                    assert {:id "id531"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                       ==> _module.__default.IsSkewNumber(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                         || LitInt(2) <= base#0;
                    assert {:id "id532"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                       ==> _module.__default.IsSkewNumber(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                         || lowDigit#0 <= LitInt(0);
                    assert {:id "id533"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                       ==> _module.__default.IsSkewNumber(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                         || 0 < lowDigit#0 + base#0;
                    assert {:id "id534"} {:subsumption 0} _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                       ==> _module.__default.IsSkewNumber(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0)
                         || (forall i#0_3_0_0: int :: 
                          { $Unbox(Seq#Index(Seq#Drop(a#0, 1), i#0_3_0_0)): int } 
                          (LitInt(0) <= i#0_3_0_0 && i#0_3_0_0 < Seq#Length(Seq#Drop(a#0, LitInt(1)))
                               ==> lowDigit#0 <= $Unbox(Seq#Index(Seq#Drop(a#0, LitInt(1)), i#0_3_0_0)): int)
                             && (LitInt(0) <= i#0_3_0_0 && i#0_3_0_0 < Seq#Length(Seq#Drop(a#0, LitInt(1)))
                               ==> $Unbox(Seq#Index(Seq#Drop(a#0, LitInt(1)), i#0_3_0_0)): int
                                 < lowDigit#0 + base#0));
                    assume {:id "id535"} _module.__default.IsSkewNumber(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0);
                    assume false;
                }

                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(317,9)
                assume {:id "id536"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                ##digits#0_3_0_1 := Seq#Drop(a#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_0_1, TSeq(TInt), $Heap);
                ##lowDigit#0_3_0_1 := lowDigit#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##lowDigit#0_3_0_1, TInt, $Heap);
                ##base#0_3_0_1 := base#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##base#0_3_0_1, TInt, $Heap);
                assume _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0);
                assume _module.__default.IsSkewNumber#canCall(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0);
                assume true;
                assume true;
                assume true;
                assume true;
                assume {:id "id537"} _module.__default.IsSkewNumber(Seq#Drop(a#0, LitInt(1)), lowDigit#0, base#0);
                if (*)
                {
                    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(321,11)
                    assume Seq#Equal(a#0, _module.__default.trim($LS($LZ), a#0));
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(322,23)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    a##0_3_0_1_0 := a#0;
                    call {:id "id538"} Call$$_module.__default.TrimProperty(a##0_3_0_1_0);
                    // TrCallStmt: After ProcessCallStmt
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(320,9)
                    assert {:id "id539"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                    assert {:id "id540"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                    ##digits#0_3_0_2 := Seq#Drop(a#0, LitInt(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##digits#0_3_0_2, TSeq(TInt), $Heap);
                    assume _module.__default.trim#canCall(Seq#Drop(a#0, LitInt(1)));
                    assume _module.__default.trim#canCall(Seq#Drop(a#0, LitInt(1)));
                    assert {:id "id541"} {:subsumption 0} Seq#Equal(Seq#Drop(a#0, LitInt(1)), 
                      _module.__default.trim($LS($LS($LZ)), Seq#Drop(a#0, LitInt(1))));
                    assume {:id "id542"} Seq#Equal(Seq#Drop(a#0, LitInt(1)), 
                      _module.__default.trim($LS($LZ), Seq#Drop(a#0, LitInt(1))));
                    assume false;
                }

                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(320,9)
                assume {:id "id543"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                assume {:id "id544"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                ##digits#0_3_0_3 := Seq#Drop(a#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_0_3, TSeq(TInt), $Heap);
                assume _module.__default.trim#canCall(Seq#Drop(a#0, LitInt(1)));
                assume _module.__default.trim#canCall(Seq#Drop(a#0, LitInt(1)));
                assume true;
                assume {:id "id545"} Seq#Equal(Seq#Drop(a#0, LitInt(1)), 
                  _module.__default.trim($LS($LZ), Seq#Drop(a#0, LitInt(1))));
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(324,21)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id546"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                a##0_3_0_0 := Seq#Drop(a#0, LitInt(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                lowDigit##0_3_0_0 := lowDigit#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                base##0_3_0_0 := base#0;
                assert {:id "id547"} 0 <= lowDigit#0
                   || Seq#Rank(a##0_3_0_0) < Seq#Rank(a#0)
                   || lowDigit##0_3_0_0 == lowDigit#0;
                assert {:id "id548"} 0 <= base#0
                   || Seq#Rank(a##0_3_0_0) < Seq#Rank(a#0)
                   || lowDigit##0_3_0_0 < lowDigit#0
                   || base##0_3_0_0 == base#0;
                assert {:id "id549"} Seq#Rank(a##0_3_0_0) < Seq#Rank(a#0)
                   || (Seq#Rank(a##0_3_0_0) == Seq#Rank(a#0)
                     && (lowDigit##0_3_0_0 < lowDigit#0
                       || (lowDigit##0_3_0_0 == lowDigit#0 && base##0_3_0_0 < base#0)));
                call {:id "id550"} Call$$_module.__default.ZeroIsUnique(a##0_3_0_0, lowDigit##0_3_0_0, base##0_3_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(316,7)
                assume true;
                assert {:id "id551"} Seq#Length(a#0) == LitInt(1);
                assume false;
            }

            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(316,7)
            assume true;
            assume {:id "id552"} Seq#Length(a#0) == LitInt(1);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume true;
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume true;
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assert {:id "id562"} {:subsumption 0} Lit(true) == (a1#0_0 == LitInt(0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume true;
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume {:id "id560"} a1#0_0 == LitInt(0);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume true;
                // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assert {:id "id561"} {:subsumption 0} a1#0_0 == LitInt(0) ==> Mul(base#0, a1#0_0) == LitInt(0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume true;
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assert {:id "id557"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                assert {:id "id558"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                assume true;
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assert {:id "id559"} {:subsumption 0} (Mul(base#0, a1#0_0)
                   == LitInt(0))
                   == 
                  ($Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0_0)
                   == $Unbox(Seq#Index(a#0, LitInt(0))): int);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assume {:id "id553"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                assume {:id "id554"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                assume true;
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                push;
                push;
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(335,13)
                assume _module.__default.eval($LS($LZ), a#0, base#0) == LitInt(0);
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assert {:id "id555"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                assume true;
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(327,7)
                assert {:id "id556"} {:subsumption 0} ($Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0_0)
                   == $Unbox(Seq#Index(a#0, LitInt(0))): int)
                   == 
                  (LitInt(0)
                   == $Unbox(Seq#Index(a#0, LitInt(0))): int);
                assume false;
            }

            assume {:id "id563"} true ==> LitInt(0) == $Unbox(Seq#Index(a#0, LitInt(0))): int;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assume true;
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(341,13)
                assume Seq#Equal(a#0, _module.__default.trim($LS($LZ), a#0));
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                ##digits#0_3_2_6_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_2_6_0, TSeq(TInt), $Heap);
                assume _module.__default.trim#canCall(a#0);
                assume _module.__default.trim#canCall(a#0);
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id585"} {:subsumption 0} Seq#Equal(a#0, _module.__default.trim($LS($LS($LZ)), a#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                ##digits#0_3_2_5_0 := a#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_2_5_0, TSeq(TInt), $Heap);
                assume _module.__default.trim#canCall(a#0);
                assume _module.__default.trim#canCall(a#0);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                if (Seq#Length(a#0) != 0)
                {
                    assert {:id "id582"} {:subsumption 0} 0 <= Seq#Length(a#0) - 1 && Seq#Length(a#0) - 1 < Seq#Length(a#0);
                }

                if (Seq#Length(a#0) != 0
                   && $Unbox(Seq#Index(a#0, Seq#Length(a#0) - 1)): int == LitInt(0))
                {
                    assert {:id "id583"} {:subsumption 0} 0 <= Seq#Length(a#0) - 1 && Seq#Length(a#0) - 1 <= Seq#Length(a#0);
                    ##digits#0_3_2_5_1 := Seq#Take(a#0, Seq#Length(a#0) - 1);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##digits#0_3_2_5_1, TSeq(TInt), $Heap);
                    assume _module.__default.trim#canCall(Seq#Take(a#0, Seq#Length(a#0) - 1));
                }
                else
                {
                }

                assume Seq#Length(a#0) != 0
                     && $Unbox(Seq#Index(a#0, Seq#Length(a#0) - 1)): int == LitInt(0)
                   ==> _module.__default.trim#canCall(Seq#Take(a#0, Seq#Length(a#0) - 1));
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id584"} {:subsumption 0} Seq#Equal(_module.__default.trim($LS($LS($LZ)), a#0), 
                  (if Seq#Length(a#0) != 0
                       && $Unbox(Seq#Index(a#0, Seq#Length(a#0) - 1)): int == LitInt(0)
                     then _module.__default.trim($LS($LS($LZ)), Seq#Take(a#0, Seq#Length(a#0) - 1))
                     else a#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                if (Seq#Length(a#0) != 0)
                {
                    assume {:id "id576"} {:subsumption 0} 0 <= Seq#Length(a#0) - 1 && Seq#Length(a#0) - 1 < Seq#Length(a#0);
                }

                if (Seq#Length(a#0) != 0
                   && $Unbox(Seq#Index(a#0, Seq#Length(a#0) - 1)): int == LitInt(0))
                {
                    assume {:id "id577"} {:subsumption 0} 0 <= Seq#Length(a#0) - 1 && Seq#Length(a#0) - 1 <= Seq#Length(a#0);
                    ##digits#0_3_2_4_0 := Seq#Take(a#0, Seq#Length(a#0) - 1);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##digits#0_3_2_4_0, TSeq(TInt), $Heap);
                    assume _module.__default.trim#canCall(Seq#Take(a#0, Seq#Length(a#0) - 1));
                }
                else
                {
                }

                assume Seq#Length(a#0) != 0
                     && $Unbox(Seq#Index(a#0, Seq#Length(a#0) - 1)): int == LitInt(0)
                   ==> _module.__default.trim#canCall(Seq#Take(a#0, Seq#Length(a#0) - 1));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(345,13)
                assume true;
                assert {:id "id578"} Seq#Length(a#0) == LitInt(1);
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id579"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                if ($Unbox(Seq#Index(a#0, LitInt(0))): int == LitInt(0))
                {
                    assert {:id "id580"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(a#0);
                    ##digits#0_3_2_4_1 := Seq#Take(a#0, LitInt(0));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##digits#0_3_2_4_1, TSeq(TInt), $Heap);
                    assume _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                }
                else
                {
                }

                assume $Unbox(Seq#Index(a#0, LitInt(0))): int == LitInt(0)
                   ==> _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id581"} {:subsumption 0} Seq#Equal((if Seq#Length(a#0) != 0
                       && $Unbox(Seq#Index(a#0, Seq#Length(a#0) - 1)): int == LitInt(0)
                     then _module.__default.trim($LS($LS($LZ)), Seq#Take(a#0, Seq#Length(a#0) - 1))
                     else a#0), 
                  (if $Unbox(Seq#Index(a#0, LitInt(0))): int == LitInt(0)
                     then _module.__default.trim($LS($LS($LZ)), Seq#Take(a#0, LitInt(0)))
                     else a#0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assume {:id "id570"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                if ($Unbox(Seq#Index(a#0, LitInt(0))): int == LitInt(0))
                {
                    assume {:id "id571"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(a#0);
                    ##digits#0_3_2_3_0 := Seq#Take(a#0, LitInt(0));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##digits#0_3_2_3_0, TSeq(TInt), $Heap);
                    assume _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                }
                else
                {
                }

                assume $Unbox(Seq#Index(a#0, LitInt(0))): int == LitInt(0)
                   ==> _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(347,13)
                assert {:id "id572"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
                assume true;
                assert {:id "id573"} $Unbox(Seq#Index(a#0, LitInt(0))): int == LitInt(0);
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id574"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(a#0);
                ##digits#0_3_2_3_1 := Seq#Take(a#0, LitInt(0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_2_3_1, TSeq(TInt), $Heap);
                assume _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                assume _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id575"} {:subsumption 0} Seq#Equal((if $Unbox(Seq#Index(a#0, LitInt(0))): int == LitInt(0)
                     then _module.__default.trim($LS($LS($LZ)), Seq#Take(a#0, LitInt(0)))
                     else a#0), 
                  _module.__default.trim($LS($LS($LZ)), Seq#Take(a#0, LitInt(0))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assume {:id "id566"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(a#0);
                ##digits#0_3_2_2_0 := Seq#Take(a#0, LitInt(0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_2_2_0, TSeq(TInt), $Heap);
                assume _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                assume _module.__default.trim#canCall(Seq#Take(a#0, LitInt(0)));
                // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(349,13)
                assert {:id "id567"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(a#0);
                assume true;
                assert {:id "id568"} Seq#Equal(Seq#Take(a#0, LitInt(0)), Seq#Empty(): Seq);
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                ##digits#0_3_2_2_1 := Lit(Seq#Empty(): Seq);
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_2_2_1, TSeq(TInt), $Heap);
                assume _module.__default.trim#canCall(Lit(Seq#Empty(): Seq));
                assume _module.__default.trim#canCall(Lit(Seq#Empty(): Seq));
                // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id569"} {:subsumption 0} Seq#Equal(_module.__default.trim($LS($LS($LZ)), Seq#Take(a#0, LitInt(0))), 
                  _module.__default.trim($LS($LS($LZ)), Lit(Seq#Empty(): Seq)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                ##digits#0_3_2_1_0 := Lit(Seq#Empty(): Seq);
                // assume allocatedness for argument to function
                assume $IsAlloc(##digits#0_3_2_1_0, TSeq(TInt), $Heap);
                assume _module.__default.trim#canCall(Lit(Seq#Empty(): Seq));
                assume _module.__default.trim#canCall(Lit(Seq#Empty(): Seq));
                // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assume true;
                // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id565"} {:subsumption 0} Seq#Equal(_module.__default.trim($LS($LS($LZ)), Lit(Seq#Empty(): Seq)), Seq#Empty(): Seq);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assume true;
                // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assume true;
                // ----- assert line6 != line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(339,7)
                assert {:id "id564"} {:subsumption 0} !Seq#Equal(Seq#Empty(): Seq, a#0);
                assume false;
            }

            assume {:id "id586"} !Seq#Equal(a#0, a#0);
        }
        else
        {
        }
    }
    else
    {
    }
}



procedure {:verboseName "LeastSignificantDigitIsAlmostMod (well-formedness)"} CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeastSignificantDigitIsAlmostMod (well-formedness)"} CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod(a#0: Seq, lowDigit#0: int, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var mod#Z#0: int;
  var let#0#0#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;


    // AddMethodImpl: LeastSignificantDigitIsAlmostMod, CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0);
    assume {:id "id587"} _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0);
    assume {:id "id588"} !Seq#Equal(a#0, Seq#Empty(): Seq);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc mod#Z#0;
    ##digits#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id589"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(a#0, base#0);
    assert {:id "id590"} base#0 != 0;
    assume {:id "id591"} let#0#0#0 == Mod(_module.__default.eval($LS($LZ), a#0, base#0), base#0);
    assume _module.__default.eval#canCall(a#0, base#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, TInt);
    assume {:id "id592"} mod#Z#0 == let#0#0#0;
    assert {:id "id593"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    if ($Unbox(Seq#Index(a#0, LitInt(0))): int != mod#Z#0)
    {
        assert {:id "id594"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    }

    assume {:id "id595"} (var mod#0 := Mod(_module.__default.eval($LS($LZ), a#0, base#0), base#0); 
      $Unbox(Seq#Index(a#0, LitInt(0))): int == mod#0
         || $Unbox(Seq#Index(a#0, LitInt(0))): int == mod#0 - base#0);
}



procedure {:verboseName "LeastSignificantDigitIsAlmostMod (call)"} Call$$_module.__default.LeastSignificantDigitIsAlmostMod(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  // user-defined preconditions
  requires {:id "id596"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id597"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id598"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id599"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(a#0, i#0)): int } 
        (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#0)): int)
           && (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> $Unbox(Seq#Index(a#0, i#0)): int < lowDigit#0 + base#0));
  requires {:id "id600"} !Seq#Equal(a#0, Seq#Empty(): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(a#0, base#0);
  ensures {:id "id601"} (var mod#0 := Mod(_module.__default.eval($LS($LS($LZ)), a#0, base#0), base#0); 
    $Unbox(Seq#Index(a#0, LitInt(0))): int == mod#0
       || $Unbox(Seq#Index(a#0, LitInt(0))): int == mod#0 - base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "LeastSignificantDigitIsAlmostMod (correctness)"} Impl$$_module.__default.LeastSignificantDigitIsAlmostMod(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id602"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#1: int :: 
      { $Unbox(Seq#Index(a#0, i#1)): int } 
      (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#1)): int)
         && (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#1)): int < lowDigit#0 + base#0));
  requires {:id "id603"} !Seq#Equal(a#0, Seq#Empty(): Seq);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(a#0, base#0);
  ensures {:id "id604"} (var mod#0 := Mod(_module.__default.eval($LS($LS($LZ)), a#0, base#0), base#0); 
    $Unbox(Seq#Index(a#0, LitInt(0))): int == mod#0
       || $Unbox(Seq#Index(a#0, LitInt(0))): int == mod#0 - base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeastSignificantDigitIsAlmostMod (correctness)"} Impl$$_module.__default.LeastSignificantDigitIsAlmostMod(a#0: Seq, lowDigit#0: int, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var a##0_0: Seq;
  var lowDigit##0_0: int;
  var base##0_0: int;
  var a##1_0: Seq;
  var lowDigit##1_0: int;
  var base##1_0: int;

    // AddMethodImpl: LeastSignificantDigitIsAlmostMod, Impl$$_module.__default.LeastSignificantDigitIsAlmostMod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: Seq, $ih#base0#0: int :: 
      { _module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0) } 
        { _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0) } 
      $Is($ih#a0#0, TSeq(TInt))
           && 
          _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0)
           && !Seq#Equal($ih#a0#0, Seq#Empty(): Seq)
           && (Seq#Rank($ih#a0#0) < Seq#Rank(a#0)
             || (Seq#Rank($ih#a0#0) == Seq#Rank(a#0)
               && ((0 <= lowDigit#0 && lowDigit#0 < lowDigit#0)
                 || (lowDigit#0 == lowDigit#0 && 0 <= $ih#base0#0 && $ih#base0#0 < base#0))))
         ==> (var mod#1 := Mod(_module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0), $ih#base0#0); 
          $Unbox(Seq#Index($ih#a0#0, LitInt(0))): int == mod#1
             || $Unbox(Seq#Index($ih#a0#0, LitInt(0))): int == mod#1 - $ih#base0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(366,3)
    assert {:id "id605"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    if (LitInt(0) <= $Unbox(Seq#Index(a#0, LitInt(0))): int)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(367,41)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        lowDigit##0_0 := lowDigit#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##0_0 := base#0;
        call {:id "id606"} Call$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos(a##0_0, lowDigit##0_0, base##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(369,41)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##1_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        lowDigit##1_0 := lowDigit#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##1_0 := base#0;
        call {:id "id607"} Call$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg(a##1_0, lowDigit##1_0, base##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "LeastSignificantDigitIsAlmostMod_Pos (well-formedness)"} CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeastSignificantDigitIsAlmostMod_Pos (well-formedness)"} CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos(a#0: Seq, lowDigit#0: int, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;


    // AddMethodImpl: LeastSignificantDigitIsAlmostMod_Pos, CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0);
    assume {:id "id608"} _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0);
    assume {:id "id609"} !Seq#Equal(a#0, Seq#Empty(): Seq);
    assert {:id "id610"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume {:id "id611"} LitInt(0) <= $Unbox(Seq#Index(a#0, LitInt(0))): int;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##digits#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id612"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(a#0, base#0);
    assert {:id "id613"} base#0 != 0;
    assert {:id "id614"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume {:id "id615"} Mod(_module.__default.eval($LS($LZ), a#0, base#0), base#0)
       == $Unbox(Seq#Index(a#0, LitInt(0))): int;
}



procedure {:verboseName "LeastSignificantDigitIsAlmostMod_Pos (call)"} Call$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  // user-defined preconditions
  requires {:id "id616"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id617"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id618"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id619"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(a#0, i#0)): int } 
        (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#0)): int)
           && (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> $Unbox(Seq#Index(a#0, i#0)): int < lowDigit#0 + base#0));
  requires {:id "id620"} !Seq#Equal(a#0, Seq#Empty(): Seq);
  requires {:id "id621"} LitInt(0) <= $Unbox(Seq#Index(a#0, LitInt(0))): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(a#0, base#0);
  ensures {:id "id622"} Mod(_module.__default.eval($LS($LS($LZ)), a#0, base#0), base#0)
     == $Unbox(Seq#Index(a#0, LitInt(0))): int;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "LeastSignificantDigitIsAlmostMod_Pos (correctness)"} Impl$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id623"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#1: int :: 
      { $Unbox(Seq#Index(a#0, i#1)): int } 
      (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#1)): int)
         && (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#1)): int < lowDigit#0 + base#0));
  requires {:id "id624"} !Seq#Equal(a#0, Seq#Empty(): Seq);
  requires {:id "id625"} LitInt(0) <= $Unbox(Seq#Index(a#0, LitInt(0))): int;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(a#0, base#0);
  ensures {:id "id626"} Mod(_module.__default.eval($LS($LS($LZ)), a#0, base#0), base#0)
     == $Unbox(Seq#Index(a#0, LitInt(0))): int;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeastSignificantDigitIsAlmostMod_Pos (correctness)"} Impl$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos(a#0: Seq, lowDigit#0: int, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n#0: int;
  var ##digits#2: Seq;
  var ##base#2: int;
  var a1#0: int;
  var ##digits#3: Seq;
  var ##base#3: int;
  var b#0: int;
  var a##0_0_0: int;
  var b##0_0_0: int;
  var n##0_1_0: int;
  var k##0_1_0: int;
  var base##0_1_0: int;

    // AddMethodImpl: LeastSignificantDigitIsAlmostMod_Pos, Impl$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: Seq, $ih#base0#0: int :: 
      { _module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0) } 
        { _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0) } 
      $Is($ih#a0#0, TSeq(TInt))
           && 
          _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0)
           && 
          !Seq#Equal($ih#a0#0, Seq#Empty(): Seq)
           && LitInt(0) <= $Unbox(Seq#Index($ih#a0#0, LitInt(0))): int
           && (Seq#Rank($ih#a0#0) < Seq#Rank(a#0)
             || (Seq#Rank($ih#a0#0) == Seq#Rank(a#0)
               && ((0 <= lowDigit#0 && lowDigit#0 < lowDigit#0)
                 || (lowDigit#0 == lowDigit#0 && 0 <= $ih#base0#0 && $ih#base0#0 < base#0))))
         ==> Mod(_module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0), $ih#base0#0)
           == $Unbox(Seq#Index($ih#a0#0, LitInt(0))): int);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(378,9)
    assume true;
    ##digits#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
    ##base#2 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#2, TInt, $Heap);
    assert {:id "id627"} {:subsumption 0} LitInt(2) <= ##base#2;
    assume LitInt(2) <= ##base#2;
    assume _module.__default.eval#canCall(a#0, base#0);
    assume _module.__default.eval#canCall(a#0, base#0);
    n#0 := _module.__default.eval($LS($LZ), a#0, base#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(379,10)
    assume true;
    assert {:id "id629"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
    ##digits#3 := Seq#Drop(a#0, LitInt(1));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#3, TSeq(TInt), $Heap);
    ##base#3 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#3, TInt, $Heap);
    assert {:id "id630"} {:subsumption 0} LitInt(2) <= ##base#3;
    assume LitInt(2) <= ##base#3;
    assume _module.__default.eval#canCall(Seq#Drop(a#0, LitInt(1)), base#0);
    assume _module.__default.eval#canCall(Seq#Drop(a#0, LitInt(1)), base#0);
    a1#0 := _module.__default.eval($LS($LZ), Seq#Drop(a#0, LitInt(1)), base#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(380,9)
    assume true;
    assume true;
    b#0 := Mul(base#0, a1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(381,3)
    assert {:id "id633"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    assert {:id "id634"} $Unbox(Seq#Index(a#0, LitInt(0))): int + b#0 == n#0;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assert {:id "id654"} {:subsumption 0} base#0 != 0;
        assume true;
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assume {:id "id650"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assert {:id "id651"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assert {:id "id652"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assert {:id "id653"} {:subsumption 0} Mod(n#0, base#0)
           == Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0), base#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assume {:id "id643"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume {:id "id644"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(387,20)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id645"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_1_0 := $Unbox(Seq#Index(a#0, LitInt(0))): int;
        assume true;
        // ProcessCallStmt: CheckSubrange
        k##0_1_0 := a1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##0_1_0 := base#0;
        call {:id "id646"} Call$$_module.__default.ModProperty(n##0_1_0, k##0_1_0, base##0_1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assert {:id "id647"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assert {:id "id648"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assert {:id "id649"} {:subsumption 0} Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0), base#0)
           == Mod($Unbox(Seq#Index(a#0, LitInt(0))): int, base#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assume {:id "id635"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume {:id "id636"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(389,9)
        assert {:id "id637"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        assert {:id "id638"} Seq#Contains(a#0, Seq#Index(a#0, LitInt(0)));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(389,34)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id639"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0_0 := $Unbox(Seq#Index(a#0, LitInt(0))): int;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_0_0 := base#0;
        call {:id "id640"} Call$$_module.__default.ModNoop(a##0_0_0, b##0_0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assert {:id "id641"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(383,3)
        assert {:id "id642"} {:subsumption 0} Mod($Unbox(Seq#Index(a#0, LitInt(0))): int, base#0)
           == $Unbox(Seq#Index(a#0, LitInt(0))): int;
        assume false;
    }

    assume {:id "id655"} Mod(n#0, base#0) == $Unbox(Seq#Index(a#0, LitInt(0))): int;
}



procedure {:verboseName "LeastSignificantDigitIsAlmostMod_Neg (well-formedness)"} CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeastSignificantDigitIsAlmostMod_Neg (well-formedness)"} CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg(a#0: Seq, lowDigit#0: int, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##digits#0: Seq;
  var ##lowDigit#0: int;
  var ##base#0: int;
  var ##digits#1: Seq;
  var ##base#1: int;


    // AddMethodImpl: LeastSignificantDigitIsAlmostMod_Neg, CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##digits#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#0, TSeq(TInt), $Heap);
    ##lowDigit#0 := lowDigit#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##lowDigit#0, TInt, $Heap);
    ##base#0 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#0, TInt, $Heap);
    assume _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0);
    assume {:id "id656"} _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0);
    assume {:id "id657"} !Seq#Equal(a#0, Seq#Empty(): Seq);
    assert {:id "id658"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume {:id "id659"} $Unbox(Seq#Index(a#0, LitInt(0))): int < 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##digits#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#1, TSeq(TInt), $Heap);
    ##base#1 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#1, TInt, $Heap);
    assert {:id "id660"} {:subsumption 0} LitInt(2) <= ##base#1;
    assume LitInt(2) <= ##base#1;
    assume _module.__default.eval#canCall(a#0, base#0);
    assert {:id "id661"} base#0 != 0;
    assert {:id "id662"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume {:id "id663"} Mod(_module.__default.eval($LS($LZ), a#0, base#0), base#0)
       == $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
}



procedure {:verboseName "LeastSignificantDigitIsAlmostMod_Neg (call)"} Call$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int);
  // user-defined preconditions
  requires {:id "id664"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0) || LitInt(2) <= base#0;
  requires {:id "id665"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || lowDigit#0 <= LitInt(0);
  requires {:id "id666"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || 0 < lowDigit#0 + base#0;
  requires {:id "id667"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     ==> _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
       || (forall i#0: int :: 
        { $Unbox(Seq#Index(a#0, i#0)): int } 
        (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#0)): int)
           && (LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
             ==> $Unbox(Seq#Index(a#0, i#0)): int < lowDigit#0 + base#0));
  requires {:id "id668"} !Seq#Equal(a#0, Seq#Empty(): Seq);
  requires {:id "id669"} $Unbox(Seq#Index(a#0, LitInt(0))): int < 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(a#0, base#0);
  ensures {:id "id670"} Mod(_module.__default.eval($LS($LS($LZ)), a#0, base#0), base#0)
     == $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "LeastSignificantDigitIsAlmostMod_Neg (correctness)"} Impl$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg(a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    lowDigit#0: int, 
    base#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id671"} _module.__default.IsSkewNumber#canCall(a#0, lowDigit#0, base#0)
     && 
    _module.__default.IsSkewNumber(a#0, lowDigit#0, base#0)
     && 
    LitInt(2) <= base#0
     && 
    lowDigit#0 <= LitInt(0)
     && 0 < lowDigit#0 + base#0
     && (forall i#1: int :: 
      { $Unbox(Seq#Index(a#0, i#1)): int } 
      (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> lowDigit#0 <= $Unbox(Seq#Index(a#0, i#1)): int)
         && (LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#1)): int < lowDigit#0 + base#0));
  requires {:id "id672"} !Seq#Equal(a#0, Seq#Empty(): Seq);
  requires {:id "id673"} $Unbox(Seq#Index(a#0, LitInt(0))): int < 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.eval#canCall(a#0, base#0);
  ensures {:id "id674"} Mod(_module.__default.eval($LS($LS($LZ)), a#0, base#0), base#0)
     == $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LeastSignificantDigitIsAlmostMod_Neg (correctness)"} Impl$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg(a#0: Seq, lowDigit#0: int, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var n#0: int;
  var ##digits#2: Seq;
  var ##base#2: int;
  var a1#0: int;
  var ##digits#3: Seq;
  var ##base#3: int;
  var b#0: int;
  var aPlus#0: int;
  var a1minus#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var a##0_0_0: int;
  var b##0_0_0: int;
  var n##0_1_0: int;
  var k##0_1_0: int;
  var base##0_1_0: int;

    // AddMethodImpl: LeastSignificantDigitIsAlmostMod_Neg, Impl$$_module.__default.LeastSignificantDigitIsAlmostMod__Neg
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#a0#0: Seq, $ih#base0#0: int :: 
      { _module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0) } 
        { _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0) } 
      $Is($ih#a0#0, TSeq(TInt))
           && 
          _module.__default.IsSkewNumber($ih#a0#0, lowDigit#0, $ih#base0#0)
           && 
          !Seq#Equal($ih#a0#0, Seq#Empty(): Seq)
           && $Unbox(Seq#Index($ih#a0#0, LitInt(0))): int < 0
           && (Seq#Rank($ih#a0#0) < Seq#Rank(a#0)
             || (Seq#Rank($ih#a0#0) == Seq#Rank(a#0)
               && ((0 <= lowDigit#0 && lowDigit#0 < lowDigit#0)
                 || (lowDigit#0 == lowDigit#0 && 0 <= $ih#base0#0 && $ih#base0#0 < base#0))))
         ==> Mod(_module.__default.eval($LS($LZ), $ih#a0#0, $ih#base0#0), $ih#base0#0)
           == $Unbox(Seq#Index($ih#a0#0, LitInt(0))): int + $ih#base0#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(399,9)
    assume true;
    ##digits#2 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#2, TSeq(TInt), $Heap);
    ##base#2 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#2, TInt, $Heap);
    assert {:id "id675"} {:subsumption 0} LitInt(2) <= ##base#2;
    assume LitInt(2) <= ##base#2;
    assume _module.__default.eval#canCall(a#0, base#0);
    assume _module.__default.eval#canCall(a#0, base#0);
    n#0 := _module.__default.eval($LS($LZ), a#0, base#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(400,10)
    assume true;
    assert {:id "id677"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(a#0);
    ##digits#3 := Seq#Drop(a#0, LitInt(1));
    // assume allocatedness for argument to function
    assume $IsAlloc(##digits#3, TSeq(TInt), $Heap);
    ##base#3 := base#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##base#3, TInt, $Heap);
    assert {:id "id678"} {:subsumption 0} LitInt(2) <= ##base#3;
    assume LitInt(2) <= ##base#3;
    assume _module.__default.eval#canCall(Seq#Drop(a#0, LitInt(1)), base#0);
    assume _module.__default.eval#canCall(Seq#Drop(a#0, LitInt(1)), base#0);
    a1#0 := _module.__default.eval($LS($LZ), Seq#Drop(a#0, LitInt(1)), base#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(401,9)
    assume true;
    assume true;
    b#0 := Mul(base#0, a1#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(402,3)
    assert {:id "id681"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    assert {:id "id682"} $Unbox(Seq#Index(a#0, LitInt(0))): int + b#0 == n#0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(404,22)
    assume true;
    assume true;
    assert {:id "id683"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    $rhs#0 := $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
    assume true;
    $rhs#1 := a1#0 - 1;
    aPlus#0 := $rhs#0;
    a1minus#0 := $rhs#1;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id718"} {:subsumption 0} base#0 != 0;
        assume true;
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assume {:id "id714"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id715"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assert {:id "id716"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id717"} {:subsumption 0} Mod(n#0, base#0)
           == Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0), base#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assume {:id "id708"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume {:id "id709"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(409,9)
        assume true;
        assert {:id "id710"} Mul(base#0, a1#0) == base#0 + Mul(base#0, a1minus#0);
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id711"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assert {:id "id712"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id713"} {:subsumption 0} Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + Mul(base#0, a1#0), base#0)
           == Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0 + Mul(base#0, a1minus#0), base#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assume {:id "id703"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume {:id "id704"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id705"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assert {:id "id706"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id707"} {:subsumption 0} Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0 + Mul(base#0, a1minus#0), base#0)
           == Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0 + Mul(base#0, a1minus#0), base#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assume {:id "id696"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume {:id "id697"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(413,20)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id698"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_1_0 := $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        k##0_1_0 := a1minus#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        base##0_1_0 := base#0;
        call {:id "id699"} Call$$_module.__default.ModProperty(n##0_1_0, k##0_1_0, base##0_1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id700"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assert {:id "id701"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id702"} {:subsumption 0} Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0 + Mul(base#0, a1minus#0), base#0)
           == Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0, base#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assume {:id "id688"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume {:id "id689"} {:subsumption 0} base#0 != 0;
        assume true;
        // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(415,9)
        assert {:id "id690"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        assert {:id "id691"} Seq#Contains(a#0, Seq#Index(a#0, LitInt(0)));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(415,34)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id692"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0_0 := $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##0_0_0 := base#0;
        call {:id "id693"} Call$$_module.__default.ModNoop(a##0_0_0, b##0_0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id694"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
        assume true;
        // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(405,3)
        assert {:id "id695"} {:subsumption 0} Mod($Unbox(Seq#Index(a#0, LitInt(0))): int + base#0, base#0)
           == $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
        assume false;
    }

    assume {:id "id719"} Mod(n#0, base#0) == $Unbox(Seq#Index(a#0, LitInt(0))): int + base#0;
}



procedure {:verboseName "ModProperty (well-formedness)"} CheckWellFormed$$_module.__default.ModProperty(n#0: int, k#0: int, base#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ModProperty (well-formedness)"} CheckWellFormed$$_module.__default.ModProperty(n#0: int, k#0: int, base#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: ModProperty, CheckWellFormed$$_module.__default.ModProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id720"} LitInt(2) <= base#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id721"} base#0 != 0;
    assert {:id "id722"} base#0 != 0;
    assume {:id "id723"} Mod(n#0 + Mul(base#0, k#0), base#0) == Mod(n#0, base#0);
}



procedure {:verboseName "ModProperty (call)"} Call$$_module.__default.ModProperty(n#0: int, k#0: int, base#0: int);
  // user-defined preconditions
  requires {:id "id724"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id725"} Mod(n#0 + Mul(base#0, k#0), base#0) == Mod(n#0, base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ModProperty (correctness)"} Impl$$_module.__default.ModProperty(n#0: int, k#0: int, base#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id726"} LitInt(2) <= base#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id727"} Mod(n#0 + Mul(base#0, k#0), base#0) == Mod(n#0, base#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ModProperty (correctness)"} Impl$$_module.__default.ModProperty(n#0: int, k#0: int, base#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#0: int;
  var m#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $Heap_at_0: Heap;
  var ##$Heap_at_0#m#0: int;
  var n'#0: int;
  var d'#0: int;
  var m'#0: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var $Heap_at_1: Heap;
  var ##$Heap_at_1#m'#0: int;
  var y#0: int;
  var p#0: int;
  var $rhs##0: int;
  var k##0: int;
  var a##0: int;
  var x##0: int;
  var b##0: int;
  var y##0: int;
  var pk#0: int;
  var a##3_0: int;
  var x##3_0: int;
  var y##3_0: int;
  var a##4_0: int;
  var x##4_0: int;
  var y##4_0: int;

    // AddMethodImpl: ModProperty, Impl$$_module.__default.ModProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(425,12)
    assume true;
    assume true;
    assert {:id "id728"} base#0 != 0;
    assume true;
    $rhs#0 := Div(n#0, base#0);
    assert {:id "id730"} base#0 != 0;
    assume true;
    $rhs#1 := Mod(n#0, base#0);
    d#0 := $rhs#0;
    m#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(426,3)
    assume true;
    assert {:id "id734"} Mul(base#0, d#0) + m#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(427,3)
    if (LitInt(0) <= m#0)
    {
    }

    assume true;
    if (*)
    {
        // ----- assert statement proof ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(427,3)
        assert {:id "id735"} {:subsumption 0} LitInt(0) <= m#0;
        assert {:id "id736"} {:subsumption 0} m#0 < base#0;
        assume false;
    }

    $Heap_at_0 := $Heap;
    ##$Heap_at_0#m#0 := m#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(429,10)
    assume true;
    assume true;
    n'#0 := n#0 + Mul(base#0, k#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(430,14)
    assume true;
    assume true;
    assert {:id "id738"} base#0 != 0;
    assume true;
    $rhs#2 := Div(n'#0, base#0);
    assert {:id "id740"} base#0 != 0;
    assume true;
    $rhs#3 := Mod(n'#0, base#0);
    d'#0 := $rhs#2;
    m'#0 := $rhs#3;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(431,3)
    assume true;
    assert {:id "id744"} Mul(base#0, d'#0) + m'#0 == n'#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(432,3)
    if (LitInt(0) <= m'#0)
    {
    }

    assume true;
    if (*)
    {
        // ----- assert statement proof ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(432,3)
        assert {:id "id745"} {:subsumption 0} LitInt(0) <= m'#0;
        assert {:id "id746"} {:subsumption 0} m'#0 < base#0;
        assume false;
    }

    $Heap_at_1 := $Heap;
    ##$Heap_at_1#m'#0 := m'#0;
    if (*)
    {
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(435,5)
        assume LitInt(0) <= ##$Heap_at_0#m#0 && ##$Heap_at_0#m#0 < base#0;
        assume LitInt(0) <= ##$Heap_at_1#m'#0 && ##$Heap_at_1#m'#0 < base#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(434,3)
        if (0 - base#0 < m'#0 - m#0)
        {
        }

        assume true;
        assert {:id "id747"} {:subsumption 0} 0 - base#0 < m'#0 - m#0;
        assert {:id "id748"} {:subsumption 0} m'#0 - m#0 < base#0;
        assume {:id "id749"} 0 - base#0 < m'#0 - m#0 && m'#0 - m#0 < base#0;
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(434,3)
    if (0 - base#0 < m'#0 - m#0)
    {
    }

    assume true;
    assume true;
    assume true;
    assume {:id "id750"} 0 - base#0 < m'#0 - m#0 && m'#0 - m#0 < base#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(438,9)
    assume true;
    assume true;
    y#0 := m'#0 - Mul(base#0, k#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(439,23)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##0 := base#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := d#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := m#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := d'#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := y#0;
    call {:id "id752"} $rhs##0 := Call$$_module.__default.MulProperty(k##0, a##0, x##0, b##0, y##0);
    // TrCallStmt: After ProcessCallStmt
    p#0 := $rhs##0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(440,10)
    assume true;
    assume true;
    pk#0 := p#0 + k#0;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume {:id "id761"} true;
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assert line0 ==> line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assert {:id "id762"} {:subsumption 0} Lit(true) ==> y#0 - m#0 == Mul(base#0, p#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume {:id "id759"} y#0 - m#0 == Mul(base#0, p#0);
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assert {:id "id760"} {:subsumption 0} y#0 - m#0 == Mul(base#0, p#0)
           ==> m'#0 - Mul(base#0, k#0) - m#0 == Mul(base#0, p#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume {:id "id757"} m'#0 - Mul(base#0, k#0) - m#0 == Mul(base#0, p#0);
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assert line2 ==> line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assert {:id "id758"} {:subsumption 0} m'#0 - Mul(base#0, k#0) - m#0 == Mul(base#0, p#0)
           ==> m'#0 - m#0 == Mul(base#0, p#0) + Mul(base#0, k#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume {:id "id755"} m'#0 - m#0 == Mul(base#0, p#0) + Mul(base#0, k#0);
        // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assume true;
        // ----- assert line3 ==> line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(441,3)
        assert {:id "id756"} {:subsumption 0} m'#0 - m#0 == Mul(base#0, p#0) + Mul(base#0, k#0)
           ==> m'#0 - m#0 == Mul(base#0, pk#0);
        assume false;
    }

    assume {:id "id763"} true ==> m'#0 - m#0 == Mul(base#0, pk#0);
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(452,3)
    if (*)
    {
        assume true;
        assume {:id "id772"} pk#0 < 0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(454,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##4_0 := base#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##4_0 := pk#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##4_0 := LitInt(-1);
        call {:id "id773"} Call$$_module.__default.MulIsMonotonic(a##4_0, x##4_0, y##4_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(455,5)
        assume true;
        assert {:id "id774"} Mul(base#0, pk#0) <= 0 - base#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(456,5)
        assume true;
        assert {:id "id775"} Lit(false);
    }
    else if (*)
    {
        assume true;
        assume {:id "id768"} 0 < pk#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(458,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##3_0 := base#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##3_0 := LitInt(1);
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##3_0 := pk#0;
        call {:id "id769"} Call$$_module.__default.MulIsMonotonic(a##3_0, x##3_0, y##3_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(459,5)
        assume true;
        assert {:id "id770"} base#0 <= Mul(base#0, pk#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(460,5)
        assume true;
        assert {:id "id771"} Lit(false);
    }
    else if (*)
    {
        assume true;
        assume {:id "id765"} pk#0 == LitInt(0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(462,5)
        assume true;
        assert {:id "id766"} Mul(base#0, pk#0) == LitInt(0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(463,5)
        assume true;
        assert {:id "id767"} m'#0 == m#0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume 0 <= pk#0 && pk#0 <= 0 && pk#0 != LitInt(0);
        assert {:id "id764"} false;
    }
}



procedure {:verboseName "MulIsMonotonic (well-formedness)"} CheckWellFormed$$_module.__default.MulIsMonotonic(a#0: int, x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MulIsMonotonic (call)"} Call$$_module.__default.MulIsMonotonic(a#0: int, x#0: int, y#0: int);
  // user-defined preconditions
  requires {:id "id779"} LitInt(0) <= a#0;
  requires {:id "id780"} x#0 <= y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id781"} Mul(a#0, x#0) <= Mul(a#0, y#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MulIsMonotonic (correctness)"} Impl$$_module.__default.MulIsMonotonic(a#0: int, x#0: int, y#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id782"} LitInt(0) <= a#0;
  requires {:id "id783"} x#0 <= y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id784"} Mul(a#0, x#0) <= Mul(a#0, y#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MulIsMonotonic (correctness)"} Impl$$_module.__default.MulIsMonotonic(a#0: int, x#0: int, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MulIsMonotonic, Impl$$_module.__default.MulIsMonotonic
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "ModNoop (well-formedness)"} CheckWellFormed$$_module.__default.ModNoop(a#0: int, b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ModNoop (well-formedness)"} CheckWellFormed$$_module.__default.ModNoop(a#0: int, b#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: ModNoop, CheckWellFormed$$_module.__default.ModNoop
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= a#0)
    {
    }

    assume {:id "id785"} LitInt(0) <= a#0 && a#0 < b#0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id786"} b#0 != 0;
    assume {:id "id787"} Mod(a#0, b#0) == a#0;
}



procedure {:verboseName "ModNoop (call)"} Call$$_module.__default.ModNoop(a#0: int, b#0: int);
  // user-defined preconditions
  requires {:id "id788"} LitInt(0) <= a#0;
  requires {:id "id789"} a#0 < b#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id790"} Mod(a#0, b#0) == a#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MulProperty (well-formedness)"} CheckWellFormed$$_module.__default.MulProperty(k#0: int, a#0: int, x#0: int, b#0: int, y#0: int) returns (p#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MulProperty (call)"} Call$$_module.__default.MulProperty(k#0: int, a#0: int, x#0: int, b#0: int, y#0: int) returns (p#0: int);
  // user-defined preconditions
  requires {:id "id794"} 0 < k#0;
  requires {:id "id795"} Mul(k#0, a#0) + x#0 == Mul(k#0, b#0) + y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id796"} y#0 - x#0 == Mul(k#0, p#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MulProperty (correctness)"} Impl$$_module.__default.MulProperty(k#0: int, a#0: int, x#0: int, b#0: int, y#0: int)
   returns (p#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id797"} 0 < k#0;
  requires {:id "id798"} Mul(k#0, a#0) + x#0 == Mul(k#0, b#0) + y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id799"} y#0 - x#0 == Mul(k#0, p#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MulProperty (correctness)"} Impl$$_module.__default.MulProperty(k#0: int, a#0: int, x#0: int, b#0: int, y#0: int)
   returns (p#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MulProperty, Impl$$_module.__default.MulProperty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        assume true;
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        assume true;
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        assume true;
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        assert {:id "id801"} {:subsumption 0} (Mul(k#0, a#0) + x#0
           == Mul(k#0, b#0) + y#0)
           == 
          (Mul(k#0, a#0) - Mul(k#0, b#0)
           == y#0 - x#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        assume true;
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        push;
        pop;
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        assume true;
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(482,3)
        assert {:id "id800"} {:subsumption 0} (Mul(k#0, a#0) - Mul(k#0, b#0)
           == y#0 - x#0)
           == 
          (Mul(k#0, a#0 - b#0)
           == y#0 - x#0);
        assume false;
    }

    assume {:id "id802"} (Mul(k#0, a#0) + x#0
       == Mul(k#0, b#0) + y#0)
       == 
      (Mul(k#0, a#0 - b#0)
       == y#0 - x#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/NumberRepresentations.dfy(487,5)
    assume true;
    assume true;
    p#0 := a#0 - b#0;
}



procedure {:verboseName "MulInverse (well-formedness)"} CheckWellFormed$$_module.__default.MulInverse(x#0: int, a#0: int, b#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MulInverse (call)"} Call$$_module.__default.MulInverse(x#0: int, a#0: int, b#0: int, y#0: int);
  // user-defined preconditions
  requires {:id "id807"} x#0 != 0;
  requires {:id "id808"} Mul(x#0, a#0) + y#0 == Mul(x#0, b#0) + y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id809"} a#0 == b#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MulInverse (correctness)"} Impl$$_module.__default.MulInverse(x#0: int, a#0: int, b#0: int, y#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id810"} x#0 != 0;
  requires {:id "id811"} Mul(x#0, a#0) + y#0 == Mul(x#0, b#0) + y#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id812"} a#0 == b#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MulInverse (correctness)"} Impl$$_module.__default.MulInverse(x#0: int, a#0: int, b#0: int, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MulInverse, Impl$$_module.__default.MulInverse
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



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

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;
