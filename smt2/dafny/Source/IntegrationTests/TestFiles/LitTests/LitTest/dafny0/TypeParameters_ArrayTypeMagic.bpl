// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy

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

const unique class._System.array2?: ClassName;

function Tclass._System.array2?(Ty) : Ty;

const unique Tagclass._System.array2?: TyTag;

// Tclass._System.array2? Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tag(Tclass._System.array2?(_System.array2$arg)) == Tagclass._System.array2?
     && TagFamily(Tclass._System.array2?(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2?_0(Ty) : Ty;

// Tclass._System.array2? injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tclass._System.array2?_0(Tclass._System.array2?(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2?
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2?(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2?(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2?(_System.array2$arg)));

axiom (forall o: ref :: { _System.array2.Length0(o) } 0 <= _System.array2.Length0(o));

axiom (forall o: ref :: { _System.array2.Length1(o) } 0 <= _System.array2.Length1(o));

// array2.: Type axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
     ==> $IsBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg));

// array2.: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg, $h));

// $Is axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array2?(_System.array2$arg)) } 
  $Is($o, Tclass._System.array2?(_System.array2$arg))
     <==> $o == null || dtype($o) == Tclass._System.array2?(_System.array2$arg));

// $IsAlloc axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array2.Length0(ref) : int;

// array2.Length0: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length0($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length0($o), TInt));

// array2.Length0: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length0($o), TInt, $h));

function _System.array2.Length1(ref) : int;

// array2.Length1: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length1($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length1($o), TInt));

// array2.Length1: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length1($o), TInt, $h));

function Tclass._System.array2(Ty) : Ty;

const unique Tagclass._System.array2: TyTag;

