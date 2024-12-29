// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy

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

// Box/unbox axiom for bv7
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(7)) } 
  $IsBox(bx, TBitvector(7))
     ==> $Box($Unbox(bx): bv7) == bx && $Is($Unbox(bx): bv7, TBitvector(7)));

axiom (forall v: bv7 :: { $Is(v, TBitvector(7)) } $Is(v, TBitvector(7)));

axiom (forall v: bv7, heap: Heap :: 
  { $IsAlloc(v, TBitvector(7), heap) } 
  $IsAlloc(v, TBitvector(7), heap));

function {:bvbuiltin "bvand"} and_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvor"} or_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvxor"} xor_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvnot"} not_bv7(bv7) : bv7;

function {:bvbuiltin "bvadd"} add_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvsub"} sub_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvmul"} mul_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvudiv"} div_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvurem"} mod_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvult"} lt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvule"} le_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvuge"} ge_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvugt"} gt_bv7(bv7, bv7) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "bvlshr"} RightShift_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv7(bv7, bv7) : bv7;

function {:bvbuiltin "(_ int2bv 7)"} nat_to_bv7(int) : bv7;

function {:bvbuiltin "bv2int"} smt_nat_from_bv7(bv7) : int;

function nat_from_bv7(bv7) : int;

axiom (forall b: bv7 :: 
  { nat_from_bv7(b) } 
  0 <= nat_from_bv7(b)
     && nat_from_bv7(b) < 128
     && nat_from_bv7(b) == smt_nat_from_bv7(b));

// Box/unbox axiom for bv137
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(137)) } 
  $IsBox(bx, TBitvector(137))
     ==> $Box($Unbox(bx): bv137) == bx && $Is($Unbox(bx): bv137, TBitvector(137)));

axiom (forall v: bv137 :: { $Is(v, TBitvector(137)) } $Is(v, TBitvector(137)));

axiom (forall v: bv137, heap: Heap :: 
  { $IsAlloc(v, TBitvector(137), heap) } 
  $IsAlloc(v, TBitvector(137), heap));

function {:bvbuiltin "bvand"} and_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvor"} or_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvxor"} xor_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvnot"} not_bv137(bv137) : bv137;

function {:bvbuiltin "bvadd"} add_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvsub"} sub_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvmul"} mul_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvudiv"} div_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvurem"} mod_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvult"} lt_bv137(bv137, bv137) : bool;

function {:bvbuiltin "bvule"} le_bv137(bv137, bv137) : bool;

function {:bvbuiltin "bvuge"} ge_bv137(bv137, bv137) : bool;

function {:bvbuiltin "bvugt"} gt_bv137(bv137, bv137) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "bvlshr"} RightShift_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv137(bv137, bv137) : bv137;

function {:bvbuiltin "(_ int2bv 137)"} nat_to_bv137(int) : bv137;

function {:bvbuiltin "bv2int"} smt_nat_from_bv137(bv137) : int;

function nat_from_bv137(bv137) : int;

axiom (forall b: bv137 :: 
  { nat_from_bv137(b) } 
  0 <= nat_from_bv137(b)
     && nat_from_bv137(b) < 174224571863520493293247799005065324265472
     && nat_from_bv137(b) == smt_nat_from_bv137(b));

function {:inline} and_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} or_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} xor_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} not_bv0(Bv0) : Bv0
{
  0
}

function {:inline} add_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} sub_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} mul_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} div_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} mod_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} lt_bv0(Bv0, Bv0) : bool
{
  false
}

function {:inline} le_bv0(Bv0, Bv0) : bool
{
  true
}

function {:inline} ge_bv0(Bv0, Bv0) : bool
{
  true
}

function {:inline} gt_bv0(Bv0, Bv0) : bool
{
  false
}

function {:inline} LeftShift_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} RightShift_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} LeftRotate_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} RightRotate_bv0(Bv0, Bv0) : Bv0
{
  0
}

function {:inline} nat_to_bv0(int) : Bv0
{
  0
}

function {:inline} nat_from_bv0(Bv0) : int
{
  0
}

// Box/unbox axiom for bv10
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(10)) } 
  $IsBox(bx, TBitvector(10))
     ==> $Box($Unbox(bx): bv10) == bx && $Is($Unbox(bx): bv10, TBitvector(10)));

axiom (forall v: bv10 :: { $Is(v, TBitvector(10)) } $Is(v, TBitvector(10)));

axiom (forall v: bv10, heap: Heap :: 
  { $IsAlloc(v, TBitvector(10), heap) } 
  $IsAlloc(v, TBitvector(10), heap));

function {:bvbuiltin "bvand"} and_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvor"} or_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvxor"} xor_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvnot"} not_bv10(bv10) : bv10;

function {:bvbuiltin "bvadd"} add_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvsub"} sub_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvmul"} mul_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvudiv"} div_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvurem"} mod_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvult"} lt_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvule"} le_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvuge"} ge_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvugt"} gt_bv10(bv10, bv10) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "bvlshr"} RightShift_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv10(bv10, bv10) : bv10;

function {:bvbuiltin "(_ int2bv 10)"} nat_to_bv10(int) : bv10;

function {:bvbuiltin "bv2int"} smt_nat_from_bv10(bv10) : int;

function nat_from_bv10(bv10) : int;

axiom (forall b: bv10 :: 
  { nat_from_bv10(b) } 
  0 <= nat_from_bv10(b)
     && nat_from_bv10(b) < 1024
     && nat_from_bv10(b) == smt_nat_from_bv10(b));

// Box/unbox axiom for bv60
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(60)) } 
  $IsBox(bx, TBitvector(60))
     ==> $Box($Unbox(bx): bv60) == bx && $Is($Unbox(bx): bv60, TBitvector(60)));

axiom (forall v: bv60 :: { $Is(v, TBitvector(60)) } $Is(v, TBitvector(60)));

axiom (forall v: bv60, heap: Heap :: 
  { $IsAlloc(v, TBitvector(60), heap) } 
  $IsAlloc(v, TBitvector(60), heap));

function {:bvbuiltin "bvand"} and_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvor"} or_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvxor"} xor_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvnot"} not_bv60(bv60) : bv60;

function {:bvbuiltin "bvadd"} add_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvsub"} sub_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvmul"} mul_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvudiv"} div_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvurem"} mod_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvult"} lt_bv60(bv60, bv60) : bool;

function {:bvbuiltin "bvule"} le_bv60(bv60, bv60) : bool;

function {:bvbuiltin "bvuge"} ge_bv60(bv60, bv60) : bool;

function {:bvbuiltin "bvugt"} gt_bv60(bv60, bv60) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "bvlshr"} RightShift_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv60(bv60, bv60) : bv60;

function {:bvbuiltin "(_ int2bv 60)"} nat_to_bv60(int) : bv60;

function {:bvbuiltin "bv2int"} smt_nat_from_bv60(bv60) : int;

function nat_from_bv60(bv60) : int;

axiom (forall b: bv60 :: 
  { nat_from_bv60(b) } 
  0 <= nat_from_bv60(b)
     && nat_from_bv60(b) < 1152921504606846976
     && nat_from_bv60(b) == smt_nat_from_bv60(b));

// Box/unbox axiom for bv67
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(67)) } 
  $IsBox(bx, TBitvector(67))
     ==> $Box($Unbox(bx): bv67) == bx && $Is($Unbox(bx): bv67, TBitvector(67)));

axiom (forall v: bv67 :: { $Is(v, TBitvector(67)) } $Is(v, TBitvector(67)));

axiom (forall v: bv67, heap: Heap :: 
  { $IsAlloc(v, TBitvector(67), heap) } 
  $IsAlloc(v, TBitvector(67), heap));

function {:bvbuiltin "bvand"} and_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvor"} or_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvxor"} xor_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvnot"} not_bv67(bv67) : bv67;

function {:bvbuiltin "bvadd"} add_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvsub"} sub_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvmul"} mul_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvudiv"} div_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvurem"} mod_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvult"} lt_bv67(bv67, bv67) : bool;

function {:bvbuiltin "bvule"} le_bv67(bv67, bv67) : bool;

function {:bvbuiltin "bvuge"} ge_bv67(bv67, bv67) : bool;

function {:bvbuiltin "bvugt"} gt_bv67(bv67, bv67) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "bvlshr"} RightShift_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv67(bv67, bv67) : bv67;

function {:bvbuiltin "(_ int2bv 67)"} nat_to_bv67(int) : bv67;

function {:bvbuiltin "bv2int"} smt_nat_from_bv67(bv67) : int;

function nat_from_bv67(bv67) : int;

axiom (forall b: bv67 :: 
  { nat_from_bv67(b) } 
  0 <= nat_from_bv67(b)
     && nat_from_bv67(b) < 147573952589676412928
     && nat_from_bv67(b) == smt_nat_from_bv67(b));

// Box/unbox axiom for bv32
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(32)) } 
  $IsBox(bx, TBitvector(32))
     ==> $Box($Unbox(bx): bv32) == bx && $Is($Unbox(bx): bv32, TBitvector(32)));

axiom (forall v: bv32 :: { $Is(v, TBitvector(32)) } $Is(v, TBitvector(32)));

axiom (forall v: bv32, heap: Heap :: 
  { $IsAlloc(v, TBitvector(32), heap) } 
  $IsAlloc(v, TBitvector(32), heap));

function {:bvbuiltin "bvand"} and_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} or_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvxor"} xor_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvnot"} not_bv32(bv32) : bv32;

function {:bvbuiltin "bvadd"} add_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} sub_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} mul_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} div_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvurem"} mod_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} lt_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvule"} le_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvuge"} ge_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvugt"} gt_bv32(bv32, bv32) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} RightShift_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv32(bv32, bv32) : bv32;

function {:bvbuiltin "(_ int2bv 32)"} nat_to_bv32(int) : bv32;

function {:bvbuiltin "bv2int"} smt_nat_from_bv32(bv32) : int;

function nat_from_bv32(bv32) : int;

axiom (forall b: bv32 :: 
  { nat_from_bv32(b) } 
  0 <= nat_from_bv32(b)
     && nat_from_bv32(b) < 4294967296
     && nat_from_bv32(b) == smt_nat_from_bv32(b));

// Box/unbox axiom for bv2
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(2)) } 
  $IsBox(bx, TBitvector(2))
     ==> $Box($Unbox(bx): bv2) == bx && $Is($Unbox(bx): bv2, TBitvector(2)));

axiom (forall v: bv2 :: { $Is(v, TBitvector(2)) } $Is(v, TBitvector(2)));

axiom (forall v: bv2, heap: Heap :: 
  { $IsAlloc(v, TBitvector(2), heap) } 
  $IsAlloc(v, TBitvector(2), heap));

function {:bvbuiltin "bvand"} and_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvor"} or_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvxor"} xor_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvnot"} not_bv2(bv2) : bv2;

function {:bvbuiltin "bvadd"} add_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvsub"} sub_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvmul"} mul_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvudiv"} div_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvurem"} mod_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvult"} lt_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvule"} le_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvuge"} ge_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvugt"} gt_bv2(bv2, bv2) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "bvlshr"} RightShift_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv2(bv2, bv2) : bv2;

function {:bvbuiltin "(_ int2bv 2)"} nat_to_bv2(int) : bv2;