// Tclass._System.array2 Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tag(Tclass._System.array2(_System.array2$arg)) == Tagclass._System.array2
     && TagFamily(Tclass._System.array2(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2_0(Ty) : Ty;

// Tclass._System.array2 injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tclass._System.array2_0(Tclass._System.array2(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2(_System.array2$arg)));

// $Is axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array2(_System.array2$arg)) } 
    { $Is(c#0, Tclass._System.array2?(_System.array2$arg)) } 
  $Is(c#0, Tclass._System.array2(_System.array2$arg))
     <==> $Is(c#0, Tclass._System.array2?(_System.array2$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h));

const unique class._System.array3?: ClassName;

function Tclass._System.array3?(Ty) : Ty;

const unique Tagclass._System.array3?: TyTag;

// Tclass._System.array3? Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tag(Tclass._System.array3?(_System.array3$arg)) == Tagclass._System.array3?
     && TagFamily(Tclass._System.array3?(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3?_0(Ty) : Ty;

// Tclass._System.array3? injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tclass._System.array3?_0(Tclass._System.array3?(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3?
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3?(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3?(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3?(_System.array3$arg)));

axiom (forall o: ref :: { _System.array3.Length0(o) } 0 <= _System.array3.Length0(o));

axiom (forall o: ref :: { _System.array3.Length1(o) } 0 <= _System.array3.Length1(o));

axiom (forall o: ref :: { _System.array3.Length2(o) } 0 <= _System.array3.Length2(o));

// array3.: Type axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
     ==> $IsBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg));

// array3.: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg, 
      $h));

// $Is axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array3?(_System.array3$arg)) } 
  $Is($o, Tclass._System.array3?(_System.array3$arg))
     <==> $o == null || dtype($o) == Tclass._System.array3?(_System.array3$arg));

// $IsAlloc axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array3.Length0(ref) : int;

// array3.Length0: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length0($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length0($o), TInt));

// array3.Length0: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length0($o), TInt, $h));

function _System.array3.Length1(ref) : int;

// array3.Length1: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length1($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length1($o), TInt));

// array3.Length1: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length1($o), TInt, $h));

function _System.array3.Length2(ref) : int;

// array3.Length2: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length2($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length2($o), TInt));

// array3.Length2: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length2($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length2($o), TInt, $h));

function Tclass._System.array3(Ty) : Ty;

const unique Tagclass._System.array3: TyTag;

// Tclass._System.array3 Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tag(Tclass._System.array3(_System.array3$arg)) == Tagclass._System.array3
     && TagFamily(Tclass._System.array3(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3_0(Ty) : Ty;

// Tclass._System.array3 injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tclass._System.array3_0(Tclass._System.array3(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3(_System.array3$arg)));

// $Is axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array3(_System.array3$arg)) } 
    { $Is(c#0, Tclass._System.array3?(_System.array3$arg)) } 
  $Is(c#0, Tclass._System.array3(_System.array3$arg))
     <==> $Is(c#0, Tclass._System.array3?(_System.array3$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h));

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

const unique class.ArrayTypeMagic.__default: ClassName;

procedure {:verboseName "ArrayTypeMagic.M (well-formedness)"} CheckWellFormed$$ArrayTypeMagic.__default.M(ArrayTypeMagic._default.M$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array2(ArrayTypeMagic._default.M$_T0))
         && $IsAlloc(a#0, Tclass._System.array2(ArrayTypeMagic._default.M$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTypeMagic.M (call)"} Call$$ArrayTypeMagic.__default.M(ArrayTypeMagic._default.M$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array2(ArrayTypeMagic._default.M$_T0))
         && $IsAlloc(a#0, Tclass._System.array2(ArrayTypeMagic._default.M$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTypeMagic.M (correctness)"} Impl$$ArrayTypeMagic.__default.M(ArrayTypeMagic._default.M$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array2(ArrayTypeMagic._default.M$_T0))
         && $IsAlloc(a#0, Tclass._System.array2(ArrayTypeMagic._default.M$_T0), $Heap))
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



procedure {:verboseName "ArrayTypeMagic.F (well-formedness)"} CheckWellFormed$$ArrayTypeMagic.__default.F(ArrayTypeMagic._default.F$_T0: Ty, 
    b#0: ref
       where $Is(b#0, Tclass._System.array(ArrayTypeMagic._default.F$_T0))
         && $IsAlloc(b#0, Tclass._System.array(ArrayTypeMagic._default.F$_T0), $Heap))
   returns (s#0: Seq
       where $Is(s#0, TSeq(ArrayTypeMagic._default.F$_T0))
         && $IsAlloc(s#0, TSeq(ArrayTypeMagic._default.F$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTypeMagic.F (call)"} Call$$ArrayTypeMagic.__default.F(ArrayTypeMagic._default.F$_T0: Ty, 
    b#0: ref
       where $Is(b#0, Tclass._System.array(ArrayTypeMagic._default.F$_T0))
         && $IsAlloc(b#0, Tclass._System.array(ArrayTypeMagic._default.F$_T0), $Heap))
   returns (s#0: Seq
       where $Is(s#0, TSeq(ArrayTypeMagic._default.F$_T0))
         && $IsAlloc(s#0, TSeq(ArrayTypeMagic._default.F$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTypeMagic.F (correctness)"} Impl$$ArrayTypeMagic.__default.F(ArrayTypeMagic._default.F$_T0: Ty, 
    b#0: ref
       where $Is(b#0, Tclass._System.array(ArrayTypeMagic._default.F$_T0))
         && $IsAlloc(b#0, Tclass._System.array(ArrayTypeMagic._default.F$_T0), $Heap))
   returns (s#0: Seq
       where $Is(s#0, TSeq(ArrayTypeMagic._default.F$_T0))
         && $IsAlloc(s#0, TSeq(ArrayTypeMagic._default.F$_T0), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTypeMagic.F (correctness)"} Impl$$ArrayTypeMagic.__default.F(ArrayTypeMagic._default.F$_T0: Ty, b#0: ref)
   returns (s#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: F, Impl$$ArrayTypeMagic.__default.F
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(331,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(331,5)
    assume true;
    assert {:id "id13"} b#0 != null;
    assume true;
    s#0 := Seq#FromArray($Heap, b#0);
    return;
}



// function declaration for ArrayTypeMagic._default.G
function ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType) : ref
uses {
// consequence axiom for ArrayTypeMagic.__default.G
axiom 1 <= $FunctionContextHeight
   ==> (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
    { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0) } 
    ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, t#0)
         || (1 < $FunctionContextHeight
           && $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0)))
       ==> $Is(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0), 
        Tclass._System.array3(ArrayTypeMagic._default.G$_T0)));
// alloc consequence axiom for ArrayTypeMagic.__default.G
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      ArrayTypeMagic._default.G$_T0: Ty, 
      $ly: LayerType, 
      t#0: DatatypeType :: 
    { $IsAlloc(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0), 
        Tclass._System.array3(ArrayTypeMagic._default.G$_T0), 
        $Heap) } 
    (ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, t#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0))
             && $IsAlloc(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0), 
        Tclass._System.array3(ArrayTypeMagic._default.G$_T0), 
        $Heap));
// definition axiom for ArrayTypeMagic.__default.G (revealed)
axiom {:id "id15"} 1 <= $FunctionContextHeight
   ==> (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
    { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0) } 
    ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, t#0)
         || (1 < $FunctionContextHeight
           && $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0)))
       ==> (!ArrayTypeMagic.ArrayCubeTree.Leaf_q(t#0)
           ==> (var l#1 := ArrayTypeMagic.ArrayCubeTree._h5(t#0); 
            ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, l#1)))
         && ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0)
           == (if ArrayTypeMagic.ArrayCubeTree.Leaf_q(t#0)
             then (var d#0 := ArrayTypeMagic.ArrayCubeTree._h4(t#0); d#0)
             else (var l#0 := ArrayTypeMagic.ArrayCubeTree._h5(t#0); 
              ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, l#0))));
// definition axiom for ArrayTypeMagic.__default.G for all literals (revealed)
axiom {:id "id16"} 1 <= $FunctionContextHeight
   ==> (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), Lit(t#0)) } 
    ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, Lit(t#0))
         || (1 < $FunctionContextHeight
           && $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0)))
       ==> (!Lit(ArrayTypeMagic.ArrayCubeTree.Leaf_q(Lit(t#0)))
           ==> (var l#3 := Lit(ArrayTypeMagic.ArrayCubeTree._h5(Lit(t#0))); 
            ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, l#3)))
         && ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), Lit(t#0))
           == (if ArrayTypeMagic.ArrayCubeTree.Leaf_q(Lit(t#0))
             then (var d#2 := Lit(ArrayTypeMagic.ArrayCubeTree._h4(Lit(t#0))); d#2)
             else (var l#2 := Lit(ArrayTypeMagic.ArrayCubeTree._h5(Lit(t#0))); 
              Lit(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), l#2)))));
}

function ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0: Ty, t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0) } 
  ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0)
     == ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0));

// fuel synonym axiom
axiom (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, AsFuelBottom($ly), t#0) } 
  ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0)
     == ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LZ, t#0));

function Tclass.ArrayTypeMagic.ArrayCubeTree(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.ArrayCubeTree: TyTag;

// Tclass.ArrayTypeMagic.ArrayCubeTree Tag
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty :: 
  { Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T) } 
  Tag(Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
       == Tagclass.ArrayTypeMagic.ArrayCubeTree
     && TagFamily(Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
       == tytagFamily$ArrayCubeTree);

function Tclass.ArrayTypeMagic.ArrayCubeTree_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.ArrayCubeTree injectivity 0
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty :: 
  { Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T) } 
  Tclass.ArrayTypeMagic.ArrayCubeTree_0(Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     == ArrayTypeMagic.ArrayCubeTree$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.ArrayCubeTree
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)));

function ArrayTypeMagic.__default.G#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for ArrayTypeMagic.__default.G
axiom (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G#requires(ArrayTypeMagic._default.G$_T0, $ly, t#0) } 
  $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0))
     ==> ArrayTypeMagic.__default.G#requires(ArrayTypeMagic._default.G$_T0, $ly, t#0)
       == true);

procedure {:verboseName "ArrayTypeMagic.G (well-formedness)"} CheckWellformed$$ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0: Ty, 
    t#0: DatatypeType
       where $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTypeMagic.G (well-formedness)"} CheckWellformed$$ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0: Ty, t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var l#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##t#0: DatatypeType;
  var _mcc#0#0: ref;
  var d#Z#0: ref;
  var let#1#0#0: ref;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($LZ), t#0), 
          Tclass._System.array3(ArrayTypeMagic._default.G$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (t#0 == #ArrayTypeMagic.ArrayCubeTree.Leaf(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._System.array3(ArrayTypeMagic._default.G$_T0));
            havoc d#Z#0;
            assume {:id "id21"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._System.array3(ArrayTypeMagic._default.G$_T0));
            assume {:id "id22"} d#Z#0 == let#1#0#0;
            assume {:id "id23"} ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($LZ), t#0)
               == d#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($LZ), t#0), 
              Tclass._System.array3(ArrayTypeMagic._default.G$_T0));
            return;
        }
        else if (t#0 == #ArrayTypeMagic.ArrayCubeTree.Node(_mcc#1#0, _mcc#2#0))
        {
            assume $Is(_mcc#1#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0));
            assume $Is(_mcc#2#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0));
            havoc l#Z#0;
            assume {:id "id17"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0));
            assume {:id "id18"} l#Z#0 == let#0#0#0;
            ##t#0 := l#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0), $Heap);
            assert {:id "id19"} DtRank(##t#0) < DtRank(t#0);
            assume ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, l#Z#0);
            assume {:id "id20"} ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($LZ), t#0)
               == ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($LZ), l#Z#0);
            assume ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, l#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($LZ), t#0), 
              Tclass._System.array3(ArrayTypeMagic._default.G$_T0));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// Constructor function declaration
function #ArrayTypeMagic.ArrayCubeTree.Leaf(ref) : DatatypeType;

const unique ##ArrayTypeMagic.ArrayCubeTree.Leaf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: ref :: 
  { #ArrayTypeMagic.ArrayCubeTree.Leaf(a#0#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#0#0#0))
     == ##ArrayTypeMagic.ArrayCubeTree.Leaf);
}

function ArrayTypeMagic.ArrayCubeTree.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Leaf_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.ArrayCubeTree.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Leaf_q(d)
     ==> (exists a#1#0#0: ref :: d == #ArrayTypeMagic.ArrayCubeTree.Leaf(a#1#0#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, a#2#0#0: ref :: 
  { $Is(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $Is(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     <==> $Is(a#2#0#0, Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, a#2#0#0: ref, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
        Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
        $h)
       <==> $IsAlloc(a#2#0#0, Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.ArrayCubeTree$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h4(d), 
      Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.ArrayCubeTree.Leaf_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h4(d), 
      Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T), 
      $h));

// Constructor literal
axiom (forall a#3#0#0: ref :: 
  { #ArrayTypeMagic.ArrayCubeTree.Leaf(Lit(a#3#0#0)) } 
  #ArrayTypeMagic.ArrayCubeTree.Leaf(Lit(a#3#0#0))
     == Lit(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#3#0#0)));

function ArrayTypeMagic.ArrayCubeTree._h4(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#4#0#0: ref :: 
  { #ArrayTypeMagic.ArrayCubeTree.Leaf(a#4#0#0) } 
  ArrayTypeMagic.ArrayCubeTree._h4(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#4#0#0))
     == a#4#0#0);

// Constructor function declaration
function #ArrayTypeMagic.ArrayCubeTree.Node(DatatypeType, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.ArrayCubeTree.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: DatatypeType, a#5#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#5#0#0, a#5#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.ArrayCubeTree.Node(a#5#0#0, a#5#1#0))
     == ##ArrayTypeMagic.ArrayCubeTree.Node);
}

function ArrayTypeMagic.ArrayCubeTree.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Node_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Node_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.ArrayCubeTree.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Node_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Node_q(d)
     ==> (exists a#6#0#0: DatatypeType, a#6#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.ArrayCubeTree.Node(a#6#0#0, a#6#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, a#7#0#0: DatatypeType, a#7#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $Is(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     <==> $Is(a#7#0#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
       && $Is(a#7#1#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, 
    a#7#0#0: DatatypeType, 
    a#7#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
        Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
        $h)
       <==> $IsAlloc(a#7#0#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
         && $IsAlloc(a#7#1#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.ArrayCubeTree$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h5(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.ArrayCubeTree.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h5(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.ArrayCubeTree$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h6(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.ArrayCubeTree.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h6(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h));

// Constructor literal
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(Lit(a#8#0#0), Lit(a#8#1#0)) } 
  #ArrayTypeMagic.ArrayCubeTree.Node(Lit(a#8#0#0), Lit(a#8#1#0))
     == Lit(#ArrayTypeMagic.ArrayCubeTree.Node(a#8#0#0, a#8#1#0)));

function ArrayTypeMagic.ArrayCubeTree._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#9#0#0, a#9#1#0) } 
  ArrayTypeMagic.ArrayCubeTree._h5(#ArrayTypeMagic.ArrayCubeTree.Node(a#9#0#0, a#9#1#0))
     == a#9#0#0);

// Inductive rank
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#10#0#0, a#10#1#0) } 
  DtRank(a#10#0#0)
     < DtRank(#ArrayTypeMagic.ArrayCubeTree.Node(a#10#0#0, a#10#1#0)));

function ArrayTypeMagic.ArrayCubeTree._h6(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#11#0#0, a#11#1#0) } 
  ArrayTypeMagic.ArrayCubeTree._h6(#ArrayTypeMagic.ArrayCubeTree.Node(a#11#0#0, a#11#1#0))
     == a#11#1#0);

// Inductive rank
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#12#0#0, a#12#1#0) } 
  DtRank(a#12#1#0)
     < DtRank(#ArrayTypeMagic.ArrayCubeTree.Node(a#12#0#0, a#12#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.ArrayCubeTree(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.ArrayCubeTree(d) } 
  $IsA#ArrayTypeMagic.ArrayCubeTree(d)
     ==> ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) || ArrayTypeMagic.ArrayCubeTree.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Node_q(d), $Is(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
    { ArrayTypeMagic.ArrayCubeTree.Leaf_q(d), $Is(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     ==> ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) || ArrayTypeMagic.ArrayCubeTree.Node_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.ArrayCubeTree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.ArrayCubeTree.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Leaf_q(a) } 
    { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Leaf_q(b) } 
  ArrayTypeMagic.ArrayCubeTree.Leaf_q(a) && ArrayTypeMagic.ArrayCubeTree.Leaf_q(b)
     ==> (ArrayTypeMagic.ArrayCubeTree#Equal(a, b)
       <==> ArrayTypeMagic.ArrayCubeTree._h4(a) == ArrayTypeMagic.ArrayCubeTree._h4(b)));

// Datatype extensional equality definition: #ArrayTypeMagic.ArrayCubeTree.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Node_q(a) } 
    { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Node_q(b) } 
  ArrayTypeMagic.ArrayCubeTree.Node_q(a) && ArrayTypeMagic.ArrayCubeTree.Node_q(b)
     ==> (ArrayTypeMagic.ArrayCubeTree#Equal(a, b)
       <==> ArrayTypeMagic.ArrayCubeTree#Equal(ArrayTypeMagic.ArrayCubeTree._h5(a), ArrayTypeMagic.ArrayCubeTree._h5(b))
         && ArrayTypeMagic.ArrayCubeTree#Equal(ArrayTypeMagic.ArrayCubeTree._h6(a), ArrayTypeMagic.ArrayCubeTree._h6(b))));

// Datatype extensionality axiom: ArrayTypeMagic.ArrayCubeTree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree#Equal(a, b) } 
  ArrayTypeMagic.ArrayCubeTree#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.ArrayCubeTree: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.AnotherACT.Leaf(ref) : DatatypeType;

const unique ##ArrayTypeMagic.AnotherACT.Leaf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#13#0#0: ref :: 
  { #ArrayTypeMagic.AnotherACT.Leaf(a#13#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.AnotherACT.Leaf(a#13#0#0))
     == ##ArrayTypeMagic.AnotherACT.Leaf);
}

function ArrayTypeMagic.AnotherACT.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Leaf_q(d) } 
  ArrayTypeMagic.AnotherACT.Leaf_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.AnotherACT.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Leaf_q(d) } 
  ArrayTypeMagic.AnotherACT.Leaf_q(d)
     ==> (exists a#14#0#0: ref :: d == #ArrayTypeMagic.AnotherACT.Leaf(a#14#0#0)));

function Tclass.ArrayTypeMagic.AnotherACT(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.AnotherACT: TyTag;

// Tclass.ArrayTypeMagic.AnotherACT Tag
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty :: 
  { Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T) } 
  Tag(Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
       == Tagclass.ArrayTypeMagic.AnotherACT
     && TagFamily(Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
       == tytagFamily$AnotherACT);

function Tclass.ArrayTypeMagic.AnotherACT_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.AnotherACT injectivity 0
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty :: 
  { Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T) } 
  Tclass.ArrayTypeMagic.AnotherACT_0(Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     == ArrayTypeMagic.AnotherACT$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.AnotherACT
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)));

// Constructor $Is
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, a#15#0#0: ref :: 
  { $Is(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $Is(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     <==> $Is(a#15#0#0, Tclass._System.array3(ArrayTypeMagic.AnotherACT$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, a#15#0#0: ref, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
        Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
        $h)
       <==> $IsAlloc(a#15#0#0, Tclass._System.array3(ArrayTypeMagic.AnotherACT$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.AnotherACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.AnotherACT._h7(d), 
      Tclass._System.array3(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.AnotherACT.Leaf_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.AnotherACT._h7(d), 
      Tclass._System.array3(ArrayTypeMagic.AnotherACT$T), 
      $h));

// Constructor literal
axiom (forall a#16#0#0: ref :: 
  { #ArrayTypeMagic.AnotherACT.Leaf(Lit(a#16#0#0)) } 
  #ArrayTypeMagic.AnotherACT.Leaf(Lit(a#16#0#0))
     == Lit(#ArrayTypeMagic.AnotherACT.Leaf(a#16#0#0)));

function ArrayTypeMagic.AnotherACT._h7(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#17#0#0: ref :: 
  { #ArrayTypeMagic.AnotherACT.Leaf(a#17#0#0) } 
  ArrayTypeMagic.AnotherACT._h7(#ArrayTypeMagic.AnotherACT.Leaf(a#17#0#0))
     == a#17#0#0);

// Constructor function declaration
function #ArrayTypeMagic.AnotherACT.Node(DatatypeType, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.AnotherACT.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#18#0#0: DatatypeType, a#18#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#18#0#0, a#18#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.AnotherACT.Node(a#18#0#0, a#18#1#0))
     == ##ArrayTypeMagic.AnotherACT.Node);
}

function ArrayTypeMagic.AnotherACT.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Node_q(d) } 
  ArrayTypeMagic.AnotherACT.Node_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.AnotherACT.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Node_q(d) } 
  ArrayTypeMagic.AnotherACT.Node_q(d)
     ==> (exists a#19#0#0: DatatypeType, a#19#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.AnotherACT.Node(a#19#0#0, a#19#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, a#20#0#0: DatatypeType, a#20#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $Is(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     <==> $Is(a#20#0#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
       && $Is(a#20#1#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, 
    a#20#0#0: DatatypeType, 
    a#20#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
        Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
        $h)
       <==> $IsAlloc(a#20#0#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
         && $IsAlloc(a#20#1#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.AnotherACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.AnotherACT._h8(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.AnotherACT.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.AnotherACT._h8(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.AnotherACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.AnotherACT._h9(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.AnotherACT.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.AnotherACT._h9(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h));

// Constructor literal
axiom (forall a#21#0#0: DatatypeType, a#21#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(Lit(a#21#0#0), Lit(a#21#1#0)) } 
  #ArrayTypeMagic.AnotherACT.Node(Lit(a#21#0#0), Lit(a#21#1#0))
     == Lit(#ArrayTypeMagic.AnotherACT.Node(a#21#0#0, a#21#1#0)));

function ArrayTypeMagic.AnotherACT._h8(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#22#0#0: DatatypeType, a#22#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#22#0#0, a#22#1#0) } 
  ArrayTypeMagic.AnotherACT._h8(#ArrayTypeMagic.AnotherACT.Node(a#22#0#0, a#22#1#0))
     == a#22#0#0);

// Inductive rank
axiom (forall a#23#0#0: DatatypeType, a#23#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#23#0#0, a#23#1#0) } 
  DtRank(a#23#0#0) < DtRank(#ArrayTypeMagic.AnotherACT.Node(a#23#0#0, a#23#1#0)));

function ArrayTypeMagic.AnotherACT._h9(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#24#0#0, a#24#1#0) } 
  ArrayTypeMagic.AnotherACT._h9(#ArrayTypeMagic.AnotherACT.Node(a#24#0#0, a#24#1#0))
     == a#24#1#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType, a#25#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#25#0#0, a#25#1#0) } 
  DtRank(a#25#1#0) < DtRank(#ArrayTypeMagic.AnotherACT.Node(a#25#0#0, a#25#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.AnotherACT(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.AnotherACT(d) } 
  $IsA#ArrayTypeMagic.AnotherACT(d)
     ==> ArrayTypeMagic.AnotherACT.Leaf_q(d) || ArrayTypeMagic.AnotherACT.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Node_q(d), $Is(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
    { ArrayTypeMagic.AnotherACT.Leaf_q(d), $Is(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     ==> ArrayTypeMagic.AnotherACT.Leaf_q(d) || ArrayTypeMagic.AnotherACT.Node_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.AnotherACT#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.AnotherACT.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Leaf_q(a) } 
    { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Leaf_q(b) } 
  ArrayTypeMagic.AnotherACT.Leaf_q(a) && ArrayTypeMagic.AnotherACT.Leaf_q(b)
     ==> (ArrayTypeMagic.AnotherACT#Equal(a, b)
       <==> ArrayTypeMagic.AnotherACT._h7(a) == ArrayTypeMagic.AnotherACT._h7(b)));

// Datatype extensional equality definition: #ArrayTypeMagic.AnotherACT.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Node_q(a) } 
    { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Node_q(b) } 
  ArrayTypeMagic.AnotherACT.Node_q(a) && ArrayTypeMagic.AnotherACT.Node_q(b)
     ==> (ArrayTypeMagic.AnotherACT#Equal(a, b)
       <==> ArrayTypeMagic.AnotherACT#Equal(ArrayTypeMagic.AnotherACT._h8(a), ArrayTypeMagic.AnotherACT._h8(b))
         && ArrayTypeMagic.AnotherACT#Equal(ArrayTypeMagic.AnotherACT._h9(a), ArrayTypeMagic.AnotherACT._h9(b))));

// Datatype extensionality axiom: ArrayTypeMagic.AnotherACT
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT#Equal(a, b) } 
  ArrayTypeMagic.AnotherACT#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.AnotherACT: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.OneMoreACT.Leaf(ref) : DatatypeType;

const unique ##ArrayTypeMagic.OneMoreACT.Leaf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#26#0#0: ref :: 
  { #ArrayTypeMagic.OneMoreACT.Leaf(a#26#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.OneMoreACT.Leaf(a#26#0#0))
     == ##ArrayTypeMagic.OneMoreACT.Leaf);
}

function ArrayTypeMagic.OneMoreACT.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Leaf_q(d) } 
  ArrayTypeMagic.OneMoreACT.Leaf_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.OneMoreACT.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Leaf_q(d) } 
  ArrayTypeMagic.OneMoreACT.Leaf_q(d)
     ==> (exists a#27#0#0: ref :: d == #ArrayTypeMagic.OneMoreACT.Leaf(a#27#0#0)));

function Tclass.ArrayTypeMagic.OneMoreACT(Ty, Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.OneMoreACT: TyTag;

// Tclass.ArrayTypeMagic.OneMoreACT Tag
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty :: 
  { Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U) } 
  Tag(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
       == Tagclass.ArrayTypeMagic.OneMoreACT
     && TagFamily(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
       == tytagFamily$OneMoreACT);

function Tclass.ArrayTypeMagic.OneMoreACT_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.OneMoreACT injectivity 0
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty :: 
  { Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U) } 
  Tclass.ArrayTypeMagic.OneMoreACT_0(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     == ArrayTypeMagic.OneMoreACT$T);

function Tclass.ArrayTypeMagic.OneMoreACT_1(Ty) : Ty;

// Tclass.ArrayTypeMagic.OneMoreACT injectivity 1
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty :: 
  { Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U) } 
  Tclass.ArrayTypeMagic.OneMoreACT_1(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     == ArrayTypeMagic.OneMoreACT$U);

// Box/unbox axiom for Tclass.ArrayTypeMagic.OneMoreACT
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $IsBox(bx, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)));

// Constructor $Is
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty, a#28#0#0: ref :: 
  { $Is(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $Is(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     <==> $Is(a#28#0#0, Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    a#28#0#0: ref, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
       <==> $IsAlloc(a#28#0#0, Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.OneMoreACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.OneMoreACT._h10(d), 
      Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.OneMoreACT.Leaf_q(d)
       && (exists ArrayTypeMagic.OneMoreACT$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
          $h))
     ==> $IsAlloc(ArrayTypeMagic.OneMoreACT._h10(d), 
      Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T), 
      $h));

// Constructor literal
axiom (forall a#29#0#0: ref :: 
  { #ArrayTypeMagic.OneMoreACT.Leaf(Lit(a#29#0#0)) } 
  #ArrayTypeMagic.OneMoreACT.Leaf(Lit(a#29#0#0))
     == Lit(#ArrayTypeMagic.OneMoreACT.Leaf(a#29#0#0)));

function ArrayTypeMagic.OneMoreACT._h10(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#30#0#0: ref :: 
  { #ArrayTypeMagic.OneMoreACT.Leaf(a#30#0#0) } 
  ArrayTypeMagic.OneMoreACT._h10(#ArrayTypeMagic.OneMoreACT.Leaf(a#30#0#0))
     == a#30#0#0);

// Constructor function declaration
function #ArrayTypeMagic.OneMoreACT.Node(DatatypeType, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.OneMoreACT.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#31#0#0: DatatypeType, a#31#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#31#0#0, a#31#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.OneMoreACT.Node(a#31#0#0, a#31#1#0))
     == ##ArrayTypeMagic.OneMoreACT.Node);
}

function ArrayTypeMagic.OneMoreACT.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Node_q(d) } 
  ArrayTypeMagic.OneMoreACT.Node_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.OneMoreACT.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Node_q(d) } 
  ArrayTypeMagic.OneMoreACT.Node_q(d)
     ==> (exists a#32#0#0: DatatypeType, a#32#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.OneMoreACT.Node(a#32#0#0, a#32#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    a#33#0#0: DatatypeType, 
    a#33#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $Is(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     <==> $Is(a#33#0#0, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
       && $Is(a#33#1#0, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    a#33#0#0: DatatypeType, 
    a#33#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
       <==> $IsAlloc(a#33#0#0, 
          Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
          $h)
         && $IsAlloc(a#33#1#0, 
          Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.OneMoreACT._h11(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.OneMoreACT.Node_q(d)
       && $IsAlloc(d, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
     ==> $IsAlloc(ArrayTypeMagic.OneMoreACT._h11(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.OneMoreACT._h12(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.OneMoreACT.Node_q(d)
       && $IsAlloc(d, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
     ==> $IsAlloc(ArrayTypeMagic.OneMoreACT._h12(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h));

// Constructor literal
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(Lit(a#34#0#0), Lit(a#34#1#0)) } 
  #ArrayTypeMagic.OneMoreACT.Node(Lit(a#34#0#0), Lit(a#34#1#0))
     == Lit(#ArrayTypeMagic.OneMoreACT.Node(a#34#0#0, a#34#1#0)));

function ArrayTypeMagic.OneMoreACT._h11(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#35#0#0, a#35#1#0) } 
  ArrayTypeMagic.OneMoreACT._h11(#ArrayTypeMagic.OneMoreACT.Node(a#35#0#0, a#35#1#0))
     == a#35#0#0);

// Inductive rank
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#36#0#0, a#36#1#0) } 
  DtRank(a#36#0#0) < DtRank(#ArrayTypeMagic.OneMoreACT.Node(a#36#0#0, a#36#1#0)));

function ArrayTypeMagic.OneMoreACT._h12(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#37#0#0: DatatypeType, a#37#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#37#0#0, a#37#1#0) } 
  ArrayTypeMagic.OneMoreACT._h12(#ArrayTypeMagic.OneMoreACT.Node(a#37#0#0, a#37#1#0))
     == a#37#1#0);

// Inductive rank
axiom (forall a#38#0#0: DatatypeType, a#38#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#38#0#0, a#38#1#0) } 
  DtRank(a#38#1#0) < DtRank(#ArrayTypeMagic.OneMoreACT.Node(a#38#0#0, a#38#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.OneMoreACT(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.OneMoreACT(d) } 
  $IsA#ArrayTypeMagic.OneMoreACT(d)
     ==> ArrayTypeMagic.OneMoreACT.Leaf_q(d) || ArrayTypeMagic.OneMoreACT.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Node_q(d), $Is(d, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
    { ArrayTypeMagic.OneMoreACT.Leaf_q(d), $Is(d, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $Is(d, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     ==> ArrayTypeMagic.OneMoreACT.Leaf_q(d) || ArrayTypeMagic.OneMoreACT.Node_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.OneMoreACT#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.OneMoreACT.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Leaf_q(a) } 
    { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Leaf_q(b) } 
  ArrayTypeMagic.OneMoreACT.Leaf_q(a) && ArrayTypeMagic.OneMoreACT.Leaf_q(b)
     ==> (ArrayTypeMagic.OneMoreACT#Equal(a, b)
       <==> ArrayTypeMagic.OneMoreACT._h10(a) == ArrayTypeMagic.OneMoreACT._h10(b)));

// Datatype extensional equality definition: #ArrayTypeMagic.OneMoreACT.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Node_q(a) } 
    { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Node_q(b) } 
  ArrayTypeMagic.OneMoreACT.Node_q(a) && ArrayTypeMagic.OneMoreACT.Node_q(b)
     ==> (ArrayTypeMagic.OneMoreACT#Equal(a, b)
       <==> ArrayTypeMagic.OneMoreACT#Equal(ArrayTypeMagic.OneMoreACT._h11(a), ArrayTypeMagic.OneMoreACT._h11(b))
         && ArrayTypeMagic.OneMoreACT#Equal(ArrayTypeMagic.OneMoreACT._h12(a), ArrayTypeMagic.OneMoreACT._h12(b))));

// Datatype extensionality axiom: ArrayTypeMagic.OneMoreACT
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT#Equal(a, b) } 
  ArrayTypeMagic.OneMoreACT#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.OneMoreACT: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.Nat.Zero() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.Nat.Zero()) == ##ArrayTypeMagic.Nat.Zero;
// Constructor $Is
axiom $Is(#ArrayTypeMagic.Nat.Zero(), Tclass.ArrayTypeMagic.Nat());
// Constructor literal
axiom #ArrayTypeMagic.Nat.Zero() == Lit(#ArrayTypeMagic.Nat.Zero());
}

const unique ##ArrayTypeMagic.Nat.Zero: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.Nat.Zero()) == ##ArrayTypeMagic.Nat.Zero;
}

function ArrayTypeMagic.Nat.Zero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Zero_q(d) } 
  ArrayTypeMagic.Nat.Zero_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.Nat.Zero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Zero_q(d) } 
  ArrayTypeMagic.Nat.Zero_q(d) ==> d == #ArrayTypeMagic.Nat.Zero());

function Tclass.ArrayTypeMagic.Nat() : Ty
uses {
// Tclass.ArrayTypeMagic.Nat Tag
axiom Tag(Tclass.ArrayTypeMagic.Nat()) == Tagclass.ArrayTypeMagic.Nat
   && TagFamily(Tclass.ArrayTypeMagic.Nat()) == tytagFamily$Nat;
}

const unique Tagclass.ArrayTypeMagic.Nat: TyTag;

// Box/unbox axiom for Tclass.ArrayTypeMagic.Nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.Nat()) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.Nat())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ArrayTypeMagic.Nat()));

// Constructor function declaration
function #ArrayTypeMagic.Nat.Succ(DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.Nat.Succ: DtCtorId
uses {
// Constructor identifier
axiom (forall a#43#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(a#43#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.Nat.Succ(a#43#0#0)) == ##ArrayTypeMagic.Nat.Succ);
}

function ArrayTypeMagic.Nat.Succ_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Succ_q(d) } 
  ArrayTypeMagic.Nat.Succ_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.Nat.Succ);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Succ_q(d) } 
  ArrayTypeMagic.Nat.Succ_q(d)
     ==> (exists a#44#0#0: DatatypeType :: d == #ArrayTypeMagic.Nat.Succ(a#44#0#0)));

// Constructor $Is
axiom (forall a#45#0#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.Nat.Succ(a#45#0#0), Tclass.ArrayTypeMagic.Nat()) } 
  $Is(#ArrayTypeMagic.Nat.Succ(a#45#0#0), Tclass.ArrayTypeMagic.Nat())
     <==> $Is(a#45#0#0, Tclass.ArrayTypeMagic.Nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.Nat._h14(d), Tclass.ArrayTypeMagic.Nat(), $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.Nat.Succ_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.Nat(), $h)
     ==> $IsAlloc(ArrayTypeMagic.Nat._h14(d), Tclass.ArrayTypeMagic.Nat(), $h));

// Constructor literal
axiom (forall a#46#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(Lit(a#46#0#0)) } 
  #ArrayTypeMagic.Nat.Succ(Lit(a#46#0#0))
     == Lit(#ArrayTypeMagic.Nat.Succ(a#46#0#0)));

function ArrayTypeMagic.Nat._h14(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#47#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(a#47#0#0) } 
  ArrayTypeMagic.Nat._h14(#ArrayTypeMagic.Nat.Succ(a#47#0#0)) == a#47#0#0);

// Inductive rank
axiom (forall a#48#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(a#48#0#0) } 
  DtRank(a#48#0#0) < DtRank(#ArrayTypeMagic.Nat.Succ(a#48#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.ArrayTypeMagic.Nat(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.ArrayTypeMagic.Nat())
     ==> $IsAlloc(d, Tclass.ArrayTypeMagic.Nat(), $h));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.Nat(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.Nat(d) } 
  $IsA#ArrayTypeMagic.Nat(d)
     ==> ArrayTypeMagic.Nat.Zero_q(d) || ArrayTypeMagic.Nat.Succ_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Succ_q(d), $Is(d, Tclass.ArrayTypeMagic.Nat()) } 
    { ArrayTypeMagic.Nat.Zero_q(d), $Is(d, Tclass.ArrayTypeMagic.Nat()) } 
  $Is(d, Tclass.ArrayTypeMagic.Nat())
     ==> ArrayTypeMagic.Nat.Zero_q(d) || ArrayTypeMagic.Nat.Succ_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.Nat#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.Nat.Zero
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Zero_q(a) } 
    { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Zero_q(b) } 
  ArrayTypeMagic.Nat.Zero_q(a) && ArrayTypeMagic.Nat.Zero_q(b)
     ==> ArrayTypeMagic.Nat#Equal(a, b));

// Datatype extensional equality definition: #ArrayTypeMagic.Nat.Succ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Succ_q(a) } 
    { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Succ_q(b) } 
  ArrayTypeMagic.Nat.Succ_q(a) && ArrayTypeMagic.Nat.Succ_q(b)
     ==> (ArrayTypeMagic.Nat#Equal(a, b)
       <==> ArrayTypeMagic.Nat#Equal(ArrayTypeMagic.Nat._h14(a), ArrayTypeMagic.Nat._h14(b))));

// Datatype extensionality axiom: ArrayTypeMagic.Nat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Nat#Equal(a, b) } 
  ArrayTypeMagic.Nat#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.Nat: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.List.Nil()) == ##ArrayTypeMagic.List.Nil;
// Constructor literal
axiom #ArrayTypeMagic.List.Nil() == Lit(#ArrayTypeMagic.List.Nil());
}

const unique ##ArrayTypeMagic.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.List.Nil()) == ##ArrayTypeMagic.List.Nil;
}

function ArrayTypeMagic.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Nil_q(d) } 
  ArrayTypeMagic.List.Nil_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Nil_q(d) } 
  ArrayTypeMagic.List.Nil_q(d) ==> d == #ArrayTypeMagic.List.Nil());

function Tclass.ArrayTypeMagic.List(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.List: TyTag;

// Tclass.ArrayTypeMagic.List Tag
axiom (forall ArrayTypeMagic.List$T: Ty :: 
  { Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T) } 
  Tag(Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
       == Tagclass.ArrayTypeMagic.List
     && TagFamily(Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) == tytagFamily$List);

function Tclass.ArrayTypeMagic.List_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.List injectivity 0
axiom (forall ArrayTypeMagic.List$T: Ty :: 
  { Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T) } 
  Tclass.ArrayTypeMagic.List_0(Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     == ArrayTypeMagic.List$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.List
axiom (forall ArrayTypeMagic.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)));

// Constructor $Is
axiom (forall ArrayTypeMagic.List$T: Ty :: 
  { $Is(#ArrayTypeMagic.List.Nil(), Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $Is(#ArrayTypeMagic.List.Nil(), Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.List.Nil(), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#ArrayTypeMagic.List.Nil(), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h));

// Constructor function declaration
function #ArrayTypeMagic.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#53#0#0: Box, a#53#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#53#0#0, a#53#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.List.Cons(a#53#0#0, a#53#1#0))
     == ##ArrayTypeMagic.List.Cons);
}

function ArrayTypeMagic.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Cons_q(d) } 
  ArrayTypeMagic.List.Cons_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Cons_q(d) } 
  ArrayTypeMagic.List.Cons_q(d)
     ==> (exists a#54#0#0: Box, a#54#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.List.Cons(a#54#0#0, a#54#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.List$T: Ty, a#55#0#0: Box, a#55#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $Is(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     <==> $IsBox(a#55#0#0, ArrayTypeMagic.List$T)
       && $Is(a#55#1#0, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.List$T: Ty, a#55#0#0: Box, a#55#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
        Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
        $h)
       <==> $IsAllocBox(a#55#0#0, ArrayTypeMagic.List$T, $h)
         && $IsAlloc(a#55#1#0, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.List._h15(d), ArrayTypeMagic.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), $h)
     ==> $IsAllocBox(ArrayTypeMagic.List._h15(d), ArrayTypeMagic.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.List$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.List._h16(d), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.List._h16(d), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h));

// Constructor literal
axiom (forall a#56#0#0: Box, a#56#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(Lit(a#56#0#0), Lit(a#56#1#0)) } 
  #ArrayTypeMagic.List.Cons(Lit(a#56#0#0), Lit(a#56#1#0))
     == Lit(#ArrayTypeMagic.List.Cons(a#56#0#0, a#56#1#0)));

function ArrayTypeMagic.List._h15(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#57#0#0: Box, a#57#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#57#0#0, a#57#1#0) } 
  ArrayTypeMagic.List._h15(#ArrayTypeMagic.List.Cons(a#57#0#0, a#57#1#0))
     == a#57#0#0);

// Inductive rank
axiom (forall a#58#0#0: Box, a#58#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#58#0#0, a#58#1#0) } 
  BoxRank(a#58#0#0) < DtRank(#ArrayTypeMagic.List.Cons(a#58#0#0, a#58#1#0)));

function ArrayTypeMagic.List._h16(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#59#0#0: Box, a#59#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#59#0#0, a#59#1#0) } 
  ArrayTypeMagic.List._h16(#ArrayTypeMagic.List.Cons(a#59#0#0, a#59#1#0))
     == a#59#1#0);

// Inductive rank
axiom (forall a#60#0#0: Box, a#60#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#60#0#0, a#60#1#0) } 
  DtRank(a#60#1#0) < DtRank(#ArrayTypeMagic.List.Cons(a#60#0#0, a#60#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.List(d) } 
  $IsA#ArrayTypeMagic.List(d)
     ==> ArrayTypeMagic.List.Nil_q(d) || ArrayTypeMagic.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.List$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.List.Cons_q(d), $Is(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
    { ArrayTypeMagic.List.Nil_q(d), $Is(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     ==> ArrayTypeMagic.List.Nil_q(d) || ArrayTypeMagic.List.Cons_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Nil_q(a) } 
    { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Nil_q(b) } 
  ArrayTypeMagic.List.Nil_q(a) && ArrayTypeMagic.List.Nil_q(b)
     ==> ArrayTypeMagic.List#Equal(a, b));

// Datatype extensional equality definition: #ArrayTypeMagic.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Cons_q(a) } 
    { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Cons_q(b) } 
  ArrayTypeMagic.List.Cons_q(a) && ArrayTypeMagic.List.Cons_q(b)
     ==> (ArrayTypeMagic.List#Equal(a, b)
       <==> ArrayTypeMagic.List._h15(a) == ArrayTypeMagic.List._h15(b)
         && ArrayTypeMagic.List#Equal(ArrayTypeMagic.List._h16(a), ArrayTypeMagic.List._h16(b))));

// Datatype extensionality axiom: ArrayTypeMagic.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.List#Equal(a, b) } 
  ArrayTypeMagic.List#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.List: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.Cell.Mk(Box) : DatatypeType;

const unique ##ArrayTypeMagic.Cell.Mk: DtCtorId
uses {
// Constructor identifier
axiom (forall a#61#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(a#61#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.Cell.Mk(a#61#0#0)) == ##ArrayTypeMagic.Cell.Mk);
}

function ArrayTypeMagic.Cell.Mk_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Cell.Mk_q(d) } 
  ArrayTypeMagic.Cell.Mk_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.Cell.Mk);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Cell.Mk_q(d) } 
  ArrayTypeMagic.Cell.Mk_q(d)
     ==> (exists a#62#0#0: Box :: d == #ArrayTypeMagic.Cell.Mk(a#62#0#0)));

function Tclass.ArrayTypeMagic.Cell(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.Cell: TyTag;

// Tclass.ArrayTypeMagic.Cell Tag
axiom (forall ArrayTypeMagic.Cell$T: Ty :: 
  { Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T) } 
  Tag(Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
       == Tagclass.ArrayTypeMagic.Cell
     && TagFamily(Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) == tytagFamily$Cell);

function Tclass.ArrayTypeMagic.Cell_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.Cell injectivity 0
axiom (forall ArrayTypeMagic.Cell$T: Ty :: 
  { Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T) } 
  Tclass.ArrayTypeMagic.Cell_0(Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     == ArrayTypeMagic.Cell$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.Cell
axiom (forall ArrayTypeMagic.Cell$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)));

// Constructor $Is
axiom (forall ArrayTypeMagic.Cell$T: Ty, a#63#0#0: Box :: 
  { $Is(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) } 
  $Is(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     <==> $IsBox(a#63#0#0, ArrayTypeMagic.Cell$T));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.Cell$T: Ty, a#63#0#0: Box, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
        Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T), 
        $h)
       <==> $IsAllocBox(a#63#0#0, ArrayTypeMagic.Cell$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.Cell$T: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.Cell._h17(d), ArrayTypeMagic.Cell$T, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.Cell.Mk_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T), $h)
     ==> $IsAllocBox(ArrayTypeMagic.Cell._h17(d), ArrayTypeMagic.Cell$T, $h));

// Constructor literal
axiom (forall a#64#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(Lit(a#64#0#0)) } 
  #ArrayTypeMagic.Cell.Mk(Lit(a#64#0#0)) == Lit(#ArrayTypeMagic.Cell.Mk(a#64#0#0)));

function ArrayTypeMagic.Cell._h17(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#65#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(a#65#0#0) } 
  ArrayTypeMagic.Cell._h17(#ArrayTypeMagic.Cell.Mk(a#65#0#0)) == a#65#0#0);

// Inductive rank
axiom (forall a#66#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(a#66#0#0) } 
  BoxRank(a#66#0#0) < DtRank(#ArrayTypeMagic.Cell.Mk(a#66#0#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.Cell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.Cell(d) } 
  $IsA#ArrayTypeMagic.Cell(d) ==> ArrayTypeMagic.Cell.Mk_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.Cell$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.Cell.Mk_q(d), $Is(d, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     ==> ArrayTypeMagic.Cell.Mk_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.Cell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.Cell.Mk
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Cell#Equal(a, b) } 
  ArrayTypeMagic.Cell#Equal(a, b)
     <==> ArrayTypeMagic.Cell._h17(a) == ArrayTypeMagic.Cell._h17(b));

// Datatype extensionality axiom: ArrayTypeMagic.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Cell#Equal(a, b) } 
  ArrayTypeMagic.Cell#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.Cell: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.DList.Nil(DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.DList.Nil: DtCtorId
uses {
// Constructor identifier
axiom (forall a#67#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(a#67#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.DList.Nil(a#67#0#0))
     == ##ArrayTypeMagic.DList.Nil);
}

function ArrayTypeMagic.DList.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Nil_q(d) } 
  ArrayTypeMagic.DList.Nil_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.DList.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Nil_q(d) } 
  ArrayTypeMagic.DList.Nil_q(d)
     ==> (exists a#68#0#0: DatatypeType :: d == #ArrayTypeMagic.DList.Nil(a#68#0#0)));

function Tclass.ArrayTypeMagic.DList(Ty, Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.DList: TyTag;

// Tclass.ArrayTypeMagic.DList Tag
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty :: 
  { Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U) } 
  Tag(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
       == Tagclass.ArrayTypeMagic.DList
     && TagFamily(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
       == tytagFamily$DList);

function Tclass.ArrayTypeMagic.DList_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.DList injectivity 0
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty :: 
  { Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U) } 
  Tclass.ArrayTypeMagic.DList_0(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     == ArrayTypeMagic.DList$T);

function Tclass.ArrayTypeMagic.DList_1(Ty) : Ty;

// Tclass.ArrayTypeMagic.DList injectivity 1
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty :: 
  { Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U) } 
  Tclass.ArrayTypeMagic.DList_1(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     == ArrayTypeMagic.DList$U);

// Box/unbox axiom for Tclass.ArrayTypeMagic.DList
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)));

// Constructor $Is
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty, a#69#0#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $Is(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     <==> $Is(a#69#0#0, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    a#69#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
        $h)
       <==> $IsAlloc(a#69#0#0, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.DList$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.DList._h18(d), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Nil_q(d)
       && (exists ArrayTypeMagic.DList$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h))
     ==> $IsAlloc(ArrayTypeMagic.DList._h18(d), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T), 
      $h));

// Constructor literal
axiom (forall a#70#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(Lit(a#70#0#0)) } 
  #ArrayTypeMagic.DList.Nil(Lit(a#70#0#0))
     == Lit(#ArrayTypeMagic.DList.Nil(a#70#0#0)));

function ArrayTypeMagic.DList._h18(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#71#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(a#71#0#0) } 
  ArrayTypeMagic.DList._h18(#ArrayTypeMagic.DList.Nil(a#71#0#0)) == a#71#0#0);

// Inductive rank
axiom (forall a#72#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(a#72#0#0) } 
  DtRank(a#72#0#0) < DtRank(#ArrayTypeMagic.DList.Nil(a#72#0#0)));

// Constructor function declaration
function #ArrayTypeMagic.DList.Cons(Box, Box, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.DList.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#73#0#0: Box, a#73#1#0: Box, a#73#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#73#0#0, a#73#1#0, a#73#2#0) } 
  DatatypeCtorId(#ArrayTypeMagic.DList.Cons(a#73#0#0, a#73#1#0, a#73#2#0))
     == ##ArrayTypeMagic.DList.Cons);
}

function ArrayTypeMagic.DList.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Cons_q(d) } 
  ArrayTypeMagic.DList.Cons_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.DList.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Cons_q(d) } 
  ArrayTypeMagic.DList.Cons_q(d)
     ==> (exists a#74#0#0: Box, a#74#1#0: Box, a#74#2#0: DatatypeType :: 
      d == #ArrayTypeMagic.DList.Cons(a#74#0#0, a#74#1#0, a#74#2#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    a#75#0#0: Box, 
    a#75#1#0: Box, 
    a#75#2#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $Is(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     <==> $IsBox(a#75#0#0, ArrayTypeMagic.DList$T)
       && $IsBox(a#75#1#0, ArrayTypeMagic.DList$U)
       && $Is(a#75#2#0, 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    a#75#0#0: Box, 
    a#75#1#0: Box, 
    a#75#2#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
        $h)
       <==> $IsAllocBox(a#75#0#0, ArrayTypeMagic.DList$T, $h)
         && $IsAllocBox(a#75#1#0, ArrayTypeMagic.DList$U, $h)
         && $IsAlloc(a#75#2#0, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.DList$T: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.DList._h19(d), ArrayTypeMagic.DList$T, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Cons_q(d)
       && (exists ArrayTypeMagic.DList$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h))
     ==> $IsAllocBox(ArrayTypeMagic.DList._h19(d), ArrayTypeMagic.DList$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.DList$U: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.DList._h20(d), ArrayTypeMagic.DList$U, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Cons_q(d)
       && (exists ArrayTypeMagic.DList$T: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h))
     ==> $IsAllocBox(ArrayTypeMagic.DList._h20(d), ArrayTypeMagic.DList$U, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.DList._h21(d), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Cons_q(d)
       && $IsAlloc(d, 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
        $h)
     ==> $IsAlloc(ArrayTypeMagic.DList._h21(d), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h));

// Constructor literal
axiom (forall a#76#0#0: Box, a#76#1#0: Box, a#76#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(Lit(a#76#0#0), Lit(a#76#1#0), Lit(a#76#2#0)) } 
  #ArrayTypeMagic.DList.Cons(Lit(a#76#0#0), Lit(a#76#1#0), Lit(a#76#2#0))
     == Lit(#ArrayTypeMagic.DList.Cons(a#76#0#0, a#76#1#0, a#76#2#0)));

function ArrayTypeMagic.DList._h19(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#77#0#0: Box, a#77#1#0: Box, a#77#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#77#0#0, a#77#1#0, a#77#2#0) } 
  ArrayTypeMagic.DList._h19(#ArrayTypeMagic.DList.Cons(a#77#0#0, a#77#1#0, a#77#2#0))
     == a#77#0#0);

// Inductive rank
axiom (forall a#78#0#0: Box, a#78#1#0: Box, a#78#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#78#0#0, a#78#1#0, a#78#2#0) } 
  BoxRank(a#78#0#0)
     < DtRank(#ArrayTypeMagic.DList.Cons(a#78#0#0, a#78#1#0, a#78#2#0)));

function ArrayTypeMagic.DList._h20(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#79#0#0: Box, a#79#1#0: Box, a#79#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#79#0#0, a#79#1#0, a#79#2#0) } 
  ArrayTypeMagic.DList._h20(#ArrayTypeMagic.DList.Cons(a#79#0#0, a#79#1#0, a#79#2#0))
     == a#79#1#0);

// Inductive rank
axiom (forall a#80#0#0: Box, a#80#1#0: Box, a#80#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#80#0#0, a#80#1#0, a#80#2#0) } 
  BoxRank(a#80#1#0)
     < DtRank(#ArrayTypeMagic.DList.Cons(a#80#0#0, a#80#1#0, a#80#2#0)));

function ArrayTypeMagic.DList._h21(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#81#0#0: Box, a#81#1#0: Box, a#81#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#81#0#0, a#81#1#0, a#81#2#0) } 
  ArrayTypeMagic.DList._h21(#ArrayTypeMagic.DList.Cons(a#81#0#0, a#81#1#0, a#81#2#0))
     == a#81#2#0);

// Inductive rank
axiom (forall a#82#0#0: Box, a#82#1#0: Box, a#82#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#82#0#0, a#82#1#0, a#82#2#0) } 
  DtRank(a#82#2#0)
     < DtRank(#ArrayTypeMagic.DList.Cons(a#82#0#0, a#82#1#0, a#82#2#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.DList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.DList(d) } 
  $IsA#ArrayTypeMagic.DList(d)
     ==> ArrayTypeMagic.DList.Nil_q(d) || ArrayTypeMagic.DList.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.DList.Cons_q(d), $Is(d, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
    { ArrayTypeMagic.DList.Nil_q(d), $Is(d, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $Is(d, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     ==> ArrayTypeMagic.DList.Nil_q(d) || ArrayTypeMagic.DList.Cons_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.DList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.DList.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Nil_q(a) } 
    { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Nil_q(b) } 
  ArrayTypeMagic.DList.Nil_q(a) && ArrayTypeMagic.DList.Nil_q(b)
     ==> (ArrayTypeMagic.DList#Equal(a, b)
       <==> ArrayTypeMagic.Cell#Equal(ArrayTypeMagic.DList._h18(a), ArrayTypeMagic.DList._h18(b))));

// Datatype extensional equality definition: #ArrayTypeMagic.DList.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Cons_q(a) } 
    { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Cons_q(b) } 
  ArrayTypeMagic.DList.Cons_q(a) && ArrayTypeMagic.DList.Cons_q(b)
     ==> (ArrayTypeMagic.DList#Equal(a, b)
       <==> ArrayTypeMagic.DList._h19(a) == ArrayTypeMagic.DList._h19(b)
         && ArrayTypeMagic.DList._h20(a) == ArrayTypeMagic.DList._h20(b)
         && ArrayTypeMagic.DList#Equal(ArrayTypeMagic.DList._h21(a), ArrayTypeMagic.DList._h21(b))));

// Datatype extensionality axiom: ArrayTypeMagic.DList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.DList#Equal(a, b) } 
  ArrayTypeMagic.DList#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.DList: ClassName;

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

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$array3: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$ArrayCubeTree: TyTagFamily;

const unique tytagFamily$AnotherACT: TyTagFamily;

const unique tytagFamily$OneMoreACT: TyTagFamily;

const unique tytagFamily$Nat: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$DList: TyTagFamily;