function {:bvbuiltin "bv2int"} smt_nat_from_bv2(bv2) : int;

function nat_from_bv2(bv2) : int;

axiom (forall b: bv2 :: 
  { nat_from_bv2(b) } 
  0 <= nat_from_bv2(b)
     && nat_from_bv2(b) < 4
     && nat_from_bv2(b) == smt_nat_from_bv2(b));

// Box/unbox axiom for bv5
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(5)) } 
  $IsBox(bx, TBitvector(5))
     ==> $Box($Unbox(bx): bv5) == bx && $Is($Unbox(bx): bv5, TBitvector(5)));

axiom (forall v: bv5 :: { $Is(v, TBitvector(5)) } $Is(v, TBitvector(5)));

axiom (forall v: bv5, heap: Heap :: 
  { $IsAlloc(v, TBitvector(5), heap) } 
  $IsAlloc(v, TBitvector(5), heap));

function {:bvbuiltin "bvand"} and_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvor"} or_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvxor"} xor_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvnot"} not_bv5(bv5) : bv5;

function {:bvbuiltin "bvadd"} add_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvsub"} sub_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvmul"} mul_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvudiv"} div_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvurem"} mod_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvult"} lt_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvule"} le_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvuge"} ge_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvugt"} gt_bv5(bv5, bv5) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "bvlshr"} RightShift_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv5(bv5, bv5) : bv5;

function {:bvbuiltin "(_ int2bv 5)"} nat_to_bv5(int) : bv5;

function {:bvbuiltin "bv2int"} smt_nat_from_bv5(bv5) : int;

function nat_from_bv5(bv5) : int;

axiom (forall b: bv5 :: 
  { nat_from_bv5(b) } 
  0 <= nat_from_bv5(b)
     && nat_from_bv5(b) < 32
     && nat_from_bv5(b) == smt_nat_from_bv5(b));

// Box/unbox axiom for bv8
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(8)) } 
  $IsBox(bx, TBitvector(8))
     ==> $Box($Unbox(bx): bv8) == bx && $Is($Unbox(bx): bv8, TBitvector(8)));

axiom (forall v: bv8 :: { $Is(v, TBitvector(8)) } $Is(v, TBitvector(8)));

axiom (forall v: bv8, heap: Heap :: 
  { $IsAlloc(v, TBitvector(8), heap) } 
  $IsAlloc(v, TBitvector(8), heap));

function {:bvbuiltin "bvand"} and_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvor"} or_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvxor"} xor_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvnot"} not_bv8(bv8) : bv8;

function {:bvbuiltin "bvadd"} add_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvsub"} sub_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvmul"} mul_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvudiv"} div_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvurem"} mod_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvult"} lt_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvule"} le_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvuge"} ge_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvugt"} gt_bv8(bv8, bv8) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "bvlshr"} RightShift_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv8(bv8, bv8) : bv8;

function {:bvbuiltin "(_ int2bv 8)"} nat_to_bv8(int) : bv8;

function {:bvbuiltin "bv2int"} smt_nat_from_bv8(bv8) : int;

function nat_from_bv8(bv8) : int;

axiom (forall b: bv8 :: 
  { nat_from_bv8(b) } 
  0 <= nat_from_bv8(b)
     && nat_from_bv8(b) < 256
     && nat_from_bv8(b) == smt_nat_from_bv8(b));

// Box/unbox axiom for bv6
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(6)) } 
  $IsBox(bx, TBitvector(6))
     ==> $Box($Unbox(bx): bv6) == bx && $Is($Unbox(bx): bv6, TBitvector(6)));

axiom (forall v: bv6 :: { $Is(v, TBitvector(6)) } $Is(v, TBitvector(6)));

axiom (forall v: bv6, heap: Heap :: 
  { $IsAlloc(v, TBitvector(6), heap) } 
  $IsAlloc(v, TBitvector(6), heap));

function {:bvbuiltin "bvand"} and_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvor"} or_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvxor"} xor_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvnot"} not_bv6(bv6) : bv6;

function {:bvbuiltin "bvadd"} add_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvsub"} sub_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvmul"} mul_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvudiv"} div_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvurem"} mod_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvult"} lt_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvule"} le_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvuge"} ge_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvugt"} gt_bv6(bv6, bv6) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "bvlshr"} RightShift_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv6(bv6, bv6) : bv6;

function {:bvbuiltin "(_ int2bv 6)"} nat_to_bv6(int) : bv6;

function {:bvbuiltin "bv2int"} smt_nat_from_bv6(bv6) : int;

function nat_from_bv6(bv6) : int;

axiom (forall b: bv6 :: 
  { nat_from_bv6(b) } 
  0 <= nat_from_bv6(b)
     && nat_from_bv6(b) < 64
     && nat_from_bv6(b) == smt_nat_from_bv6(b));

// Box/unbox axiom for bv3
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(3)) } 
  $IsBox(bx, TBitvector(3))
     ==> $Box($Unbox(bx): bv3) == bx && $Is($Unbox(bx): bv3, TBitvector(3)));

axiom (forall v: bv3 :: { $Is(v, TBitvector(3)) } $Is(v, TBitvector(3)));

axiom (forall v: bv3, heap: Heap :: 
  { $IsAlloc(v, TBitvector(3), heap) } 
  $IsAlloc(v, TBitvector(3), heap));

function {:bvbuiltin "bvand"} and_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvor"} or_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvxor"} xor_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvnot"} not_bv3(bv3) : bv3;

function {:bvbuiltin "bvadd"} add_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvsub"} sub_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvmul"} mul_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvudiv"} div_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvurem"} mod_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvult"} lt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvule"} le_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvuge"} ge_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvugt"} gt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvlshr"} RightShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "(_ int2bv 3)"} nat_to_bv3(int) : bv3;

function {:bvbuiltin "bv2int"} smt_nat_from_bv3(bv3) : int;

function nat_from_bv3(bv3) : int;

axiom (forall b: bv3 :: 
  { nat_from_bv3(b) } 
  0 <= nat_from_bv3(b)
     && nat_from_bv3(b) < 8
     && nat_from_bv3(b) == smt_nat_from_bv3(b));

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

function Tclass._System.___hFunc11(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc11: TyTag;

// Tclass._System.___hFunc11 Tag
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tag(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       == Tagclass._System.___hFunc11
     && TagFamily(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       == tytagFamily$_#Func11);

function Tclass._System.___hFunc11_0(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 0
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_0(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T0);

function Tclass._System.___hFunc11_1(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 1
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_1(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T1);

function Tclass._System.___hFunc11_2(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 2
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_2(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T2);

function Tclass._System.___hFunc11_3(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 3
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_3(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T3);

function Tclass._System.___hFunc11_4(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 4
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_4(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T4);

function Tclass._System.___hFunc11_5(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_5(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T5);

function Tclass._System.___hFunc11_6(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 6
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_6(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T6);

function Tclass._System.___hFunc11_7(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 7
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_7(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T7);

function Tclass._System.___hFunc11_8(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 8
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_8(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T8);

function Tclass._System.___hFunc11_9(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 9
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_9(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T9);

function Tclass._System.___hFunc11_10(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 10
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_10(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T10);

function Tclass._System.___hFunc11_11(Ty) : Ty;

// Tclass._System.___hFunc11 injectivity 11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hFunc11_11(Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)) } 
  $IsBox(bx, 
      Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)));

function Handle11([Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Box, 
    [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]bool, 
    [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Set)
   : HandleType;

function Apply11(Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Heap, 
    HandleType, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box)
   : Box;

function Requires11(Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Heap, 
    HandleType, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box)
   : bool;

function Reads11(Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Ty, 
    Heap, 
    HandleType, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box)
   : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { Apply11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      heap, 
      Handle11(h, r, rd), 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  Apply11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      heap, 
      Handle11(h, r, rd), 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10)
     == h[heap, bx0, bx1, bx2, bx3, bx4, bx5, bx6, bx7, bx8, bx9, bx10]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { Requires11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      heap, 
      Handle11(h, r, rd), 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  r[heap, bx0, bx1, bx2, bx3, bx4, bx5, bx6, bx7, bx8, bx9, bx10]
     ==> Requires11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      heap, 
      Handle11(h, r, rd), 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box, 
    bx: Box :: 
  { Set#IsMember(Reads11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        heap, 
        Handle11(h, r, rd), 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10), 
      bx) } 
  Set#IsMember(Reads11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        heap, 
        Handle11(h, r, rd), 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10), 
      bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3, bx4, bx5, bx6, bx7, bx8, bx9, bx10], bx));

function {:inline} Requires11#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box)
   : bool
{
  true
}

function {:inline} Reads11#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box)
   : bool
{
  true
}

// frame axiom for Reads11
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { $HeapSucc(h0, h1), Reads11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      h1, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads11(t0, 
                t1, 
                t2, 
                t3, 
                t4, 
                t5, 
                t6, 
                t7, 
                t8, 
                t9, 
                t10, 
                t11, 
                h0, 
                f, 
                bx0, 
                bx1, 
                bx2, 
                bx3, 
                bx4, 
                bx5, 
                bx6, 
                bx7, 
                bx8, 
                bx9, 
                bx10), 
              $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h0, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10)
       == Reads11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h1, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10));

// frame axiom for Reads11
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { $HeapSucc(h0, h1), Reads11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      h1, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads11(t0, 
                t1, 
                t2, 
                t3, 
                t4, 
                t5, 
                t6, 
                t7, 
                t8, 
                t9, 
                t10, 
                t11, 
                h1, 
                f, 
                bx0, 
                bx1, 
                bx2, 
                bx3, 
                bx4, 
                bx5, 
                bx6, 
                bx7, 
                bx8, 
                bx9, 
                bx10), 
              $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h0, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10)
       == Reads11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h1, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10));

// frame axiom for Requires11
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { $HeapSucc(h0, h1), Requires11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      h1, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads11(t0, 
                t1, 
                t2, 
                t3, 
                t4, 
                t5, 
                t6, 
                t7, 
                t8, 
                t9, 
                t10, 
                t11, 
                h0, 
                f, 
                bx0, 
                bx1, 
                bx2, 
                bx3, 
                bx4, 
                bx5, 
                bx6, 
                bx7, 
                bx8, 
                bx9, 
                bx10), 
              $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h0, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10)
       == Requires11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h1, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10));

// frame axiom for Requires11
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { $HeapSucc(h0, h1), Requires11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      h1, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads11(t0, 
                t1, 
                t2, 
                t3, 
                t4, 
                t5, 
                t6, 
                t7, 
                t8, 
                t9, 
                t10, 
                t11, 
                h1, 
                f, 
                bx0, 
                bx1, 
                bx2, 
                bx3, 
                bx4, 
                bx5, 
                bx6, 
                bx7, 
                bx8, 
                bx9, 
                bx10), 
              $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h0, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10)
       == Requires11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h1, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10));

// frame axiom for Apply11
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { $HeapSucc(h0, h1), Apply11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      h1, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads11(t0, 
                t1, 
                t2, 
                t3, 
                t4, 
                t5, 
                t6, 
                t7, 
                t8, 
                t9, 
                t10, 
                t11, 
                h0, 
                f, 
                bx0, 
                bx1, 
                bx2, 
                bx3, 
                bx4, 
                bx5, 
                bx6, 
                bx7, 
                bx8, 
                bx9, 
                bx10), 
              $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h0, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10)
       == Apply11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h1, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10));

// frame axiom for Apply11
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { $HeapSucc(h0, h1), Apply11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      h1, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads11(t0, 
                t1, 
                t2, 
                t3, 
                t4, 
                t5, 
                t6, 
                t7, 
                t8, 
                t9, 
                t10, 
                t11, 
                h1, 
                f, 
                bx0, 
                bx1, 
                bx2, 
                bx3, 
                bx4, 
                bx5, 
                bx6, 
                bx7, 
                bx8, 
                bx9, 
                bx10), 
              $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h0, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10)
       == Apply11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        h1, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10));

// empty-reads property for Reads11 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { Reads11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      $OneHeap, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10), $IsGoodHeap(heap) } 
    { Reads11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      heap, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
     ==> (Set#Equal(Reads11(t0, 
          t1, 
          t2, 
          t3, 
          t4, 
          t5, 
          t6, 
          t7, 
          t8, 
          t9, 
          t10, 
          t11, 
          $OneHeap, 
          f, 
          bx0, 
          bx1, 
          bx2, 
          bx3, 
          bx4, 
          bx5, 
          bx6, 
          bx7, 
          bx8, 
          bx9, 
          bx10), 
        Set#Empty(): Set)
       <==> Set#Equal(Reads11(t0, 
          t1, 
          t2, 
          t3, 
          t4, 
          t5, 
          t6, 
          t7, 
          t8, 
          t9, 
          t10, 
          t11, 
          heap, 
          f, 
          bx0, 
          bx1, 
          bx2, 
          bx3, 
          bx4, 
          bx5, 
          bx6, 
          bx7, 
          bx8, 
          bx9, 
          bx10), 
        Set#Empty(): Set)));

// empty-reads property for Requires11
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx5: Box, 
    bx6: Box, 
    bx7: Box, 
    bx8: Box, 
    bx9: Box, 
    bx10: Box :: 
  { Requires11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      $OneHeap, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10), $IsGoodHeap(heap) } 
    { Requires11(t0, 
      t1, 
      t2, 
      t3, 
      t4, 
      t5, 
      t6, 
      t7, 
      t8, 
      t9, 
      t10, 
      t11, 
      heap, 
      f, 
      bx0, 
      bx1, 
      bx2, 
      bx3, 
      bx4, 
      bx5, 
      bx6, 
      bx7, 
      bx8, 
      bx9, 
      bx10) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $IsBox(bx5, t5)
       && $IsBox(bx6, t6)
       && $IsBox(bx7, t7)
       && $IsBox(bx8, t8)
       && $IsBox(bx9, t9)
       && $IsBox(bx10, t10)
       && $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
       && Set#Equal(Reads11(t0, 
          t1, 
          t2, 
          t3, 
          t4, 
          t5, 
          t6, 
          t7, 
          t8, 
          t9, 
          t10, 
          t11, 
          $OneHeap, 
          f, 
          bx0, 
          bx1, 
          bx2, 
          bx3, 
          bx4, 
          bx5, 
          bx6, 
          bx7, 
          bx8, 
          bx9, 
          bx10), 
        Set#Empty(): Set)
     ==> Requires11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        $OneHeap, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10)
       == Requires11(t0, 
        t1, 
        t2, 
        t3, 
        t4, 
        t5, 
        t6, 
        t7, 
        t8, 
        t9, 
        t10, 
        t11, 
        heap, 
        f, 
        bx0, 
        bx1, 
        bx2, 
        bx3, 
        bx4, 
        bx5, 
        bx6, 
        bx7, 
        bx8, 
        bx9, 
        bx10));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty :: 
  { $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11)) } 
  $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
     <==> (forall h: Heap, 
        bx0: Box, 
        bx1: Box, 
        bx2: Box, 
        bx3: Box, 
        bx4: Box, 
        bx5: Box, 
        bx6: Box, 
        bx7: Box, 
        bx8: Box, 
        bx9: Box, 
        bx10: Box :: 
      { Apply11(t0, 
          t1, 
          t2, 
          t3, 
          t4, 
          t5, 
          t6, 
          t7, 
          t8, 
          t9, 
          t10, 
          t11, 
          h, 
          f, 
          bx0, 
          bx1, 
          bx2, 
          bx3, 
          bx4, 
          bx5, 
          bx6, 
          bx7, 
          bx8, 
          bx9, 
          bx10) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && $IsBox(bx4, t4)
           && $IsBox(bx5, t5)
           && $IsBox(bx6, t6)
           && $IsBox(bx7, t7)
           && $IsBox(bx8, t8)
           && $IsBox(bx9, t9)
           && $IsBox(bx10, t10)
           && Requires11(t0, 
            t1, 
            t2, 
            t3, 
            t4, 
            t5, 
            t6, 
            t7, 
            t8, 
            t9, 
            t10, 
            t11, 
            h, 
            f, 
            bx0, 
            bx1, 
            bx2, 
            bx3, 
            bx4, 
            bx5, 
            bx6, 
            bx7, 
            bx8, 
            bx9, 
            bx10)
         ==> $IsBox(Apply11(t0, 
            t1, 
            t2, 
            t3, 
            t4, 
            t5, 
            t6, 
            t7, 
            t8, 
            t9, 
            t10, 
            t11, 
            h, 
            f, 
            bx0, 
            bx1, 
            bx2, 
            bx3, 
            bx4, 
            bx5, 
            bx6, 
            bx7, 
            bx8, 
            bx9, 
            bx10), 
          t11)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty, 
    u5: Ty, 
    u6: Ty, 
    u7: Ty, 
    u8: Ty, 
    u9: Ty, 
    u10: Ty, 
    u11: Ty :: 
  { $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11)), $Is(f, Tclass._System.___hFunc11(u0, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11)) } 
  $Is(f, Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11))
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
        { $IsBox(bx, u4) } { $IsBox(bx, t4) } 
        $IsBox(bx, u4) ==> $IsBox(bx, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, u5) } { $IsBox(bx, t5) } 
        $IsBox(bx, u5) ==> $IsBox(bx, t5))
       && (forall bx: Box :: 
        { $IsBox(bx, u6) } { $IsBox(bx, t6) } 
        $IsBox(bx, u6) ==> $IsBox(bx, t6))
       && (forall bx: Box :: 
        { $IsBox(bx, u7) } { $IsBox(bx, t7) } 
        $IsBox(bx, u7) ==> $IsBox(bx, t7))
       && (forall bx: Box :: 
        { $IsBox(bx, u8) } { $IsBox(bx, t8) } 
        $IsBox(bx, u8) ==> $IsBox(bx, t8))
       && (forall bx: Box :: 
        { $IsBox(bx, u9) } { $IsBox(bx, t9) } 
        $IsBox(bx, u9) ==> $IsBox(bx, t9))
       && (forall bx: Box :: 
        { $IsBox(bx, u10) } { $IsBox(bx, t10) } 
        $IsBox(bx, u10) ==> $IsBox(bx, t10))
       && (forall bx: Box :: 
        { $IsBox(bx, t11) } { $IsBox(bx, u11) } 
        $IsBox(bx, t11) ==> $IsBox(bx, u11))
     ==> $Is(f, Tclass._System.___hFunc11(u0, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h: Heap :: 
  { $IsAlloc(f, 
      Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11), 
      h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, 
        Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11), 
        h)
       <==> (forall bx0: Box, 
          bx1: Box, 
          bx2: Box, 
          bx3: Box, 
          bx4: Box, 
          bx5: Box, 
          bx6: Box, 
          bx7: Box, 
          bx8: Box, 
          bx9: Box, 
          bx10: Box :: 
        { Apply11(t0, 
            t1, 
            t2, 
            t3, 
            t4, 
            t5, 
            t6, 
            t7, 
            t8, 
            t9, 
            t10, 
            t11, 
            h, 
            f, 
            bx0, 
            bx1, 
            bx2, 
            bx3, 
            bx4, 
            bx5, 
            bx6, 
            bx7, 
            bx8, 
            bx9, 
            bx10) } 
          { Reads11(t0, 
            t1, 
            t2, 
            t3, 
            t4, 
            t5, 
            t6, 
            t7, 
            t8, 
            t9, 
            t10, 
            t11, 
            h, 
            f, 
            bx0, 
            bx1, 
            bx2, 
            bx3, 
            bx4, 
            bx5, 
            bx6, 
            bx7, 
            bx8, 
            bx9, 
            bx10) } 
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
             && 
            $IsBox(bx4, t4)
             && $IsAllocBox(bx4, t4, h)
             && 
            $IsBox(bx5, t5)
             && $IsAllocBox(bx5, t5, h)
             && 
            $IsBox(bx6, t6)
             && $IsAllocBox(bx6, t6, h)
             && 
            $IsBox(bx7, t7)
             && $IsAllocBox(bx7, t7, h)
             && 
            $IsBox(bx8, t8)
             && $IsAllocBox(bx8, t8, h)
             && 
            $IsBox(bx9, t9)
             && $IsAllocBox(bx9, t9, h)
             && 
            $IsBox(bx10, t10)
             && $IsAllocBox(bx10, t10, h)
             && Requires11(t0, 
              t1, 
              t2, 
              t3, 
              t4, 
              t5, 
              t6, 
              t7, 
              t8, 
              t9, 
              t10, 
              t11, 
              h, 
              f, 
              bx0, 
              bx1, 
              bx2, 
              bx3, 
              bx4, 
              bx5, 
              bx6, 
              bx7, 
              bx8, 
              bx9, 
              bx10)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads11(t0, 
                  t1, 
                  t2, 
                  t3, 
                  t4, 
                  t5, 
                  t6, 
                  t7, 
                  t8, 
                  t9, 
                  t10, 
                  t11, 
                  h, 
                  f, 
                  bx0, 
                  bx1, 
                  bx2, 
                  bx3, 
                  bx4, 
                  bx5, 
                  bx6, 
                  bx7, 
                  bx8, 
                  bx9, 
                  bx10), 
                $Box(r)) } 
            r != null
                 && Set#IsMember(Reads11(t0, 
                    t1, 
                    t2, 
                    t3, 
                    t4, 
                    t5, 
                    t6, 
                    t7, 
                    t8, 
                    t9, 
                    t10, 
                    t11, 
                    h, 
                    f, 
                    bx0, 
                    bx1, 
                    bx2, 
                    bx3, 
                    bx4, 
                    bx5, 
                    bx6, 
                    bx7, 
                    bx8, 
                    bx9, 
                    bx10), 
                  $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    t6: Ty, 
    t7: Ty, 
    t8: Ty, 
    t9: Ty, 
    t10: Ty, 
    t11: Ty, 
    h: Heap :: 
  { $IsAlloc(f, 
      Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11), 
      h) } 
  $IsGoodHeap(h)
       && $IsAlloc(f, 
        Tclass._System.___hFunc11(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11), 
        h)
     ==> (forall bx0: Box, 
        bx1: Box, 
        bx2: Box, 
        bx3: Box, 
        bx4: Box, 
        bx5: Box, 
        bx6: Box, 
        bx7: Box, 
        bx8: Box, 
        bx9: Box, 
        bx10: Box :: 
      { Apply11(t0, 
          t1, 
          t2, 
          t3, 
          t4, 
          t5, 
          t6, 
          t7, 
          t8, 
          t9, 
          t10, 
          t11, 
          h, 
          f, 
          bx0, 
          bx1, 
          bx2, 
          bx3, 
          bx4, 
          bx5, 
          bx6, 
          bx7, 
          bx8, 
          bx9, 
          bx10) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && $IsAllocBox(bx4, t4, h)
           && $IsAllocBox(bx5, t5, h)
           && $IsAllocBox(bx6, t6, h)
           && $IsAllocBox(bx7, t7, h)
           && $IsAllocBox(bx8, t8, h)
           && $IsAllocBox(bx9, t9, h)
           && $IsAllocBox(bx10, t10, h)
           && Requires11(t0, 
            t1, 
            t2, 
            t3, 
            t4, 
            t5, 
            t6, 
            t7, 
            t8, 
            t9, 
            t10, 
            t11, 
            h, 
            f, 
            bx0, 
            bx1, 
            bx2, 
            bx3, 
            bx4, 
            bx5, 
            bx6, 
            bx7, 
            bx8, 
            bx9, 
            bx10)
         ==> $IsAllocBox(Apply11(t0, 
            t1, 
            t2, 
            t3, 
            t4, 
            t5, 
            t6, 
            t7, 
            t8, 
            t9, 
            t10, 
            t11, 
            h, 
            f, 
            bx0, 
            bx1, 
            bx2, 
            bx3, 
            bx4, 
            bx5, 
            bx6, 
            bx7, 
            bx8, 
            bx9, 
            bx10), 
          t11, 
          h)));

function Tclass._System.___hPartialFunc11(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc11: TyTag;

// Tclass._System.___hPartialFunc11 Tag
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tag(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       == Tagclass._System.___hPartialFunc11
     && TagFamily(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       == tytagFamily$_#PartialFunc11);

function Tclass._System.___hPartialFunc11_0(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 0
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_0(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc11_1(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 1
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_1(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc11_2(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 2
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_2(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc11_3(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 3
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_3(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc11_4(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 4
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_4(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T4);

function Tclass._System.___hPartialFunc11_5(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_5(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T5);

function Tclass._System.___hPartialFunc11_6(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 6
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_6(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T6);

function Tclass._System.___hPartialFunc11_7(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 7
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_7(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T7);

function Tclass._System.___hPartialFunc11_8(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 8
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_8(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T8);

function Tclass._System.___hPartialFunc11_9(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 9
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_9(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T9);

function Tclass._System.___hPartialFunc11_10(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 10
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_10(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T10);

function Tclass._System.___hPartialFunc11_11(Ty) : Ty;

// Tclass._System.___hPartialFunc11 injectivity 11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hPartialFunc11_11(Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)) } 
  $IsBox(bx, 
      Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)));

// $Is axiom for subset type _System._#PartialFunc11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty, 
    f#0: HandleType :: 
  { $Is(f#0, 
      Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)) } 
  $Is(f#0, 
      Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     <==> $Is(f#0, 
        Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       && (forall x0#0: Box, 
          x1#0: Box, 
          x2#0: Box, 
          x3#0: Box, 
          x4#0: Box, 
          x5#0: Box, 
          x6#0: Box, 
          x7#0: Box, 
          x8#0: Box, 
          x9#0: Box, 
          x10#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
             && $IsBox(x5#0, #$T5)
             && $IsBox(x6#0, #$T6)
             && $IsBox(x7#0, #$T7)
             && $IsBox(x8#0, #$T8)
             && $IsBox(x9#0, #$T9)
             && $IsBox(x10#0, #$T10)
           ==> Set#Equal(Reads11(#$T0, 
              #$T1, 
              #$T2, 
              #$T3, 
              #$T4, 
              #$T5, 
              #$T6, 
              #$T7, 
              #$T8, 
              #$T9, 
              #$T10, 
              #$R, 
              $OneHeap, 
              f#0, 
              x0#0, 
              x1#0, 
              x2#0, 
              x3#0, 
              x4#0, 
              x5#0, 
              x6#0, 
              x7#0, 
              x8#0, 
              x9#0, 
              x10#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, 
      Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R), 
      $h) } 
  $IsAlloc(f#0, 
      Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R), 
      $h)
     <==> $IsAlloc(f#0, 
      Tclass._System.___hFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R), 
      $h));

function Tclass._System.___hTotalFunc11(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc11: TyTag;

// Tclass._System.___hTotalFunc11 Tag
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tag(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       == Tagclass._System.___hTotalFunc11
     && TagFamily(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       == tytagFamily$_#TotalFunc11);

function Tclass._System.___hTotalFunc11_0(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 0
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_0(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc11_1(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 1
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_1(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc11_2(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 2
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_2(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc11_3(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 3
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_3(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc11_4(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 4
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_4(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T4);

function Tclass._System.___hTotalFunc11_5(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_5(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T5);

function Tclass._System.___hTotalFunc11_6(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 6
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_6(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T6);

function Tclass._System.___hTotalFunc11_7(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 7
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_7(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T7);

function Tclass._System.___hTotalFunc11_8(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 8
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_8(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T8);

function Tclass._System.___hTotalFunc11_9(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 9
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_9(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T9);

function Tclass._System.___hTotalFunc11_10(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 10
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_10(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$T10);

function Tclass._System.___hTotalFunc11_11(Ty) : Ty;

// Tclass._System.___hTotalFunc11 injectivity 11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty :: 
  { Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R) } 
  Tclass._System.___hTotalFunc11_11(Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)) } 
  $IsBox(bx, 
      Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)));

// $Is axiom for subset type _System._#TotalFunc11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty, 
    f#0: HandleType :: 
  { $Is(f#0, 
      Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R)) } 
  $Is(f#0, 
      Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
     <==> $Is(f#0, 
        Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R))
       && (forall x0#0: Box, 
          x1#0: Box, 
          x2#0: Box, 
          x3#0: Box, 
          x4#0: Box, 
          x5#0: Box, 
          x6#0: Box, 
          x7#0: Box, 
          x8#0: Box, 
          x9#0: Box, 
          x10#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
             && $IsBox(x5#0, #$T5)
             && $IsBox(x6#0, #$T6)
             && $IsBox(x7#0, #$T7)
             && $IsBox(x8#0, #$T8)
             && $IsBox(x9#0, #$T9)
             && $IsBox(x10#0, #$T10)
           ==> Requires11(#$T0, 
            #$T1, 
            #$T2, 
            #$T3, 
            #$T4, 
            #$T5, 
            #$T6, 
            #$T7, 
            #$T8, 
            #$T9, 
            #$T10, 
            #$R, 
            $OneHeap, 
            f#0, 
            x0#0, 
            x1#0, 
            x2#0, 
            x3#0, 
            x4#0, 
            x5#0, 
            x6#0, 
            x7#0, 
            x8#0, 
            x9#0, 
            x10#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc11
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$T5: Ty, 
    #$T6: Ty, 
    #$T7: Ty, 
    #$T8: Ty, 
    #$T9: Ty, 
    #$T10: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, 
      Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R), 
      $h) } 
  $IsAlloc(f#0, 
      Tclass._System.___hTotalFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R), 
      $h)
     <==> $IsAlloc(f#0, 
      Tclass._System.___hPartialFunc11(#$T0, #$T1, #$T2, #$T3, #$T4, #$T5, #$T6, #$T7, #$T8, #$T9, #$T10, #$R), 
      $h));

const unique class._module.__default: ClassName;

procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M (call)"} Call$$_module.__default.M();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var h#0: bv8;
  var k#0: bv8;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(5,14)
    assume true;
    assume true;
    h#0 := Lit(5bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(6,9)
    assume true;
    assert {:id "id1"} Lit(128bv8) != 0bv8;
    assume true;
    k#0 := div_bv8(mul_bv8(h#0, 128bv8), 128bv8);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(7,3)
    assume true;
    assert {:id "id3"} k#0 == Lit(1bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(8,5)
    assume true;
    assume true;
    h#0 := Lit(3bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(9,5)
    assume true;
    assert {:id "id5"} Lit(128bv8) != 0bv8;
    assume true;
    k#0 := div_bv8(mul_bv8(h#0, 128bv8), 128bv8);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(10,3)
    assume true;
    assert {:id "id7"} k#0 == Lit(1bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(12,5)
    assume true;
    havoc h#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(13,5)
    assume true;
    assert {:id "id8"} h#0 != 0bv8;
    assume true;
    k#0 := div_bv8(k#0, h#0);
}



procedure {:verboseName "N0 (well-formedness)"} CheckWellFormed$$_module.__default.N0(x#0: bv7, y#0: bv7);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "N0 (call)"} Call$$_module.__default.N0(x#0: bv7, y#0: bv7);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "N0 (correctness)"} Impl$$_module.__default.N0(x#0: bv7, y#0: bv7) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N0 (correctness)"} Impl$$_module.__default.N0(x#0: bv7, y#0: bv7) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: bv7;

    // AddMethodImpl: N0, Impl$$_module.__default.N0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(17,9)
    assume true;
    assert {:id "id10"} y#0 != 0bv7;
    assume true;
    z#0 := div_bv7(x#0, y#0);
}



procedure {:verboseName "N1 (well-formedness)"} CheckWellFormed$$_module.__default.N1(x#0: bv7, y#0: bv7);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "N1 (call)"} Call$$_module.__default.N1(x#0: bv7, y#0: bv7);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "N1 (correctness)"} Impl$$_module.__default.N1(x#0: bv7, y#0: bv7) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N1 (correctness)"} Impl$$_module.__default.N1(x#0: bv7, y#0: bv7) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: bv7;

    // AddMethodImpl: N1, Impl$$_module.__default.N1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(21,9)
    assume true;
    assert {:id "id12"} y#0 != 0bv7;
    assume true;
    z#0 := mod_bv7(x#0, y#0);
}



procedure {:verboseName "N2 (well-formedness)"} CheckWellFormed$$_module.__default.N2(x#0: bv137, y#0: bv137);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "N2 (call)"} Call$$_module.__default.N2(x#0: bv137, y#0: bv137);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "N2 (correctness)"} Impl$$_module.__default.N2(x#0: bv137, y#0: bv137) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N2 (correctness)"} Impl$$_module.__default.N2(x#0: bv137, y#0: bv137) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: bv137;

    // AddMethodImpl: N2, Impl$$_module.__default.N2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(25,9)
    assume true;
    assert {:id "id14"} y#0 != 0bv137;
    assume true;
    z#0 := div_bv137(x#0, y#0);
}



procedure {:verboseName "N3 (well-formedness)"} CheckWellFormed$$_module.__default.N3(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "N3 (call)"} Call$$_module.__default.N3(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "N3 (correctness)"} Impl$$_module.__default.N3(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N3 (correctness)"} Impl$$_module.__default.N3(x#0: Bv0, y#0: Bv0) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0_0: Bv0 where 0 == z#0_0;
  var z#1_0: Bv0 where 0 == z#1_0;

    // AddMethodImpl: N3, Impl$$_module.__default.N3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(29,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(30,11)
        assume true;
        assert {:id "id16"} y#0 != 0;
        assume true;
        z#0_0 := div_bv0(x#0, y#0);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(32,11)
        assume true;
        assert {:id "id18"} y#0 != 0;
        assume true;
        z#1_0 := mod_bv0(x#0, y#0);
    }
}



procedure {:verboseName "N4 (well-formedness)"} CheckWellFormed$$_module.__default.N4(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0)
   returns (z#0: Bv0 where 0 == z#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "N4 (call)"} Call$$_module.__default.N4(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0)
   returns (z#0: Bv0 where 0 == z#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id21"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "N4 (correctness)"} Impl$$_module.__default.N4(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0)
   returns (z#0: Bv0 where 0 == z#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id22"} z#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N4 (correctness)"} Impl$$_module.__default.N4(x#0: Bv0, y#0: Bv0) returns (z#0: Bv0, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: N4, Impl$$_module.__default.N4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(39,3)
    if (*)
    {
        assume true;
        assume {:id "id47"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(40,20)
        assume true;
        assume true;
        z#0 := add_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id45"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(41,20)
        assume true;
        assume true;
        z#0 := sub_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id43"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(42,20)
        assume true;
        assume true;
        z#0 := mul_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id41"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(43,20)
        assume true;
        assume true;
        z#0 := and_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id39"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(44,20)
        assume true;
        assume true;
        z#0 := or_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id37"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(45,20)
        assume true;
        assume true;
        z#0 := xor_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id35"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(46,20)
        assume true;
        assume true;
        z#0 := not_bv0(x#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id33"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(47,20)
        assume true;
        assume true;
        z#0 := sub_bv0(0, x#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id32"} true;
    }
    else if (*)
    {
        assume true;
        assume {:id "id30"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(49,18)
        assume true;
        assert {:id "id31"} !lt_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id28"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(50,18)
        assume true;
        assert {:id "id29"} le_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id26"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(51,18)
        assume true;
        assert {:id "id27"} ge_bv0(x#0, y#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id24"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(52,18)
        assume true;
        assert {:id "id25"} !gt_bv0(x#0, y#0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true);
        assert {:id "id23"} false;
    }
}



procedure {:verboseName "P (well-formedness)"} CheckWellFormed$$_module.__default.P(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P (call)"} Call$$_module.__default.P(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0);
  // user-defined preconditions
  requires {:id "id50"} x#0 != y#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "P (correctness)"} Impl$$_module.__default.P(x#0: Bv0 where 0 == x#0, y#0: Bv0 where 0 == y#0) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id51"} x#0 != y#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P (correctness)"} Impl$$_module.__default.P(x#0: Bv0, y#0: Bv0) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P, Impl$$_module.__default.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(59,3)
    assume true;
    assert {:id "id52"} Lit(false);
}



procedure {:verboseName "Q (well-formedness)"} CheckWellFormed$$_module.__default.Q(x#0: bv10, y#0: bv10);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Q (call)"} Call$$_module.__default.Q(x#0: bv10, y#0: bv10);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Q (correctness)"} Impl$$_module.__default.Q(x#0: bv10, y#0: bv10) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Q (correctness)"} Impl$$_module.__default.Q(x#0: bv10, y#0: bv10) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0_0: bv10;

    // AddMethodImpl: Q, Impl$$_module.__default.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(64,3)
    assume true;
    if (lt_bv10(x#0, 0bv10))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(66,11)
        assume true;
        assert {:id "id53"} y#0 != 0bv10;
        assume true;
        z#0_0 := div_bv10(x#0, y#0);
    }
    else
    {
    }
}



procedure {:verboseName "R (well-formedness)"} CheckWellFormed$$_module.__default.R(x#0: bv60, y#0: bv60);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "R (call)"} Call$$_module.__default.R(x#0: bv60, y#0: bv60);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "R (correctness)"} Impl$$_module.__default.R(x#0: bv60, y#0: bv60) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "R (correctness)"} Impl$$_module.__default.R(x#0: bv60, y#0: bv60) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a0#0: bool;
  var a1#0: bool;
  var $rhs#0: bool;
  var $rhs#1: bool;
  var $rhs#2: bool;
  var $rhs#3: bool;

    // AddMethodImpl: R, Impl$$_module.__default.R
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a0#0, a1#0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(74,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := lt_bv60(x#0, y#0);
    assume true;
    $rhs#1 := gt_bv60(y#0, x#0);
    a0#0 := $rhs#0;
    a1#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(75,3)
    assume true;
    assert {:id "id59"} a0#0 == a1#0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(77,10)
    assume true;
    assume true;
    assume true;
    $rhs#2 := le_bv60(x#0, y#0);
    assume true;
    $rhs#3 := ge_bv60(y#0, x#0);
    a0#0 := $rhs#2;
    a1#0 := $rhs#3;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(78,3)
    assume true;
    assert {:id "id64"} a0#0 == a1#0;
}



// function declaration for _module._default.PQ
function _module.__default.PQ(x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int)
   : bool
uses {
// definition axiom for _module.__default.PQ (revealed)
axiom {:id "id65"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int, 
      n#0: int, 
      r#0: real, 
      even#0: int, 
      small#0: real, 
      b67#0: bv67, 
      w#0: bv32, 
      seven#0: bv7, 
      bb#0: bv2, 
      noll#0: Bv0, 
      h#0: int :: 
    { _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0) } 
    _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && Mod(even#0, LitInt(2)) == LitInt(0)
           && 
          LitReal(-4e0) <= small#0
           && small#0 < 3e2
           && 0 == noll#0
           && 
          LitInt(0) <= h#0
           && h#0 < 80)
       ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
         == (
          x#0 == x#0
           && n#0 == n#0
           && r#0 == r#0
           && even#0 == even#0
           && small#0 == small#0
           && b67#0 == b67#0
           && w#0 == w#0
           && seven#0 == seven#0
           && bb#0 == bb#0
           && noll#0 == noll#0
           && h#0 == h#0));
// definition axiom for _module.__default.PQ for all literals (revealed)
axiom {:id "id66"} 1 <= $FunctionContextHeight
   ==> (forall x#0: int, 
      n#0: int, 
      r#0: real, 
      even#0: int, 
      small#0: real, 
      b67#0: bv67, 
      w#0: bv32, 
      seven#0: bv7, 
      bb#0: bv2, 
      noll#0: Bv0, 
      h#0: int :: 
    {:weight 3} { _module.__default.PQ(LitInt(x#0), 
        LitInt(n#0), 
        LitReal(r#0), 
        LitInt(even#0), 
        LitReal(small#0), 
        Lit(b67#0), 
        Lit(w#0), 
        Lit(seven#0), 
        Lit(bb#0), 
        LitInt(noll#0), 
        LitInt(h#0)) } 
    _module.__default.PQ#canCall(LitInt(x#0), 
          LitInt(n#0), 
          LitReal(r#0), 
          LitInt(even#0), 
          LitReal(small#0), 
          Lit(b67#0), 
          Lit(w#0), 
          Lit(seven#0), 
          Lit(bb#0), 
          LitInt(noll#0), 
          LitInt(h#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && Mod(even#0, LitInt(2)) == LitInt(0)
           && 
          LitReal(-4e0) <= small#0
           && small#0 < 3e2
           && 0 == noll#0
           && 
          LitInt(0) <= h#0
           && h#0 < 80)
       ==> _module.__default.PQ(LitInt(x#0), 
          LitInt(n#0), 
          LitReal(r#0), 
          LitInt(even#0), 
          LitReal(small#0), 
          Lit(b67#0), 
          Lit(w#0), 
          Lit(seven#0), 
          Lit(bb#0), 
          LitInt(noll#0), 
          LitInt(h#0))
         == (
          LitInt(x#0) == LitInt(x#0)
           && LitInt(n#0) == LitInt(n#0)
           && LitReal(r#0) == LitReal(r#0)
           && LitInt(even#0) == LitInt(even#0)
           && LitReal(small#0) == LitReal(small#0)
           && Lit(b67#0) == Lit(b67#0)
           && Lit(w#0) == Lit(w#0)
           && Lit(seven#0) == Lit(seven#0)
           && Lit(bb#0) == Lit(bb#0)
           && LitInt(noll#0) == LitInt(noll#0)
           && LitInt(h#0) == LitInt(h#0)));
}

function _module.__default.PQ#canCall(x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int)
   : bool;

function _module.__default.PQ#requires(int, int, real, int, real, bv67, bv32, bv7, bv2, Bv0, int) : bool;

// #requires axiom for _module.__default.PQ
axiom (forall x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int :: 
  { _module.__default.PQ#requires(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0) } 
  LitInt(0) <= n#0
       && Mod(even#0, LitInt(2)) == LitInt(0)
       && 
      LitReal(-4e0) <= small#0
       && small#0 < 3e2
       && 0 == noll#0
       && 
      LitInt(0) <= h#0
       && h#0 < 80
     ==> _module.__default.PQ#requires(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       == true);

procedure {:verboseName "PQ (well-formedness)"} CheckWellformed$$_module.__default.PQ(x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shifts0 (well-formedness)"} CheckWellFormed$$_module.__default.Shifts0()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.EvenInt() : Ty
uses {
// Tclass._module.EvenInt Tag
axiom Tag(Tclass._module.EvenInt()) == Tagclass._module.EvenInt
   && TagFamily(Tclass._module.EvenInt()) == tytagFamily$EvenInt;
}

const unique Tagclass._module.EvenInt: TyTag;

// Box/unbox axiom for Tclass._module.EvenInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.EvenInt()) } 
  $IsBox(bx, Tclass._module.EvenInt())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.EvenInt()));

function Tclass._module.SmallReal() : Ty
uses {
// Tclass._module.SmallReal Tag
axiom Tag(Tclass._module.SmallReal()) == Tagclass._module.SmallReal
   && TagFamily(Tclass._module.SmallReal()) == tytagFamily$SmallReal;
}

const unique Tagclass._module.SmallReal: TyTag;

// Box/unbox axiom for Tclass._module.SmallReal
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SmallReal()) } 
  $IsBox(bx, Tclass._module.SmallReal())
     ==> $Box($Unbox(bx): real) == bx
       && $Is($Unbox(bx): real, Tclass._module.SmallReal()));

function Tclass._module.Handful() : Ty
uses {
// Tclass._module.Handful Tag
axiom Tag(Tclass._module.Handful()) == Tagclass._module.Handful
   && TagFamily(Tclass._module.Handful()) == tytagFamily$Handful;
}

const unique Tagclass._module.Handful: TyTag;

// Box/unbox axiom for Tclass._module.Handful
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Handful()) } 
  $IsBox(bx, Tclass._module.Handful())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Handful()));

procedure {:verboseName "Shifts0 (call)"} Call$$_module.__default.Shifts0()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  free ensures {:id "id69"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    x#0 == x#0
     && n#0 == n#0
     && r#0 == r#0
     && even#0 == even#0
     && small#0 == small#0
     && b67#0 == b67#0
     && w#0 == w#0
     && seven#0 == seven#0
     && bb#0 == bb#0
     && noll#0 == noll#0
     && h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shifts0 (correctness)"} Impl$$_module.__default.Shifts0()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80, 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  ensures {:id "id70"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || x#0 == x#0;
  ensures {:id "id71"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || n#0 == n#0;
  ensures {:id "id72"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || r#0 == r#0;
  ensures {:id "id73"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || even#0 == even#0;
  ensures {:id "id74"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || small#0 == small#0;
  ensures {:id "id75"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || b67#0 == b67#0;
  ensures {:id "id76"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || w#0 == w#0;
  ensures {:id "id77"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || seven#0 == seven#0;
  ensures {:id "id78"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || bb#0 == bb#0;
  ensures {:id "id79"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || noll#0 == noll#0;
  ensures {:id "id80"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Shifts0 (correctness)"} Impl$$_module.__default.Shifts0()
   returns (x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0_0: int;
  var newtype$check#1_0: int;
  var newtype$check#2_0: int;
  var newtype$check#3_0: int;
  var newtype$check#4_0: int;

    // AddMethodImpl: Shifts0, Impl$$_module.__default.Shifts0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(103,3)
    if (*)
    {
        assume true;
        assume {:id "id98"} x#0 < 20;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(104,28)
        assume true;
        newtype$check#4_0 := x#0;
        assert {:id "id99"} 0 <= newtype$check#4_0 && newtype$check#4_0 < 128;
        assert {:id "id100"} le_bv7(nat_to_bv7(x#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(x#0)): bv67);
    }
    else if (*)
    {
        assume true;
        assume {:id "id94"} LitInt(0) <= x#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(105,29)
        assume true;
        newtype$check#3_0 := x#0;
        assert {:id "id95"} 0 <= newtype$check#3_0 && newtype$check#3_0 < 128;
        assert {:id "id96"} le_bv7(nat_to_bv7(x#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(x#0)): bv67);
    }
    else if (*)
    {
        if (LitInt(0) <= x#0)
        {
        }

        assume true;
        assume {:id "id90"} LitInt(0) <= x#0 && x#0 < 67;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(106,29)
        assume true;
        newtype$check#2_0 := x#0;
        assert {:id "id91"} 0 <= newtype$check#2_0 && newtype$check#2_0 < 128;
        assert {:id "id92"} le_bv7(nat_to_bv7(x#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(x#0)): bv67);
    }
    else if (*)
    {
        assume true;
        assume {:id "id86"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(107,28)
        assume true;
        newtype$check#1_0 := n#0;
        assert {:id "id87"} 0 <= newtype$check#1_0 && newtype$check#1_0 < 128;
        assert {:id "id88"} le_bv7(nat_to_bv7(n#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(n#0)): bv67);
    }
    else if (*)
    {
        assume true;
        assume {:id "id82"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(108,28)
        assume true;
        newtype$check#0_0 := h#0;
        assert {:id "id83"} 0 <= newtype$check#0_0 && newtype$check#0_0 < 128;
        assert {:id "id84"} le_bv7(nat_to_bv7(h#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(h#0)): bv67);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume 20 <= x#0
           && x#0 < LitInt(0)
           && !
          (LitInt(0) <= x#0
           && x#0 < 67)
           && !Lit(true)
           && !Lit(true);
        assert {:id "id81"} false;
    }
}



procedure {:verboseName "Shifts1 (well-formedness)"} CheckWellFormed$$_module.__default.Shifts1()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shifts1 (call)"} Call$$_module.__default.Shifts1()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  free ensures {:id "id103"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    x#0 == x#0
     && n#0 == n#0
     && r#0 == r#0
     && even#0 == even#0
     && small#0 == small#0
     && b67#0 == b67#0
     && w#0 == w#0
     && seven#0 == seven#0
     && bb#0 == bb#0
     && noll#0 == noll#0
     && h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shifts1 (correctness)"} Impl$$_module.__default.Shifts1()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80, 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  ensures {:id "id104"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || x#0 == x#0;
  ensures {:id "id105"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || n#0 == n#0;
  ensures {:id "id106"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || r#0 == r#0;
  ensures {:id "id107"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || even#0 == even#0;
  ensures {:id "id108"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || small#0 == small#0;
  ensures {:id "id109"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || b67#0 == b67#0;
  ensures {:id "id110"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || w#0 == w#0;
  ensures {:id "id111"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || seven#0 == seven#0;
  ensures {:id "id112"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || bb#0 == bb#0;
  ensures {:id "id113"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || noll#0 == noll#0;
  ensures {:id "id114"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Shifts1 (correctness)"} Impl$$_module.__default.Shifts1()
   returns (x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0_0: int;
  var newtype$check#0_1: int;
  var newtype$check#0_2: int;
  var newtype$check#1_0: int;
  var newtype$check#1_1: int;
  var newtype$check#2_0: int;
  var newtype$check#2_1: int;

    // AddMethodImpl: Shifts1, Impl$$_module.__default.Shifts1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(114,3)
    if (*)
    {
        newtype$check#2_0 := LitInt(66);
        assert {:id "id127"} Mod(newtype$check#2_0, LitInt(2)) == LitInt(0);
        assume true;
        assume {:id "id128"} even#0 <= LitInt(66);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(115,33)
        assume true;
        newtype$check#2_1 := even#0;
        assert {:id "id129"} 0 <= newtype$check#2_1 && newtype$check#2_1 < 128;
        assert {:id "id130"} le_bv7(nat_to_bv7(even#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(even#0)): bv67);
    }
    else if (*)
    {
        newtype$check#1_0 := LitInt(0);
        assert {:id "id122"} Mod(newtype$check#1_0, LitInt(2)) == LitInt(0);
        assume true;
        assume {:id "id123"} LitInt(0) <= even#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(116,33)
        assume true;
        newtype$check#1_1 := even#0;
        assert {:id "id124"} 0 <= newtype$check#1_1 && newtype$check#1_1 < 128;
        assert {:id "id125"} le_bv7(nat_to_bv7(even#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(even#0)): bv67);
    }
    else if (*)
    {
        newtype$check#0_0 := LitInt(0);
        assert {:id "id116"} Mod(newtype$check#0_0, LitInt(2)) == LitInt(0);
        if (LitInt(0) <= even#0)
        {
            newtype$check#0_1 := LitInt(66);
            assert {:id "id117"} Mod(newtype$check#0_1, LitInt(2)) == LitInt(0);
        }

        assume true;
        assume {:id "id118"} LitInt(0) <= even#0 && even#0 <= LitInt(66);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(117,34)
        assume true;
        newtype$check#0_2 := even#0;
        assert {:id "id119"} 0 <= newtype$check#0_2 && newtype$check#0_2 < 128;
        assert {:id "id120"} le_bv7(nat_to_bv7(even#0), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ nat_to_bv7(even#0)): bv67);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume LitInt(66) < even#0
           && even#0 < LitInt(0)
           && !
          (LitInt(0) <= even#0
           && even#0 <= LitInt(66));
        assert {:id "id115"} false;
    }
}



procedure {:verboseName "Shifts2 (well-formedness)"} CheckWellFormed$$_module.__default.Shifts2()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shifts2 (call)"} Call$$_module.__default.Shifts2()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  free ensures {:id "id133"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    x#0 == x#0
     && n#0 == n#0
     && r#0 == r#0
     && even#0 == even#0
     && small#0 == small#0
     && b67#0 == b67#0
     && w#0 == w#0
     && seven#0 == seven#0
     && bb#0 == bb#0
     && noll#0 == noll#0
     && h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shifts2 (correctness)"} Impl$$_module.__default.Shifts2()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80, 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  ensures {:id "id134"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || x#0 == x#0;
  ensures {:id "id135"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || n#0 == n#0;
  ensures {:id "id136"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || r#0 == r#0;
  ensures {:id "id137"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || even#0 == even#0;
  ensures {:id "id138"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || small#0 == small#0;
  ensures {:id "id139"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || b67#0 == b67#0;
  ensures {:id "id140"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || w#0 == w#0;
  ensures {:id "id141"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || seven#0 == seven#0;
  ensures {:id "id142"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || bb#0 == bb#0;
  ensures {:id "id143"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || noll#0 == noll#0;
  ensures {:id "id144"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Shifts2 (correctness)"} Impl$$_module.__default.Shifts2()
   returns (x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#3_0: bv32;
  var newtype$check#4_0: bv67;

    // AddMethodImpl: Shifts2, Impl$$_module.__default.Shifts2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(123,3)
    if (*)
    {
        assume true;
        assume {:id "id160"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(124,22)
        assume true;
        newtype$check#4_0 := b67#0;
        assert {:id "id161"} lt_bv67(newtype$check#4_0, 128bv67);
        assert {:id "id162"} le_bv7(b67#0[7:0], 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ b67#0[7:0]): bv67);
    }
    else if (*)
    {
        assume true;
        assume {:id "id156"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(125,22)
        assume true;
        newtype$check#3_0 := w#0;
        assert {:id "id157"} lt_bv32(newtype$check#3_0, 128bv32);
        assert {:id "id158"} le_bv7(w#0[7:0], 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ w#0[7:0]): bv67);
    }
    else if (*)
    {
        assume true;
        assume {:id "id152"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(126,22)
        assume true;
        assert {:id "id153"} Lit(2bv7) != 0bv7;
        assert {:id "id154"} le_bv7(div_bv7(seven#0, 2bv7), 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ div_bv7(seven#0, 2bv7)): bv67);
    }
    else if (*)
    {
        assume true;
        assume {:id "id149"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(127,22)
        assume true;
        assert {:id "id150"} le_bv7((0bv5 ++ bb#0): bv7, 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ (0bv5 ++ bb#0): bv7): bv67);
    }
    else if (*)
    {
        assume true;
        assume {:id "id146"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(128,22)
        assume true;
        assert {:id "id147"} le_bv7(0bv7, 67bv7);
        assume true;
        b67#0 := LeftShift_bv67(b67#0, (0bv60 ++ 0bv7): bv67);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id145"} false;
    }
}



procedure {:verboseName "Shifts3 (well-formedness)"} CheckWellFormed$$_module.__default.Shifts3()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shifts3 (call)"} Call$$_module.__default.Shifts3()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  free ensures {:id "id165"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    x#0 == x#0
     && n#0 == n#0
     && r#0 == r#0
     && even#0 == even#0
     && small#0 == small#0
     && b67#0 == b67#0
     && w#0 == w#0
     && seven#0 == seven#0
     && bb#0 == bb#0
     && noll#0 == noll#0
     && h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shifts3 (correctness)"} Impl$$_module.__default.Shifts3()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80, 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  ensures {:id "id166"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || x#0 == x#0;
  ensures {:id "id167"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || n#0 == n#0;
  ensures {:id "id168"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || r#0 == r#0;
  ensures {:id "id169"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || even#0 == even#0;
  ensures {:id "id170"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || small#0 == small#0;
  ensures {:id "id171"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || b67#0 == b67#0;
  ensures {:id "id172"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || w#0 == w#0;
  ensures {:id "id173"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || seven#0 == seven#0;
  ensures {:id "id174"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || bb#0 == bb#0;
  ensures {:id "id175"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || noll#0 == noll#0;
  ensures {:id "id176"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Shifts3 (correctness)"} Impl$$_module.__default.Shifts3()
   returns (x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2_0: bv7;
  var newtype$check#3_0: bv32;
  var newtype$check#4_0: bv67;

    // AddMethodImpl: Shifts3, Impl$$_module.__default.Shifts3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(134,3)
    if (*)
    {
        assume true;
        assume {:id "id192"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(135,20)
        assume true;
        newtype$check#4_0 := b67#0;
        assert {:id "id193"} lt_bv67(newtype$check#4_0, 64bv67);
        assert {:id "id194"} le_bv6(b67#0[6:0], 32bv6);
        assume true;
        w#0 := LeftShift_bv32(w#0, (0bv26 ++ b67#0[6:0]): bv32);
    }
    else if (*)
    {
        assume true;
        assume {:id "id188"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(136,20)
        assume true;
        newtype$check#3_0 := w#0;
        assert {:id "id189"} lt_bv32(newtype$check#3_0, 64bv32);
        assert {:id "id190"} le_bv6(w#0[6:0], 32bv6);
        assume true;
        w#0 := LeftShift_bv32(w#0, (0bv26 ++ w#0[6:0]): bv32);
    }
    else if (*)
    {
        assume true;
        assume {:id "id184"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(137,20)
        assume true;
        newtype$check#2_0 := seven#0;
        assert {:id "id185"} lt_bv7(newtype$check#2_0, 64bv7);
        assert {:id "id186"} le_bv6(seven#0[6:0], 32bv6);
        assume true;
        w#0 := LeftShift_bv32(w#0, (0bv26 ++ seven#0[6:0]): bv32);
    }
    else if (*)
    {
        assume true;
        assume {:id "id181"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(138,20)
        assume true;
        assert {:id "id182"} le_bv6((0bv4 ++ bb#0): bv6, 32bv6);
        assume true;
        w#0 := LeftShift_bv32(w#0, (0bv26 ++ (0bv4 ++ bb#0): bv6): bv32);
    }
    else if (*)
    {
        assume true;
        assume {:id "id178"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(139,20)
        assume true;
        assert {:id "id179"} le_bv6(0bv6, 32bv6);
        assume true;
        w#0 := LeftShift_bv32(w#0, (0bv26 ++ 0bv6): bv32);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id177"} false;
    }
}



procedure {:verboseName "Shifts4 (well-formedness)"} CheckWellFormed$$_module.__default.Shifts4()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shifts4 (call)"} Call$$_module.__default.Shifts4()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  free ensures {:id "id197"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    x#0 == x#0
     && n#0 == n#0
     && r#0 == r#0
     && even#0 == even#0
     && small#0 == small#0
     && b67#0 == b67#0
     && w#0 == w#0
     && seven#0 == seven#0
     && bb#0 == bb#0
     && noll#0 == noll#0
     && h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shifts4 (correctness)"} Impl$$_module.__default.Shifts4()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80, 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  ensures {:id "id198"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || x#0 == x#0;
  ensures {:id "id199"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || n#0 == n#0;
  ensures {:id "id200"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || r#0 == r#0;
  ensures {:id "id201"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || even#0 == even#0;
  ensures {:id "id202"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || small#0 == small#0;
  ensures {:id "id203"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || b67#0 == b67#0;
  ensures {:id "id204"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || w#0 == w#0;
  ensures {:id "id205"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || seven#0 == seven#0;
  ensures {:id "id206"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || bb#0 == bb#0;
  ensures {:id "id207"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || noll#0 == noll#0;
  ensures {:id "id208"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Shifts4 (correctness)"} Impl$$_module.__default.Shifts4()
   returns (x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2_0: bv7;
  var newtype$check#3_0: bv32;
  var newtype$check#4_0: bv67;

    // AddMethodImpl: Shifts4, Impl$$_module.__default.Shifts4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(145,3)
    if (*)
    {
        assume true;
        assume {:id "id224"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(146,24)
        assume true;
        newtype$check#4_0 := b67#0;
        assert {:id "id225"} lt_bv67(newtype$check#4_0, 8bv67);
        assert {:id "id226"} le_bv3(b67#0[3:0], 7bv3);
        assume true;
        seven#0 := LeftShift_bv7(seven#0, (0bv4 ++ b67#0[3:0]): bv7);
    }
    else if (*)
    {
        assume true;
        assume {:id "id220"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(147,24)
        assume true;
        newtype$check#3_0 := w#0;
        assert {:id "id221"} lt_bv32(newtype$check#3_0, 8bv32);
        assert {:id "id222"} le_bv3(w#0[3:0], 7bv3);
        assume true;
        seven#0 := LeftShift_bv7(seven#0, (0bv4 ++ w#0[3:0]): bv7);
    }
    else if (*)
    {
        assume true;
        assume {:id "id216"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(148,24)
        assume true;
        newtype$check#2_0 := seven#0;
        assert {:id "id217"} lt_bv7(newtype$check#2_0, 8bv7);
        assert {:id "id218"} le_bv3(seven#0[3:0], 7bv3);
        assume true;
        seven#0 := LeftShift_bv7(seven#0, (0bv4 ++ seven#0[3:0]): bv7);
    }
    else if (*)
    {
        assume true;
        assume {:id "id213"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(149,24)
        assume true;
        assert {:id "id214"} le_bv3((0bv1 ++ bb#0): bv3, 7bv3);
        assume true;
        seven#0 := LeftShift_bv7(seven#0, (0bv4 ++ (0bv1 ++ bb#0): bv3): bv7);
    }
    else if (*)
    {
        assume true;
        assume {:id "id210"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(150,24)
        assume true;
        assert {:id "id211"} le_bv3(0bv3, 7bv3);
        assume true;
        seven#0 := LeftShift_bv7(seven#0, (0bv4 ++ 0bv3): bv7);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id209"} false;
    }
}



procedure {:verboseName "Shifts5 (well-formedness)"} CheckWellFormed$$_module.__default.Shifts5()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shifts5 (call)"} Call$$_module.__default.Shifts5()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  free ensures {:id "id229"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    x#0 == x#0
     && n#0 == n#0
     && r#0 == r#0
     && even#0 == even#0
     && small#0 == small#0
     && b67#0 == b67#0
     && w#0 == w#0
     && seven#0 == seven#0
     && bb#0 == bb#0
     && noll#0 == noll#0
     && h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shifts5 (correctness)"} Impl$$_module.__default.Shifts5()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80, 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  ensures {:id "id230"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || x#0 == x#0;
  ensures {:id "id231"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || n#0 == n#0;
  ensures {:id "id232"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || r#0 == r#0;
  ensures {:id "id233"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || even#0 == even#0;
  ensures {:id "id234"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || small#0 == small#0;
  ensures {:id "id235"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || b67#0 == b67#0;
  ensures {:id "id236"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || w#0 == w#0;
  ensures {:id "id237"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || seven#0 == seven#0;
  ensures {:id "id238"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || bb#0 == bb#0;
  ensures {:id "id239"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || noll#0 == noll#0;
  ensures {:id "id240"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Shifts5 (correctness)"} Impl$$_module.__default.Shifts5()
   returns (x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#2_0: bv7;
  var newtype$check#3_0: bv32;
  var newtype$check#4_0: bv67;

    // AddMethodImpl: Shifts5, Impl$$_module.__default.Shifts5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(156,3)
    if (*)
    {
        assume true;
        assume {:id "id256"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(157,21)
        assume true;
        newtype$check#4_0 := b67#0;
        assert {:id "id257"} lt_bv67(newtype$check#4_0, 4bv67);
        assert {:id "id258"} le_bv2(b67#0[2:0], 2bv2);
        assume true;
        bb#0 := LeftShift_bv2(bb#0, b67#0[2:0]);
    }
    else if (*)
    {
        assume true;
        assume {:id "id252"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(158,21)
        assume true;
        newtype$check#3_0 := w#0;
        assert {:id "id253"} lt_bv32(newtype$check#3_0, 4bv32);
        assert {:id "id254"} le_bv2(w#0[2:0], 2bv2);
        assume true;
        bb#0 := LeftShift_bv2(bb#0, w#0[2:0]);
    }
    else if (*)
    {
        assume true;
        assume {:id "id248"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(159,21)
        assume true;
        newtype$check#2_0 := seven#0;
        assert {:id "id249"} lt_bv7(newtype$check#2_0, 4bv7);
        assert {:id "id250"} le_bv2(seven#0[2:0], 2bv2);
        assume true;
        bb#0 := LeftShift_bv2(bb#0, seven#0[2:0]);
    }
    else if (*)
    {
        assume true;
        assume {:id "id245"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(160,21)
        assume true;
        assert {:id "id246"} le_bv2(bb#0, 2bv2);
        assume true;
        bb#0 := LeftShift_bv2(bb#0, bb#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id242"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(161,21)
        assume true;
        assert {:id "id243"} le_bv2(0bv2, 2bv2);
        assume true;
        bb#0 := LeftShift_bv2(bb#0, 0bv2);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id241"} false;
    }
}



procedure {:verboseName "Shifts6 (well-formedness)"} CheckWellFormed$$_module.__default.Shifts6()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Shifts6 (call)"} Call$$_module.__default.Shifts6()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  free ensures {:id "id261"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     && 
    x#0 == x#0
     && n#0 == n#0
     && r#0 == r#0
     && even#0 == even#0
     && small#0 == small#0
     && b67#0 == b67#0
     && w#0 == w#0
     && seven#0 == seven#0
     && bb#0 == bb#0
     && noll#0 == noll#0
     && h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Shifts6 (correctness)"} Impl$$_module.__default.Shifts6()
   returns (x#0: int, 
    n#0: int where LitInt(0) <= n#0, 
    r#0: real, 
    even#0: int where Mod(even#0, LitInt(2)) == LitInt(0), 
    small#0: real where LitReal(-4e0) <= small#0 && small#0 < 3e2, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0 where 0 == noll#0, 
    h#0: int where LitInt(0) <= h#0 && h#0 < 80, 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0);
  ensures {:id "id262"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || x#0 == x#0;
  ensures {:id "id263"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || n#0 == n#0;
  ensures {:id "id264"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || r#0 == r#0;
  ensures {:id "id265"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || even#0 == even#0;
  ensures {:id "id266"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || small#0 == small#0;
  ensures {:id "id267"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || b67#0 == b67#0;
  ensures {:id "id268"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || w#0 == w#0;
  ensures {:id "id269"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || seven#0 == seven#0;
  ensures {:id "id270"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || bb#0 == bb#0;
  ensures {:id "id271"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || noll#0 == noll#0;
  ensures {:id "id272"} _module.__default.PQ#canCall(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
     ==> _module.__default.PQ(x#0, n#0, r#0, even#0, small#0, b67#0, w#0, seven#0, bb#0, noll#0, h#0)
       || h#0 == h#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Shifts6 (correctness)"} Impl$$_module.__default.Shifts6()
   returns (x#0: int, 
    n#0: int, 
    r#0: real, 
    even#0: int, 
    small#0: real, 
    b67#0: bv67, 
    w#0: bv32, 
    seven#0: bv7, 
    bb#0: bv2, 
    noll#0: Bv0, 
    h#0: int, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#1_0: bv2;
  var newtype$check#2_0: bv7;
  var newtype$check#3_0: bv32;
  var newtype$check#4_0: bv67;

    // AddMethodImpl: Shifts6, Impl$$_module.__default.Shifts6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(167,3)
    if (*)
    {
        assume true;
        assume {:id "id289"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(168,23)
        assume true;
        newtype$check#4_0 := b67#0;
        assert {:id "id290"} lt_bv67(newtype$check#4_0, 1bv67);
        assert {:id "id291"} le_bv0(0, 0);
        assume true;
        noll#0 := LeftShift_bv0(noll#0, 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id285"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(169,23)
        assume true;
        newtype$check#3_0 := w#0;
        assert {:id "id286"} lt_bv32(newtype$check#3_0, 1bv32);
        assert {:id "id287"} le_bv0(0, 0);
        assume true;
        noll#0 := LeftShift_bv0(noll#0, 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id281"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(170,23)
        assume true;
        newtype$check#2_0 := seven#0;
        assert {:id "id282"} lt_bv7(newtype$check#2_0, 1bv7);
        assert {:id "id283"} le_bv0(0, 0);
        assume true;
        noll#0 := LeftShift_bv0(noll#0, 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id277"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(171,23)
        assume true;
        newtype$check#1_0 := bb#0;
        assert {:id "id278"} lt_bv2(newtype$check#1_0, 1bv2);
        assert {:id "id279"} le_bv0(0, 0);
        assume true;
        noll#0 := LeftShift_bv0(noll#0, 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id274"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(172,23)
        assume true;
        assert {:id "id275"} le_bv0(noll#0, 0);
        assume true;
        noll#0 := LeftShift_bv0(noll#0, noll#0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id273"} false;
    }
}



procedure {:verboseName "TestActualShifting (well-formedness)"} CheckWellFormed$$_module.__default.TestActualShifting();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestActualShifting (call)"} Call$$_module.__default.TestActualShifting();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestActualShifting (correctness)"} Impl$$_module.__default.TestActualShifting() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestActualShifting (correctness)"} Impl$$_module.__default.TestActualShifting() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: bv67;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var b#0: bv5;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;

    // AddMethodImpl: TestActualShifting, Impl$$_module.__default.TestActualShifting
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(178,15)
    assume true;
    assume true;
    a#0 := Lit(3bv67);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(179,3)
    newtype$check#0 := LitInt(2);
    assert {:id "id294"} 0 <= newtype$check#0 && newtype$check#0 < 128;
    assert {:id "id295"} {:subsumption 0} le_bv7(2bv7, 67bv7);
    assume true;
    assert {:id "id296"} LeftShift_bv67(a#0, (0bv60 ++ 2bv7): bv67) == Lit(12bv67);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(180,3)
    newtype$check#1 := LitInt(0);
    assert {:id "id297"} 0 <= newtype$check#1 && newtype$check#1 < 128;
    assert {:id "id298"} {:subsumption 0} le_bv7(0bv7, 67bv7);
    assume true;
    assert {:id "id299"} RightShift_bv67(a#0, (0bv60 ++ 0bv7): bv67) == Lit(3bv67);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(181,3)
    newtype$check#2 := LitInt(1);
    assert {:id "id300"} 0 <= newtype$check#2 && newtype$check#2 < 128;
    assert {:id "id301"} {:subsumption 0} le_bv7(1bv7, 67bv7);
    assume true;
    assert {:id "id302"} RightShift_bv67(a#0, (0bv60 ++ 1bv7): bv67) == Lit(1bv67);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(182,3)
    newtype$check#3 := LitInt(2);
    assert {:id "id303"} 0 <= newtype$check#3 && newtype$check#3 < 128;
    assert {:id "id304"} {:subsumption 0} le_bv7(2bv7, 67bv7);
    assume true;
    assert {:id "id305"} RightShift_bv67(a#0, (0bv60 ++ 2bv7): bv67) == Lit(0bv67);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(184,14)
    assume true;
    assume true;
    b#0 := Lit(24bv5);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(185,3)
    newtype$check#4 := LitInt(1);
    assert {:id "id307"} 0 <= newtype$check#4 && newtype$check#4 < 8;
    assert {:id "id308"} {:subsumption 0} le_bv3(1bv3, 5bv3);
    assume true;
    assert {:id "id309"} LeftShift_bv5(b#0, (0bv2 ++ 1bv3): bv5) == Lit(16bv5);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(186,3)
    newtype$check#5 := LitInt(0);
    assert {:id "id310"} 0 <= newtype$check#5 && newtype$check#5 < 8;
    assert {:id "id311"} {:subsumption 0} le_bv3(0bv3, 5bv3);
    assume true;
    assert {:id "id312"} RightShift_bv5(b#0, (0bv2 ++ 0bv3): bv5) == Lit(24bv5);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(187,3)
    newtype$check#6 := LitInt(1);
    assert {:id "id313"} 0 <= newtype$check#6 && newtype$check#6 < 8;
    assert {:id "id314"} {:subsumption 0} le_bv3(1bv3, 5bv3);
    assume true;
    assert {:id "id315"} RightShift_bv5(b#0, (0bv2 ++ 1bv3): bv5) == Lit(12bv5);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(188,3)
    newtype$check#7 := LitInt(2);
    assert {:id "id316"} 0 <= newtype$check#7 && newtype$check#7 < 8;
    assert {:id "id317"} {:subsumption 0} le_bv3(2bv3, 5bv3);
    assume true;
    assert {:id "id318"} RightShift_bv5(b#0, (0bv2 ++ 2bv3): bv5) == Lit(6bv5);
}



procedure {:verboseName "Rotate (well-formedness)"} CheckWellFormed$$_module.__default.Rotate() returns (x#0: int where LitInt(0) <= x#0, bb#0: bv5);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Rotate (call)"} Call$$_module.__default.Rotate() returns (x#0: int where LitInt(0) <= x#0, bb#0: bv5);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Rotate (correctness)"} Impl$$_module.__default.Rotate() returns (x#0: int where LitInt(0) <= x#0, bb#0: bv5, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Rotate (correctness)"} Impl$$_module.__default.Rotate() returns (x#0: int, bb#0: bv5, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Rotate, Impl$$_module.__default.Rotate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(192,4)
    if (*)
    {
        assume true;
        assume {:id "id324"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(193,21)
        assume true;
        assert {:id "id325"} 0 <= x#0;
        assert {:id "id326"} x#0 <= 5;
        assume true;
        bb#0 := LeftRotate_bv5(bb#0, nat_to_bv5(x#0));
    }
    else if (*)
    {
        assume true;
        assume {:id "id320"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(194,21)
        assume true;
        assert {:id "id321"} 0 <= x#0;
        assert {:id "id322"} x#0 <= 5;
        assume true;
        bb#0 := RightRotate_bv5(bb#0, nat_to_bv5(x#0));
    }
    else
    {
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true);
        assert {:id "id319"} false;
    }
}



procedure {:verboseName "TestActualRotate (well-formedness)"} CheckWellFormed$$_module.__default.TestActualRotate();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestActualRotate (call)"} Call$$_module.__default.TestActualRotate();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestActualRotate (correctness)"} Impl$$_module.__default.TestActualRotate() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestActualRotate (correctness)"} Impl$$_module.__default.TestActualRotate() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: bv5;

    // AddMethodImpl: TestActualRotate, Impl$$_module.__default.TestActualRotate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(199,14)
    assume true;
    assume true;
    a#0 := Lit(12bv5);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/BitvectorsMore.dfy(200,2)
    assert {:id "id329"} {:subsumption 0} 0 <= LitInt(3);
    assert {:id "id330"} {:subsumption 0} LitInt(3) <= 5;
    assert {:id "id331"} {:subsumption 0} 0 <= LitInt(3);
    assert {:id "id332"} {:subsumption 0} LitInt(3) <= 5;
    assume true;
    assert {:id "id333"} a#0 == RightRotate_bv5(LeftRotate_bv5(a#0, 3bv5), 3bv5);
}



procedure {:verboseName "EvenInt (well-formedness)"} CheckWellFormed$$_module.EvenInt(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EvenInt (well-formedness)"} CheckWellFormed$$_module.EvenInt(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype EvenInt
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assert {:id "id334"} LitInt(2) != 0;
        assume {:id "id335"} Mod(x#0, LitInt(2)) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id336"} LitInt(Mod(0, LitInt(2))) == LitInt(0);
        assume false;
    }
}



// $Is axiom for newtype _module.EvenInt
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.EvenInt()) } 
  $Is(x#0, Tclass._module.EvenInt()) <==> Mod(x#0, LitInt(2)) == LitInt(0));

// $IsAlloc axiom for newtype _module.EvenInt
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.EvenInt(), $h) } 
  $IsAlloc(x#0, Tclass._module.EvenInt(), $h));

const unique class._module.EvenInt: ClassName;

procedure {:verboseName "SmallReal (well-formedness)"} CheckWellFormed$$_module.SmallReal(r#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SmallReal (well-formedness)"} CheckWellFormed$$_module.SmallReal(r#0: real)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype SmallReal
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitReal(-4e0) <= r#0)
        {
        }

        assume {:id "id337"} LitReal(-4e0) <= r#0 && r#0 < 3e2;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id338"} {:subsumption 0} LitReal(-4e0) <= LitReal(0e0);
        assert {:id "id339"} {:subsumption 0} Lit(0e0 < 3e2);
        assume false;
    }
}



// $Is axiom for newtype _module.SmallReal
axiom (forall r#0: real :: 
  { $Is(r#0, Tclass._module.SmallReal()) } 
  $Is(r#0, Tclass._module.SmallReal()) <==> LitReal(-4e0) <= r#0 && r#0 < 3e2);

// $IsAlloc axiom for newtype _module.SmallReal
axiom (forall r#0: real, $h: Heap :: 
  { $IsAlloc(r#0, Tclass._module.SmallReal(), $h) } 
  $IsAlloc(r#0, Tclass._module.SmallReal(), $h));

const unique class._module.SmallReal: ClassName;

procedure {:verboseName "Handful (well-formedness)"} CheckWellFormed$$_module.Handful(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Handful (well-formedness)"} CheckWellFormed$$_module.Handful(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype Handful
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id340"} LitInt(0) <= x#0 && x#0 < 80;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id341"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id342"} {:subsumption 0} Lit(0 < 80);
        assume false;
    }
}



// $Is axiom for newtype _module.Handful
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Handful()) } 
  $Is(x#0, Tclass._module.Handful()) <==> LitInt(0) <= x#0 && x#0 < 80);

// $IsAlloc axiom for newtype _module.Handful
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Handful(), $h) } 
  $IsAlloc(x#0, Tclass._module.Handful(), $h));

const unique class._module.Handful: ClassName;

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

const unique tytagFamily$_#Func11: TyTagFamily;

const unique tytagFamily$_#PartialFunc11: TyTagFamily;

const unique tytagFamily$_#TotalFunc11: TyTagFamily;

const unique tytagFamily$EvenInt: TyTagFamily;

const unique tytagFamily$SmallReal: TyTagFamily;

const unique tytagFamily$Handful: TyTagFamily;
