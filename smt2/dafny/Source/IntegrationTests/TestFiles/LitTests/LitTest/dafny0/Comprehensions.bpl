// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy

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

procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M();
  free requires 1 == $FunctionContextHeight;
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
  free requires 1 == $FunctionContextHeight;
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
  var numbers#0: Set
     where $Is(numbers#0, TSet(TInt)) && $IsAlloc(numbers#0, TSet(TInt), $Heap);
  var i#0: int;
  var squares#0: Set
     where $Is(squares#0, TSet(TInt)) && $IsAlloc(squares#0, TSet(TInt), $Heap);
  var i#3: int;
  var ##x#0: int;
  var ##x#1: int;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(6,15)
    assume true;
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < 100)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    numbers#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, TInt) && LitInt(0) <= $Unbox($y#0): int && $Unbox($y#0): int < 100));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(7,15)
    assume true;
    // Begin Comprehension WF check
    havoc i#3;
    if (true)
    {
        if (LitInt(0) <= i#3)
        {
        }

        if (LitInt(0) <= i#3 && i#3 < 100)
        {
            ##x#0 := i#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assume _module.__default.Id#canCall(i#3);
        }
    }

    // End Comprehension WF check
    assume (forall i#2: int :: 
      { _module.__default.Id(i#2) } 
      LitInt(0) <= i#2 && i#2 < 100 ==> _module.__default.Id#canCall(i#2));
    squares#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        (exists i#2: int :: 
          { _module.__default.Id(i#2) } 
          LitInt(0) <= i#2
             && i#2 < 100
             && $y#1 == $Box(Mul(_module.__default.Id(i#2), i#2)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(9,3)
    assume true;
    assert {:id "id2"} Set#IsMember(numbers#0, $Box(LitInt(12)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(10,3)
    ##x#1 := LitInt(5);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    assume _module.__default.Id#canCall(LitInt(5));
    assume _module.__default.Id#canCall(LitInt(5));
    assert {:id "id3"} LitInt(_module.__default.Id(LitInt(5))) == LitInt(5);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(11,3)
    assume true;
    assert {:id "id4"} Set#IsMember(squares#0, $Box(LitInt(25)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(12,3)
    assume true;
    assert {:id "id5"} Set#IsMember(numbers#0, $Box(LitInt(200)));
}



// function declaration for _module._default.Id
function _module.__default.Id(x#0: int) : int
uses {
// definition axiom for _module.__default.Id (revealed)
axiom {:id "id6"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.Id(x#0) } 
    _module.__default.Id#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Id(x#0) == x#0);
// definition axiom for _module.__default.Id for all literals (revealed)
axiom {:id "id7"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.Id(LitInt(x#0)) } 
    _module.__default.Id#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Id(LitInt(x#0)) == LitInt(x#0));
}

function _module.__default.Id#canCall(x#0: int) : bool;

function _module.__default.Id#requires(int) : bool;

// #requires axiom for _module.__default.Id
axiom (forall x#0: int :: 
  { _module.__default.Id#requires(x#0) } 
  _module.__default.Id#requires(x#0) == true);

procedure {:verboseName "Id (well-formedness)"} CheckWellformed$$_module.__default.Id(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



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



function Tclass._module.D() : Ty
uses {
// Tclass._module.D Tag
axiom Tag(Tclass._module.D()) == Tagclass._module.D
   && TagFamily(Tclass._module.D()) == tytagFamily$D;
}

const unique Tagclass._module.D: TyTag;

// Box/unbox axiom for Tclass._module.D
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.D()) } 
  $IsBox(bx, Tclass._module.D())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.D()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var q#0: Set where $Is(q#0, TSet(TInt)) && $IsAlloc(q#0, TSet(TInt), $Heap);
  var i#1: int;
  var j#1: int;
  var s##0: Set;
  var b#1: bool;
  var d#0: Set
     where $Is(d#0, TSet(Tclass._module.D()))
       && $IsAlloc(d#0, TSet(Tclass._module.D()), $Heap);
  var b#2: DatatypeType;
  var test#0: bool;
  var d#2: DatatypeType;
  var s##1: Set;
  var m#0: Set where $Is(m#0, TSet(TInt)) && $IsAlloc(m#0, TSet(TInt), $Heap);
  var k#1: int;
  var s##2: Set;
  var s##3: Set;
  var k#2: int;
  var sq#0: Seq where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap);
  var s##4: Set;
  var k#4: int;
  var i#2: int;
  var bb#0: bool;
  var k#7: int;
  var i#5: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(22,9)
    assume true;
    // Begin Comprehension WF check
    havoc i#1;
    havoc j#1;
    if (true)
    {
        if (LitInt(0) <= i#1)
        {
        }

        if (LitInt(0) <= i#1 && i#1 < 10)
        {
            if (LitInt(0) <= j#1)
            {
            }
        }

        if (LitInt(0) <= i#1 && i#1 < 10 && LitInt(0) <= j#1 && j#1 < 3)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    q#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        (exists i#0: int, j#0: int :: 
          LitInt(0) <= i#0
             && i#0 < 10
             && 
            LitInt(0) <= j#0
             && j#0 < 3
             && $y#0 == $Box(i#0 + j#0))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(23,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := q#0;
    call {:id "id10"} Call$$_module.__default.PrintSet(TInt, s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(24,5)
    assume true;
    // Begin Comprehension WF check
    havoc b#1;
    if (true)
    {
        if (Lit(true))
        {
            if (b#1)
            {
            }
            else
            {
            }
        }
    }

    // End Comprehension WF check
    assume true;
    q#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        (exists b#0: bool :: Lit(true) && $y#1 == $Box((if b#0 then 3 else 7)))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(25,9)
    assume true;
    // Begin Comprehension WF check
    havoc b#2;
    if ($Is(b#2, Tclass._module.D()) && $IsAlloc(b#2, Tclass._module.D(), $Heap))
    {
        if (Lit(true))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    d#0 := Set#FromBoogieMap((lambda $y#2: Box :: $IsBox($y#2, Tclass._module.D()) && Lit(true)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(26,12)
    assume true;
    // Begin Comprehension WF check
    havoc d#2;
    if ($Is(d#2, Tclass._module.D()) && $IsAlloc(d#2, Tclass._module.D(), $Heap))
    {
        if (!_module.D#Equal(d#2, #_module.D.A()))
        {
        }
    }

    // End Comprehension WF check
    assume (forall d#1: DatatypeType :: 
      $Is(d#1, Tclass._module.D())
         ==> $IsA#_module.D(d#1)
           && (!_module.D#Equal(d#1, #_module.D.A()) ==> $IsA#_module.D(d#1)));
    test#0 := (forall d#1: DatatypeType :: 
      $Is(d#1, Tclass._module.D())
         ==> _module.D#Equal(d#1, #_module.D.A()) || _module.D#Equal(d#1, #_module.D.B()));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(27,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := q#0;
    call {:id "id14"} Call$$_module.__default.PrintSet(TInt, s##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(28,9)
    assume true;
    // Begin Comprehension WF check
    havoc k#1;
    if (true)
    {
        if (Set#IsMember(q#0, $Box(k#1)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    m#0 := Set#FromBoogieMap((lambda $y#3: Box :: 
        (exists k#0: int :: 
          { Set#IsMember(q#0, $Box(k#0)) } 
          Set#IsMember(q#0, $Box(k#0)) && $y#3 == $Box(Mul(LitInt(2), k#0)))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(29,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##2 := m#0;
    call {:id "id16"} Call$$_module.__default.PrintSet(TInt, s##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(30,11)
    // TrCallStmt: Before ProcessCallStmt
    // Begin Comprehension WF check
    havoc k#2;
    if (true)
    {
        if (Set#IsMember(q#0, $Box(k#2)))
        {
            assert {:id "id17"} LitInt(2) != 0;
        }

        if (Set#IsMember(q#0, $Box(k#2)) && Mod(k#2, LitInt(2)) == LitInt(0))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##3 := Set#FromBoogieMap((lambda $y#4: Box :: 
        $IsBox($y#4, TInt)
           && 
          Set#IsMember(q#0, $y#4)
           && Mod($Unbox($y#4): int, LitInt(2)) == LitInt(0)));
    call {:id "id18"} Call$$_module.__default.PrintSet(TInt, s##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(31,10)
    assume true;
    assume true;
    sq#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(30))), $Box(LitInt(40))), 
        $Box(LitInt(20))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(32,11)
    // TrCallStmt: Before ProcessCallStmt
    // Begin Comprehension WF check
    havoc k#4;
    havoc i#2;
    if (true)
    {
        if (Seq#Contains(sq#0, $Box(k#4)))
        {
            if (LitInt(0) <= i#2)
            {
            }
        }

        if (Seq#Contains(sq#0, $Box(k#4)) && LitInt(0) <= i#2 && i#2 < k#4)
        {
            assert {:id "id20"} LitInt(7) != 0;
        }

        if (Seq#Contains(sq#0, $Box(k#4))
           && 
          LitInt(0) <= i#2
           && i#2 < k#4
           && Mod(i#2, LitInt(7)) == LitInt(0))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##4 := Set#FromBoogieMap((lambda $y#5: Box :: 
        (exists k#5: int, i#3: int :: 
          Seq#Contains(sq#0, $Box(k#5))
             && 
            LitInt(0) <= i#3
             && i#3 < k#5
             && Mod(i#3, LitInt(7)) == LitInt(0)
             && $y#5 == $Box(k#5 + i#3))));
    call {:id "id21"} Call$$_module.__default.PrintSet(TInt, s##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(33,10)
    assume true;
    // Begin Comprehension WF check
    havoc k#7;
    havoc i#5;
    if (true)
    {
        if (Seq#Contains(sq#0, $Box(k#7)))
        {
            if (LitInt(0) <= i#5)
            {
            }
        }

        if (Seq#Contains(sq#0, $Box(k#7)) && LitInt(0) <= i#5 && i#5 < k#7)
        {
            assert {:id "id22"} LitInt(7) != 0;
        }

        if (Seq#Contains(sq#0, $Box(k#7))
           && 
          LitInt(0) <= i#5
           && i#5 < k#7
           && Mod(i#5, LitInt(7)) == LitInt(0))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    bb#0 := (forall k#6: int, i#4: int :: 
      Seq#Contains(sq#0, $Box(k#6))
           && 
          LitInt(0) <= i#4
           && i#4 < k#6
           && Mod(i#4, LitInt(7)) == LitInt(0)
         ==> k#6 + i#4 == LitInt(17));
}



procedure {:verboseName "PrintSet (well-formedness)"} CheckWellFormed$$_module.__default.PrintSet(_module._default.PrintSet$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.PrintSet$T))
         && $IsAlloc(s#0, TSet(_module._default.PrintSet$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSet (call)"} Call$$_module.__default.PrintSet(_module._default.PrintSet$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.PrintSet$T))
         && $IsAlloc(s#0, TSet(_module._default.PrintSet$T), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(_module._default.PrintSet$T: Ty, 
    s#0: Set
       where $Is(s#0, TSet(_module._default.PrintSet$T))
         && $IsAlloc(s#0, TSet(_module._default.PrintSet$T), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSet (correctness)"} Impl$$_module.__default.PrintSet(_module._default.PrintSet$T: Ty, s#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var q#0: Set
     where $Is(q#0, TSet(_module._default.PrintSet$T))
       && $IsAlloc(q#0, TSet(_module._default.PrintSet$T), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.PrintSet$T)
         && $IsAllocBox(x#0_0, _module._default.PrintSet$T, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: PrintSet, Impl$$_module.__default.PrintSet
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(37,9)
    assume true;
    assume true;
    q#0 := s#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(38,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := q#0;
    havoc $w$loop#0;
    while (true)
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
      free invariant Set#Subset(q#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(q#0, Set#Empty(): Set))
        {
            break;
        }

        $decr$loop#00 := q#0;
        push;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(41,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.PrintSet$T)
           && $IsAllocBox(x#0_1, _module._default.PrintSet$T, $Heap))
        {
            assume true;
        }

        assert {:id "id25"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.PrintSet$T)
             && Set#IsMember(q#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id26"} Set#IsMember(q#0, x#0_0);
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(42,5)
        assert {:id "id27"} defass#x#0_0;
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(43,7)
        assume true;
        assert {:id "id28"} defass#x#0_0;
        assume true;
        q#0 := Set#Difference(q#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(38,3)
        assert {:id "id30"} Set#Subset(q#0, $decr$loop#00) && !Set#Subset($decr$loop#00, q#0);
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(45,3)
    assume true;
}



procedure {:verboseName "SetComprehensionBoxAntecedents (well-formedness)"} CheckWellFormed$$_module.__default.SetComprehensionBoxAntecedents();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetComprehensionBoxAntecedents (call)"} Call$$_module.__default.SetComprehensionBoxAntecedents();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetComprehensionBoxAntecedents (correctness)"} Impl$$_module.__default.SetComprehensionBoxAntecedents() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetComprehensionBoxAntecedents (correctness)"} Impl$$_module.__default.SetComprehensionBoxAntecedents() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Set where $Is(a#0, TSet(TInt)) && $IsAlloc(a#0, TSet(TInt), $Heap);
  var x#0: int;
  var b#0: Set where $Is(b#0, TSet(TInt)) && $IsAlloc(b#0, TSet(TInt), $Heap);
  var x#0_0: int;
  var x#1_0: int;
  var x#1_2: int;

    // AddMethodImpl: SetComprehensionBoxAntecedents, Impl$$_module.__default.SetComprehensionBoxAntecedents
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(54,9)
    assume true;
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
        if (x#0 == LitInt(0)
           || x#0 == LitInt(1)
           || x#0 == LitInt(2)
           || x#0 == LitInt(3)
           || x#0 == LitInt(4)
           || x#0 == LitInt(5))
        {
        }

        if ((
            x#0 == LitInt(0)
             || x#0 == LitInt(1)
             || x#0 == LitInt(2)
             || x#0 == LitInt(3)
             || x#0 == LitInt(4)
             || x#0 == LitInt(5))
           && x#0 < 3)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    a#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, TInt)
           && 
          (
            $Unbox($y#0): int == LitInt(0)
             || $Unbox($y#0): int == LitInt(1)
             || $Unbox($y#0): int == LitInt(2)
             || $Unbox($y#0): int == LitInt(3)
             || $Unbox($y#0): int == LitInt(4)
             || $Unbox($y#0): int == LitInt(5))
           && $Unbox($y#0): int < 3));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(55,9)
    assume true;
    assume true;
    b#0 := Lit(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))), $Box(LitInt(1))), 
        $Box(LitInt(2))));
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(57,3)
    if (*)
    {
        assume true;
        assume {:id "id39"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(59,5)
        assume true;
        assert {:id "id40"} Set#Equal(a#0, b#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id36"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(61,5)
        // Begin Comprehension WF check
        havoc x#1_0;
        if (true)
        {
            if (Set#IsMember(a#0, $Box(x#1_0)))
            {
            }
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id37"} (forall x#1_1: int :: 
          { Set#IsMember(b#0, $Box(x#1_1)) } { Set#IsMember(a#0, $Box(x#1_1)) } 
          Set#IsMember(a#0, $Box(x#1_1)) ==> Set#IsMember(b#0, $Box(x#1_1)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(62,5)
        // Begin Comprehension WF check
        havoc x#1_2;
        if (true)
        {
            if (Set#IsMember(b#0, $Box(x#1_2)))
            {
            }
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id38"} (forall x#1_3: int :: 
          { Set#IsMember(a#0, $Box(x#1_3)) } { Set#IsMember(b#0, $Box(x#1_3)) } 
          Set#IsMember(b#0, $Box(x#1_3)) ==> Set#IsMember(a#0, $Box(x#1_3)));
    }
    else if (*)
    {
        assume true;
        assume {:id "id34"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(64,5)
        // Begin Comprehension WF check
        havoc x#0_0;
        if (true)
        {
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id35"} (forall x#0_1: int :: 
          { Set#IsMember(b#0, $Box(x#0_1)) } { Set#IsMember(a#0, $Box(x#0_1)) } 
          Set#IsMember(a#0, $Box(x#0_1)) <==> Set#IsMember(b#0, $Box(x#0_1)));
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id33"} false;
    }
}



procedure {:verboseName "Sequences0 (well-formedness)"} CheckWellFormed$$_module.__default.Sequences0();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences0 (call)"} Call$$_module.__default.Sequences0();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences0 (correctness)"} Impl$$_module.__default.Sequences0() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences0 (correctness)"} Impl$$_module.__default.Sequences0() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var four1s#0: Seq
     where $Is(four1s#0, TSeq(TInt)) && $IsAlloc(four1s#0, TSeq(TInt), $Heap);
  var twelve1s#0: Seq
     where $Is(twelve1s#0, TSeq(TInt)) && $IsAlloc(twelve1s#0, TSeq(TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var _v0#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var squares#0: Seq
     where $Is(squares#0, TSeq(TInt)) && $IsAlloc(squares#0, TSeq(TInt), $Heap);
  var $lambdaHeap#1: Heap;
  var i#0: int;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: int;
  var nats#0: Seq where $Is(nats#0, TSeq(TInt)) && $IsAlloc(nats#0, TSeq(TInt), $Heap);
  var $lambdaHeap#2: Heap;
  var i#1: int;
  var $_Frame#l2: [ref,Field]bool;
  var lambdaResult#2: int;

    // AddMethodImpl: Sequences0, Impl$$_module.__default.Sequences0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(70,14)
    assume true;
    assume true;
    four1s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(1))), 
          $Box(LitInt(1))), 
        $Box(LitInt(1))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(71,16)
    assume true;
    assert {:id "id42"} 0 <= LitInt(12);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc _v0#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id43"} lambdaResult#0 == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id44"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
      0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < LitInt(12)
         ==> Requires1(TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                Handle1((lambda $l#1#heap#0: Heap, $l#1#_v0#0: Box :: $Box(LitInt(1))), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v0#0: Box :: $IsBox($l#1#_v0#0, TInt)), 
                  (lambda $l#1#heap#0: Heap, $l#1#_v0#0: Box :: 
                    SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#0#i0#0)));
    assume true;
    twelve1s#0 := Seq#Create(TInt, 
      $Heap, 
      LitInt(12), 
      Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
            Handle1((lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box :: $Box(LitInt(1))), 
              (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box :: $IsBox($l#0#_v0#0, TInt)), 
              (lambda $l#0#heap#0: Heap, $l#0#_v0#0: Box :: 
                SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
          $LS($LZ))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(72,3)
    assume true;
    assert {:id "id46"} Seq#Equal(twelve1s#0, Seq#Append(Seq#Append(four1s#0, four1s#0), four1s#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(74,15)
    assume true;
    assert {:id "id47"} 0 <= LitInt(8);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc i#0;
        if (true)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> false);
            assume {:id "id48"} lambdaResult#1 == Mul(i#0, i#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#1, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id49"} {:subsumption 0} (forall seqinit#1#i0#0: int :: 
      0 <= seqinit#1#i0#0 && seqinit#1#i0#0 < LitInt(8)
         ==> Requires1(TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box(Mul($Unbox($l#4#i#0): int, $Unbox($l#4#i#0): int))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#1#i0#0)));
    assume true;
    squares#0 := Seq#Create(TInt, 
      $Heap, 
      LitInt(8), 
      Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
            Handle1((lambda $l#3#heap#0: Heap, $l#3#i#0: Box :: 
                $Box(Mul($Unbox($l#3#i#0): int, $Unbox($l#3#i#0): int))), 
              (lambda $l#3#heap#0: Heap, $l#3#i#0: Box :: $IsBox($l#3#i#0, TInt)), 
              (lambda $l#3#heap#0: Heap, $l#3#i#0: Box :: 
                SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
          $LS($LZ))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(75,3)
    assume true;
    assert {:id "id51"} Seq#Length(squares#0) == LitInt(8);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(76,3)
    assert {:id "id52"} {:subsumption 0} 0 <= LitInt(6) && LitInt(6) < Seq#Length(squares#0);
    assume true;
    assert {:id "id53"} $Unbox(Seq#Index(squares#0, LitInt(6))): int == LitInt(36);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(77,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(78,5)
        assert {:id "id54"} {:subsumption 0} 0 <= LitInt(7) && LitInt(7) < Seq#Length(squares#0);
        assume true;
        assert {:id "id55"} $Unbox(Seq#Index(squares#0, LitInt(7))): int == LitInt(0);
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Comprehensions.dfy(81,12)
    assume true;
    assert {:id "id56"} 0 <= LitInt(8);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#2;
        assume $IsGoodHeap($lambdaHeap#2);
        assume $Heap == $lambdaHeap#2 || $HeapSucc($Heap, $lambdaHeap#2);
        havoc i#1;
        if (true)
        {
            $_Frame#l2 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#2, $o, alloc)): bool ==> false);
            assume {:id "id57"} lambdaResult#2 == i#1;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#2, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assert {:id "id58"} {:subsumption 0} (forall seqinit#2#i0#0: int :: 
      0 <= seqinit#2#i0#0 && seqinit#2#i0#0 < LitInt(8)
         ==> Requires1(TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
                Handle1((lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: $Box($Unbox($l#7#i#0): int)), 
                  (lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: $IsBox($l#7#i#0, TInt)), 
                  (lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(seqinit#2#i0#0)));
    assume true;
    nats#0 := Seq#Create(TInt, 
      $Heap, 
      LitInt(8), 
      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box($Unbox($l#6#i#0): int)), 
              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
          $LS($LZ))));
}



// Constructor function declaration
function #_module.D.A() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.A()) == ##_module.D.A;
// Constructor $Is
axiom $Is(#_module.D.A(), Tclass._module.D());
// Constructor literal
axiom #_module.D.A() == Lit(#_module.D.A());
}

const unique ##_module.D.A: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.A()) == ##_module.D.A;
}

function _module.D.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.D.A_q(d) } 
  _module.D.A_q(d) <==> DatatypeCtorId(d) == ##_module.D.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.D.A_q(d) } 
  _module.D.A_q(d) ==> d == #_module.D.A());

// Constructor function declaration
function #_module.D.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.B()) == ##_module.D.B;
// Constructor $Is
axiom $Is(#_module.D.B(), Tclass._module.D());
// Constructor literal
axiom #_module.D.B() == Lit(#_module.D.B());
}

const unique ##_module.D.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.B()) == ##_module.D.B;
}

function _module.D.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.D.B_q(d) } 
  _module.D.B_q(d) <==> DatatypeCtorId(d) == ##_module.D.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.D.B_q(d) } 
  _module.D.B_q(d) ==> d == #_module.D.B());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.D(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.D())
     ==> $IsAlloc(d, Tclass._module.D(), $h));

// Depth-one case-split function
function $IsA#_module.D(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.D(d) } 
  $IsA#_module.D(d) ==> _module.D.A_q(d) || _module.D.B_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.D.B_q(d), $Is(d, Tclass._module.D()) } 
    { _module.D.A_q(d), $Is(d, Tclass._module.D()) } 
  $Is(d, Tclass._module.D()) ==> _module.D.A_q(d) || _module.D.B_q(d));

// Datatype extensional equality declaration
function _module.D#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.D.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b), _module.D.A_q(a) } 
    { _module.D#Equal(a, b), _module.D.A_q(b) } 
  _module.D.A_q(a) && _module.D.A_q(b) ==> _module.D#Equal(a, b));

// Datatype extensional equality definition: #_module.D.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b), _module.D.B_q(a) } 
    { _module.D#Equal(a, b), _module.D.B_q(b) } 
  _module.D.B_q(a) && _module.D.B_q(b) ==> _module.D#Equal(a, b));

// Datatype extensionality axiom: _module.D
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b) } 
  _module.D#Equal(a, b) <==> a == b);

const unique class._module.D: ClassName;

const unique class._module.SeqOp?: ClassName;

function Tclass._module.SeqOp?() : Ty
uses {
// Tclass._module.SeqOp? Tag
axiom Tag(Tclass._module.SeqOp?()) == Tagclass._module.SeqOp?
   && TagFamily(Tclass._module.SeqOp?()) == tytagFamily$SeqOp;
}

const unique Tagclass._module.SeqOp?: TyTag;

// Box/unbox axiom for Tclass._module.SeqOp?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SeqOp?()) } 
  $IsBox(bx, Tclass._module.SeqOp?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.SeqOp?()));

// $Is axiom for class SeqOp
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.SeqOp?()) } 
  $Is($o, Tclass._module.SeqOp?())
     <==> $o == null || dtype($o) == Tclass._module.SeqOp?());

// $IsAlloc axiom for class SeqOp
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SeqOp?(), $h) } 
  $IsAlloc($o, Tclass._module.SeqOp?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.SeqOp.x: Field
uses {
axiom FDim(_module.SeqOp.x) == 0
   && FieldOfDecl(class._module.SeqOp?, field$x) == _module.SeqOp.x
   && !$IsGhostField(_module.SeqOp.x);
}

// SeqOp.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SeqOp.x)): real } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.SeqOp?()
     ==> $Is($Unbox(read($h, $o, _module.SeqOp.x)): real, TReal));

// SeqOp.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.SeqOp.x)): real } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.SeqOp?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.SeqOp.x)): real, TReal, $h));

// function declaration for _module.SeqOp.G
function _module.SeqOp.G($heap: Heap, this: ref, i#0: int) : real
uses {
// definition axiom for _module.SeqOp.G (revealed)
axiom {:id "id60"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, i#0: int :: 
    { _module.SeqOp.G($Heap, this, i#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.G#canCall($Heap, this, i#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= i#0)
       ==> _module.SeqOp.G($Heap, this, i#0)
         == (if i#0 < 20 then 25e-1 else $Unbox(read($Heap, this, _module.SeqOp.x)): real));
}

function _module.SeqOp.G#canCall($heap: Heap, this: ref, i#0: int) : bool;

function Tclass._module.SeqOp() : Ty
uses {
// Tclass._module.SeqOp Tag
axiom Tag(Tclass._module.SeqOp()) == Tagclass._module.SeqOp
   && TagFamily(Tclass._module.SeqOp()) == tytagFamily$SeqOp;
}

const unique Tagclass._module.SeqOp: TyTag;

// Box/unbox axiom for Tclass._module.SeqOp
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SeqOp()) } 
  $IsBox(bx, Tclass._module.SeqOp())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.SeqOp()));

// frame axiom for _module.SeqOp.G
axiom (forall $h0: Heap, $h1: Heap, this: ref, i#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.SeqOp.G($h1, this, i#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.SeqOp())
       && (_module.SeqOp.G#canCall($h0, this, i#0) || LitInt(0) <= i#0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.SeqOp.G($h0, this, i#0) == _module.SeqOp.G($h1, this, i#0));

function _module.SeqOp.G#requires(Heap, ref, int) : bool;

// #requires axiom for _module.SeqOp.G
axiom (forall $Heap: Heap, this: ref, i#0: int :: 
  { _module.SeqOp.G#requires($Heap, this, i#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= i#0
     ==> _module.SeqOp.G#requires($Heap, this, i#0) == true);

procedure {:verboseName "SeqOp.G (well-formedness)"} CheckWellformed$$_module.SeqOp.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    i#0: int where LitInt(0) <= i#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.G (well-formedness)"} CheckWellformed$$_module.SeqOp.G(this: ref, i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
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
        if (i#0 < 20)
        {
            assume {:id "id61"} _module.SeqOp.G($Heap, this, i#0) == LitReal(25e-1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.SeqOp.G($Heap, this, i#0), TReal);
            return;
        }
        else
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.SeqOp.x];
            assume {:id "id62"} _module.SeqOp.G($Heap, this, i#0)
               == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.SeqOp.G($Heap, this, i#0), TReal);
            assert {:id "id63"} b$reqreads#0;
            return;
        }

        assume false;
    }
}



// function declaration for _module.SeqOp.H
function _module.SeqOp.H($heap: Heap, this: ref, i#0: int) : real
uses {
// definition axiom for _module.SeqOp.H (revealed)
axiom {:id "id64"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, i#0: int :: 
    { _module.SeqOp.H($Heap, this, i#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.H#canCall($Heap, this, i#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= i#0)
       ==> _module.SeqOp.H($Heap, this, i#0)
         == (if i#0 < 20 then 25e-1 else $Unbox(read($Heap, this, _module.SeqOp.x)): real));
}

function _module.SeqOp.H#canCall($heap: Heap, this: ref, i#0: int) : bool;

// frame axiom for _module.SeqOp.H
axiom (forall $h0: Heap, $h1: Heap, this: ref, i#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.SeqOp.H($h1, this, i#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.SeqOp())
       && (_module.SeqOp.H#canCall($h0, this, i#0) || LitInt(0) <= i#0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && Set#IsMember((if i#0 < 20
               then Set#Empty(): Set
               else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
            $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.SeqOp.H($h0, this, i#0) == _module.SeqOp.H($h1, this, i#0));

function _module.SeqOp.H#requires(Heap, ref, int) : bool;

// #requires axiom for _module.SeqOp.H
axiom (forall $Heap: Heap, this: ref, i#0: int :: 
  { _module.SeqOp.H#requires($Heap, this, i#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= i#0
     ==> _module.SeqOp.H#requires($Heap, this, i#0) == true);

procedure {:verboseName "SeqOp.H (well-formedness)"} CheckWellformed$$_module.SeqOp.H(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    i#0: int where LitInt(0) <= i#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.H (well-formedness)"} CheckWellformed$$_module.SeqOp.H(this: ref, i#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember((if i#0 < 20
             then Set#Empty(): Set
             else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
          $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    if (i#0 < 20)
    {
    }
    else
    {
    }

    // Check well-formedness of the decreases clause
    if (i#0 < 20)
    {
    }
    else
    {
    }

    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (i#0 < 20)
        {
            assume {:id "id65"} _module.SeqOp.H($Heap, this, i#0) == LitReal(25e-1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.SeqOp.H($Heap, this, i#0), TReal);
            return;
        }
        else
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.SeqOp.x];
            assume {:id "id66"} _module.SeqOp.H($Heap, this, i#0)
               == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.SeqOp.H($Heap, this, i#0), TReal);
            assert {:id "id67"} b$reqreads#0;
            return;
        }

        assume false;
    }
}



// function declaration for _module.SeqOp.S0
function _module.SeqOp.S0(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S0
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.S0(this, n#0) } 
    _module.SeqOp.S0#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S0(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S0 (revealed)
axiom {:id "id68"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S0(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S0#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S0(this, n#0)
         == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this)));
// definition axiom for _module.SeqOp.S0 for decreasing-related literals (revealed)
axiom {:id "id69"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S0(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S0#canCall(this, LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S0(this, LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.G#Handle(this)));
// definition axiom for _module.SeqOp.S0 for all literals (revealed)
axiom {:id "id70"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S0(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S0#canCall(Lit(this), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S0(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.G#Handle(Lit(this))));
}

function _module.SeqOp.S0#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.S0#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.S0
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S0#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S0#requires(this, n#0) == true);

function _module.SeqOp.G#Handle(self: ref) : HandleType;

axiom (forall $self: ref, $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.G#Handle($self), $fh$0x#0) } 
  Apply1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.G#Handle($self), $fh$0x#0)
     == $Box(_module.SeqOp.G($heap, $self, $Unbox($fh$0x#0): int)));

axiom (forall $self: ref, $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.G#Handle($self), $fh$0x#0) } 
  Requires1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.G#Handle($self), $fh$0x#0)
     == _module.SeqOp.G#requires($heap, $self, $Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $self: ref, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.G#Handle($self), $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.G#Handle($self), $fh$0x#0), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $self));

axiom (forall $self: ref, $heap: Heap, $fh$0x#0: int :: 
  { _module.SeqOp.G($heap, $self, $fh$0x#0) } 
  _module.SeqOp.G($heap, $self, $fh$0x#0)
     == $Unbox(Apply1(Tclass._System.nat(), 
        TReal, 
        $heap, 
        _module.SeqOp.G#Handle($self), 
        $Box($fh$0x#0))): real);

procedure {:verboseName "SeqOp.S0 (well-formedness)"} CheckWellformed$$_module.SeqOp.S0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S0 (well-formedness)"} CheckWellformed$$_module.SeqOp.S0(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S0(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id71"} 0 <= n#0;
        assert {:id "id72"} 0 != $FunctionContextHeight;
        assert {:id "id73"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              _module.SeqOp.G#Handle(this), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(Tclass._System.nat(), 
                      TReal, 
                      $Heap, 
                      _module.SeqOp.G#Handle(this), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id74"} _module.SeqOp.S0(this, n#0)
           == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S0(this, n#0), TSeq(TReal));
        assert {:id "id75"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.S1
function _module.SeqOp.S1($heap: Heap, this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S1
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S1($Heap, this, n#0) } 
    _module.SeqOp.S1#canCall($Heap, this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S1($Heap, this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S1 (revealed)
axiom {:id "id76"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S1($Heap, this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S1#canCall($Heap, this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S1($Heap, this, n#0)
         == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this)));
}

function _module.SeqOp.S1#canCall($heap: Heap, this: ref, n#0: int) : bool;

// frame axiom for _module.SeqOp.S1
axiom (forall $h0: Heap, $h1: Heap, this: ref, n#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.SeqOp.S1($h1, this, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.SeqOp())
       && (_module.SeqOp.S1#canCall($h0, this, n#0) || LitInt(0) <= n#0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.SeqOp.S1($h0, this, n#0) == _module.SeqOp.S1($h1, this, n#0));

function _module.SeqOp.S1#requires(Heap, ref, int) : bool;

// #requires axiom for _module.SeqOp.S1
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S1#requires($Heap, this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S1#requires($Heap, this, n#0) == true);

procedure {:verboseName "SeqOp.S1 (well-formedness)"} CheckWellformed$$_module.SeqOp.S1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S1 (well-formedness)"} CheckWellformed$$_module.SeqOp.S1(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S1($Heap, this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id77"} 0 <= n#0;
        assert {:id "id78"} 0 != $FunctionContextHeight;
        assert {:id "id79"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              _module.SeqOp.G#Handle(this), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(Tclass._System.nat(), 
                      TReal, 
                      $Heap, 
                      _module.SeqOp.G#Handle(this), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id80"} _module.SeqOp.S1($Heap, this, n#0)
           == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S1($Heap, this, n#0), TSeq(TReal));
        assert {:id "id81"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.S2
function _module.SeqOp.S2(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S2
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.S2(this, n#0) } 
    _module.SeqOp.S2#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S2(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S2 (revealed)
axiom {:id "id82"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S2(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S2#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S2(this, n#0)
         == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.H#Handle(this)));
// definition axiom for _module.SeqOp.S2 for decreasing-related literals (revealed)
axiom {:id "id83"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S2(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S2#canCall(this, LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S2(this, LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.H#Handle(this)));
// definition axiom for _module.SeqOp.S2 for all literals (revealed)
axiom {:id "id84"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S2(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S2#canCall(Lit(this), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S2(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.H#Handle(Lit(this))));
}

function _module.SeqOp.S2#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.S2#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.S2
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S2#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S2#requires(this, n#0) == true);

function _module.SeqOp.H#Handle(self: ref) : HandleType;

axiom (forall $self: ref, $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.H#Handle($self), $fh$0x#0) } 
  Apply1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.H#Handle($self), $fh$0x#0)
     == $Box(_module.SeqOp.H($heap, $self, $Unbox($fh$0x#0): int)));

axiom (forall $self: ref, $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.H#Handle($self), $fh$0x#0) } 
  Requires1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.H#Handle($self), $fh$0x#0)
     == _module.SeqOp.H#requires($heap, $self, $Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $self: ref, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.H#Handle($self), $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.nat(), TReal, $heap, _module.SeqOp.H#Handle($self), $fh$0x#0), 
      $bx)
     == Set#IsMember((if $Unbox($fh$0x#0): int < 20
         then Set#Empty(): Set
         else Set#UnionOne(Set#Empty(): Set, $Box($self))), 
      $bx));

axiom (forall $self: ref, $heap: Heap, $fh$0x#0: int :: 
  { _module.SeqOp.H($heap, $self, $fh$0x#0) } 
  _module.SeqOp.H($heap, $self, $fh$0x#0)
     == $Unbox(Apply1(Tclass._System.nat(), 
        TReal, 
        $heap, 
        _module.SeqOp.H#Handle($self), 
        $Box($fh$0x#0))): real);

procedure {:verboseName "SeqOp.S2 (well-formedness)"} CheckWellformed$$_module.SeqOp.S2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S2 (well-formedness)"} CheckWellformed$$_module.SeqOp.S2(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S2(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id85"} 0 <= n#0;
        assert {:id "id86"} 0 != $FunctionContextHeight;
        assert {:id "id87"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              _module.SeqOp.H#Handle(this), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(Tclass._System.nat(), 
                      TReal, 
                      $Heap, 
                      _module.SeqOp.H#Handle(this), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id88"} _module.SeqOp.S2(this, n#0)
           == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.H#Handle(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S2(this, n#0), TSeq(TReal));
        assert {:id "id89"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.S3
function _module.SeqOp.S3($heap: Heap, this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S3
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S3($Heap, this, n#0) } 
    _module.SeqOp.S3#canCall($Heap, this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S3($Heap, this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S3 (revealed)
axiom {:id "id90"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S3($Heap, this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S3#canCall($Heap, this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S3($Heap, this, n#0)
         == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.H#Handle(this)));
}

function _module.SeqOp.S3#canCall($heap: Heap, this: ref, n#0: int) : bool;

// frame axiom for _module.SeqOp.S3
axiom (forall $h0: Heap, $h1: Heap, this: ref, n#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.SeqOp.S3($h1, this, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.SeqOp())
       && (_module.SeqOp.S3#canCall($h0, this, n#0) || LitInt(0) <= n#0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.SeqOp.S3($h0, this, n#0) == _module.SeqOp.S3($h1, this, n#0));

function _module.SeqOp.S3#requires(Heap, ref, int) : bool;

// #requires axiom for _module.SeqOp.S3
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S3#requires($Heap, this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S3#requires($Heap, this, n#0) == true);

procedure {:verboseName "SeqOp.S3 (well-formedness)"} CheckWellformed$$_module.SeqOp.S3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S3 (well-formedness)"} CheckWellformed$$_module.SeqOp.S3(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S3($Heap, this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id91"} 0 <= n#0;
        assert {:id "id92"} 0 != $FunctionContextHeight;
        assert {:id "id93"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              _module.SeqOp.H#Handle(this), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(Tclass._System.nat(), 
                      TReal, 
                      $Heap, 
                      _module.SeqOp.H#Handle(this), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id94"} _module.SeqOp.S3($Heap, this, n#0)
           == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.H#Handle(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S3($Heap, this, n#0), TSeq(TReal));
        assert {:id "id95"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.S4
function _module.SeqOp.S4(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S4
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.S4(this, n#0) } 
    _module.SeqOp.S4#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S4(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S4 (revealed)
axiom {:id "id96"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S4(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S4#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S4(this, n#0)
         == Seq#Create(TReal, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#0#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.S4 for decreasing-related literals (revealed)
axiom {:id "id97"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S4(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S4#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S4(this, LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.S4 for all literals (revealed)
axiom {:id "id98"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S4(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S4#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S4(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#4#heap#0, Lit(this), _module.SeqOp.x)): real))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.S4#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.S4#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.S4
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S4#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S4#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.S4 (well-formedness)"} CheckWellformed$$_module.SeqOp.S4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S4 (well-formedness)"} CheckWellformed$$_module.SeqOp.S4(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S4(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id99"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (i#0 < 20)
                {
                    assume {:id "id100"} lambdaResult#0 == LitReal(25e-1);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
                else
                {
                    assert {:id "id101"} $_Frame#l0[this, _module.SeqOp.x];
                    assume {:id "id102"} lambdaResult#0 == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id103"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < 20
                             then 25e-1
                             else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TReal, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < 20
                                     then 25e-1
                                     else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id104"} _module.SeqOp.S4(this, n#0)
           == Seq#Create(TReal, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < 20
                           then 25e-1
                           else $Unbox(read($l#8#heap#0, this, _module.SeqOp.x)): real))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S4(this, n#0), TSeq(TReal));
        assert {:id "id105"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.S5
function _module.SeqOp.S5(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S5
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.S5(this, n#0) } 
    _module.SeqOp.S5#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S5(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S5 (revealed)
axiom {:id "id106"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S5(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S5#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S5(this, n#0)
         == Seq#Create(TReal, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#0#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: $l#0#o#0 == this))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.S5 for decreasing-related literals (revealed)
axiom {:id "id107"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S5(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S5#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S5(this, LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: $l#2#o#0 == this))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.S5 for all literals (revealed)
axiom {:id "id108"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S5(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S5#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S5(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#4#heap#0, Lit(this), _module.SeqOp.x)): real))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: $l#4#o#0 == Lit(this)))))), 
              $LS($LZ)))));
}

function _module.SeqOp.S5#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.S5#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.S5
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S5#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S5#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.S5 (well-formedness)"} CheckWellformed$$_module.SeqOp.S5(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S5 (well-formedness)"} CheckWellformed$$_module.SeqOp.S5(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S5(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id109"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> $o == this);
                if (i#0 < 20)
                {
                    assume {:id "id110"} lambdaResult#0 == LitReal(25e-1);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
                else
                {
                    assert {:id "id111"} $_Frame#l0[this, _module.SeqOp.x];
                    assume {:id "id112"} lambdaResult#0 == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id113"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < 20
                             then 25e-1
                             else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: $l#6#o#0 == this))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TReal, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < 20
                                     then 25e-1
                                     else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: $l#6#o#0 == this))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id114"} _module.SeqOp.S5(this, n#0)
           == Seq#Create(TReal, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < 20
                           then 25e-1
                           else $Unbox(read($l#8#heap#0, this, _module.SeqOp.x)): real))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: $l#8#o#0 == this))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S5(this, n#0), TSeq(TReal));
        assert {:id "id115"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.S6
function _module.SeqOp.S6($heap: Heap, this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S6
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S6($Heap, this, n#0) } 
    _module.SeqOp.S6#canCall($Heap, this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S6($Heap, this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S6 (revealed)
axiom {:id "id116"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S6($Heap, this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S6#canCall($Heap, this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S6($Heap, this, n#0)
         == Seq#Create(TReal, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#0#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: $l#0#o#0 == this))))), 
              $LS($LZ)))));
}

function _module.SeqOp.S6#canCall($heap: Heap, this: ref, n#0: int) : bool;

// frame axiom for _module.SeqOp.S6
axiom (forall $h0: Heap, $h1: Heap, this: ref, n#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.SeqOp.S6($h1, this, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.SeqOp())
       && (_module.SeqOp.S6#canCall($h0, this, n#0) || LitInt(0) <= n#0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.SeqOp.S6($h0, this, n#0) == _module.SeqOp.S6($h1, this, n#0));

function _module.SeqOp.S6#requires(Heap, ref, int) : bool;

// #requires axiom for _module.SeqOp.S6
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S6#requires($Heap, this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S6#requires($Heap, this, n#0) == true);

procedure {:verboseName "SeqOp.S6 (well-formedness)"} CheckWellformed$$_module.SeqOp.S6(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S6 (well-formedness)"} CheckWellformed$$_module.SeqOp.S6(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S6($Heap, this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id117"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> $o == this);
                if (i#0 < 20)
                {
                    assume {:id "id118"} lambdaResult#0 == LitReal(25e-1);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
                else
                {
                    assert {:id "id119"} $_Frame#l0[this, _module.SeqOp.x];
                    assume {:id "id120"} lambdaResult#0 == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id121"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                    Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                        $Box((if $Unbox($l#2#i#0): int < 20
                             then 25e-1
                             else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                      (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                      (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#2#o#0: ref :: $l#2#o#0 == this))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TReal, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                            Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                                $Box((if $Unbox($l#2#i#0): int < 20
                                     then 25e-1
                                     else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                              (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                              (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#2#o#0: ref :: $l#2#o#0 == this))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id122"} _module.SeqOp.S6($Heap, this, n#0)
           == Seq#Create(TReal, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                  Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                      $Box((if $Unbox($l#4#i#0): int < 20
                           then 25e-1
                           else $Unbox(read($l#4#heap#0, this, _module.SeqOp.x)): real))), 
                    (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                    (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#4#o#0: ref :: $l#4#o#0 == this))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S6($Heap, this, n#0), TSeq(TReal));
        assert {:id "id123"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.S7
function _module.SeqOp.S7(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.S7
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.S7(this, n#0) } 
    _module.SeqOp.S7#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.S7(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.S7 (revealed)
axiom {:id "id124"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.S7(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.S7#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S7(this, n#0)
         == Seq#Create(TReal, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#0#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $IsBox($l#0#i#0, TInt) && $Unbox($l#0#i#0): int < 20), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.S7 for decreasing-related literals (revealed)
axiom {:id "id125"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S7(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S7#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S7(this, LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $IsBox($l#2#i#0, TInt) && $Unbox($l#2#i#0): int < 20), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.S7 for all literals (revealed)
axiom {:id "id126"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.S7(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.S7#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.S7(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#4#heap#0, Lit(this), _module.SeqOp.x)): real))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $IsBox($l#4#i#0, TInt) && $Unbox($l#4#i#0): int < 20), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.S7#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.S7#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.S7
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.S7#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.S7#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.S7 (well-formedness)"} CheckWellformed$$_module.SeqOp.S7(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.S7 (well-formedness)"} CheckWellformed$$_module.SeqOp.S7(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.S7(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id127"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (i#0 < 20)
                {
                    if (i#0 < 20)
                    {
                        assume {:id "id128"} lambdaResult#0 == LitReal(25e-1);
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(lambdaResult#0, TReal);
                    }
                    else
                    {
                        assert {:id "id129"} $_Frame#l0[this, _module.SeqOp.x];
                        assume {:id "id130"} lambdaResult#0 == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(lambdaResult#0, TReal);
                    }
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id131"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < 20
                             then 25e-1
                             else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $IsBox($l#6#i#0, TInt) && $Unbox($l#6#i#0): int < 20), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TReal, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < 20
                                     then 25e-1
                                     else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $IsBox($l#6#i#0, TInt) && $Unbox($l#6#i#0): int < 20), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id132"} _module.SeqOp.S7(this, n#0)
           == Seq#Create(TReal, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < 20
                           then 25e-1
                           else $Unbox(read($l#8#heap#0, this, _module.SeqOp.x)): real))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $IsBox($l#8#i#0, TInt) && $Unbox($l#8#i#0): int < 20), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.S7(this, n#0), TSeq(TReal));
        assert {:id "id133"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.T0
function _module.SeqOp.T0(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.T0
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.T0(this, n#0) } 
    _module.SeqOp.T0#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> $Is(_module.SeqOp.T0(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.T0 (revealed)
axiom {:id "id134"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.T0(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.T0#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> _module.SeqOp.T0(this, n#0)
         == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this)));
// definition axiom for _module.SeqOp.T0 for decreasing-related literals (revealed)
axiom {:id "id135"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T0(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T0#canCall(this, LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T0(this, LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.G#Handle(this)));
// definition axiom for _module.SeqOp.T0 for all literals (revealed)
axiom {:id "id136"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T0(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T0#canCall(Lit(this), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T0(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.G#Handle(Lit(this))));
}

function _module.SeqOp.T0#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.T0#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.T0
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.T0#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.T0#requires(this, n#0) == (n#0 <= LitInt(20)));

procedure {:verboseName "SeqOp.T0 (well-formedness)"} CheckWellformed$$_module.SeqOp.T0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.T0 (well-formedness)"} CheckWellformed$$_module.SeqOp.T0(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id137"} n#0 <= LitInt(20);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.T0(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id138"} 0 <= n#0;
        assert {:id "id139"} 0 != $FunctionContextHeight;
        assert {:id "id140"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              _module.SeqOp.G#Handle(this), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(Tclass._System.nat(), 
                      TReal, 
                      $Heap, 
                      _module.SeqOp.G#Handle(this), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id141"} _module.SeqOp.T0(this, n#0)
           == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.T0(this, n#0), TSeq(TReal));
        assert {:id "id142"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.T1
function _module.SeqOp.T1($heap: Heap, this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.T1
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.T1($Heap, this, n#0) } 
    _module.SeqOp.T1#canCall($Heap, this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> $Is(_module.SeqOp.T1($Heap, this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.T1 (revealed)
axiom {:id "id143"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.T1($Heap, this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.T1#canCall($Heap, this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> _module.SeqOp.T1($Heap, this, n#0)
         == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this)));
}

function _module.SeqOp.T1#canCall($heap: Heap, this: ref, n#0: int) : bool;

// frame axiom for _module.SeqOp.T1
axiom (forall $h0: Heap, $h1: Heap, this: ref, n#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.SeqOp.T1($h1, this, n#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.SeqOp())
       && (_module.SeqOp.T1#canCall($h0, this, n#0) || LitInt(0) <= n#0)
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.SeqOp.T1($h0, this, n#0) == _module.SeqOp.T1($h1, this, n#0));

function _module.SeqOp.T1#requires(Heap, ref, int) : bool;

// #requires axiom for _module.SeqOp.T1
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.T1#requires($Heap, this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.T1#requires($Heap, this, n#0) == (n#0 <= LitInt(20)));

procedure {:verboseName "SeqOp.T1 (well-formedness)"} CheckWellformed$$_module.SeqOp.T1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.T1 (well-formedness)"} CheckWellformed$$_module.SeqOp.T1(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id144"} n#0 <= LitInt(20);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.T1($Heap, this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id145"} 0 <= n#0;
        assert {:id "id146"} 0 != $FunctionContextHeight;
        assert {:id "id147"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              _module.SeqOp.G#Handle(this), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(Tclass._System.nat(), 
                      TReal, 
                      $Heap, 
                      _module.SeqOp.G#Handle(this), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id148"} _module.SeqOp.T1($Heap, this, n#0)
           == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.G#Handle(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.T1($Heap, this, n#0), TSeq(TReal));
        assert {:id "id149"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.T2
function _module.SeqOp.T2(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.T2
axiom 1 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.T2(this, n#0) } 
    _module.SeqOp.T2#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> $Is(_module.SeqOp.T2(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.T2 (revealed)
axiom {:id "id150"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.T2(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.T2#canCall(this, n#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> _module.SeqOp.T2(this, n#0)
         == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.H#Handle(this)));
// definition axiom for _module.SeqOp.T2 for decreasing-related literals (revealed)
axiom {:id "id151"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T2(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T2#canCall(this, LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T2(this, LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.H#Handle(this)));
// definition axiom for _module.SeqOp.T2 for all literals (revealed)
axiom {:id "id152"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T2(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T2#canCall(Lit(this), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T2(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, $Heap, LitInt(n#0), _module.SeqOp.H#Handle(Lit(this))));
}

function _module.SeqOp.T2#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.T2#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.T2
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.T2#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.T2#requires(this, n#0) == (n#0 <= LitInt(20)));

procedure {:verboseName "SeqOp.T2 (well-formedness)"} CheckWellformed$$_module.SeqOp.T2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.T2 (well-formedness)"} CheckWellformed$$_module.SeqOp.T2(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id153"} n#0 <= LitInt(20);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.T2(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id154"} 0 <= n#0;
        assert {:id "id155"} 0 != $FunctionContextHeight;
        assert {:id "id156"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              _module.SeqOp.H#Handle(this), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(Tclass._System.nat(), 
                      TReal, 
                      $Heap, 
                      _module.SeqOp.H#Handle(this), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id157"} _module.SeqOp.T2(this, n#0)
           == Seq#Create(TReal, $Heap, n#0, _module.SeqOp.H#Handle(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.T2(this, n#0), TSeq(TReal));
        assert {:id "id158"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.T3
function _module.SeqOp.T3(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.T3
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.T3(this, n#0) } 
    _module.SeqOp.T3#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> $Is(_module.SeqOp.T3(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.T3 (revealed)
axiom {:id "id159"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.T3(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.T3#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> _module.SeqOp.T3(this, n#0)
         == Seq#Create(TReal, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#0#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: $l#0#o#0 == this))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.T3 for decreasing-related literals (revealed)
axiom {:id "id160"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T3(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T3#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T3(this, LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: $l#2#o#0 == this))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.T3 for all literals (revealed)
axiom {:id "id161"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T3(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T3#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T3(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#4#heap#0, Lit(this), _module.SeqOp.x)): real))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: $l#4#o#0 == Lit(this)))))), 
              $LS($LZ)))));
}

function _module.SeqOp.T3#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.T3#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.T3
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.T3#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.T3#requires(this, n#0) == (n#0 <= LitInt(20)));

procedure {:verboseName "SeqOp.T3 (well-formedness)"} CheckWellformed$$_module.SeqOp.T3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.T3 (well-formedness)"} CheckWellformed$$_module.SeqOp.T3(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id162"} n#0 <= LitInt(20);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.T3(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id163"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> $o == this);
                if (i#0 < 20)
                {
                    assume {:id "id164"} lambdaResult#0 == LitReal(25e-1);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
                else
                {
                    assert {:id "id165"} $_Frame#l0[this, _module.SeqOp.x];
                    assume {:id "id166"} lambdaResult#0 == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id167"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < 20
                             then 25e-1
                             else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: $l#6#o#0 == this))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TReal, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < 20
                                     then 25e-1
                                     else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: $l#6#o#0 == this))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id168"} _module.SeqOp.T3(this, n#0)
           == Seq#Create(TReal, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < 20
                           then 25e-1
                           else $Unbox(read($l#8#heap#0, this, _module.SeqOp.x)): real))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: $l#8#o#0 == this))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.T3(this, n#0), TSeq(TReal));
        assert {:id "id169"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.T4
function _module.SeqOp.T4(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.T4
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.T4(this, n#0) } 
    _module.SeqOp.T4#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> $Is(_module.SeqOp.T4(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.T4 (revealed)
axiom {:id "id170"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.T4(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.T4#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> _module.SeqOp.T4(this, n#0)
         == Seq#Create(TReal, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#0#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $IsBox($l#0#i#0, TInt) && $Unbox($l#0#i#0): int < 20), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.T4 for decreasing-related literals (revealed)
axiom {:id "id171"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T4(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T4#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T4(this, LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $IsBox($l#2#i#0, TInt) && $Unbox($l#2#i#0): int < 20), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.T4 for all literals (revealed)
axiom {:id "id172"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T4(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T4#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T4(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#4#heap#0, Lit(this), _module.SeqOp.x)): real))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $IsBox($l#4#i#0, TInt) && $Unbox($l#4#i#0): int < 20), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.T4#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.T4#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.T4
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.T4#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.T4#requires(this, n#0) == (n#0 <= LitInt(20)));

procedure {:verboseName "SeqOp.T4 (well-formedness)"} CheckWellformed$$_module.SeqOp.T4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.T4 (well-formedness)"} CheckWellformed$$_module.SeqOp.T4(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id173"} n#0 <= LitInt(20);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.T4(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id174"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (i#0 < 20)
                {
                    if (i#0 < 20)
                    {
                        assume {:id "id175"} lambdaResult#0 == LitReal(25e-1);
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(lambdaResult#0, TReal);
                    }
                    else
                    {
                        assert {:id "id176"} $_Frame#l0[this, _module.SeqOp.x];
                        assume {:id "id177"} lambdaResult#0 == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(lambdaResult#0, TReal);
                    }
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id178"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < 20
                             then 25e-1
                             else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $IsBox($l#6#i#0, TInt) && $Unbox($l#6#i#0): int < 20), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TReal, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < 20
                                     then 25e-1
                                     else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $IsBox($l#6#i#0, TInt) && $Unbox($l#6#i#0): int < 20), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id179"} _module.SeqOp.T4(this, n#0)
           == Seq#Create(TReal, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < 20
                           then 25e-1
                           else $Unbox(read($l#8#heap#0, this, _module.SeqOp.x)): real))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $IsBox($l#8#i#0, TInt) && $Unbox($l#8#i#0): int < 20), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.T4(this, n#0), TSeq(TReal));
        assert {:id "id180"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.T5
function _module.SeqOp.T5(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.T5
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.T5(this, n#0) } 
    _module.SeqOp.T5#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> $Is(_module.SeqOp.T5(this, n#0), TSeq(TReal)));
// definition axiom for _module.SeqOp.T5 (revealed)
axiom {:id "id181"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.T5(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.T5#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && n#0 <= LitInt(20))
       ==> _module.SeqOp.T5(this, n#0)
         == Seq#Create(TReal, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#0#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: 
                        Set#IsMember((if $Unbox($l#0#i#0): int < 20
                             then Set#Empty(): Set
                             else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                          $Box($l#0#o#0))))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.T5 for decreasing-related literals (revealed)
axiom {:id "id182"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T5(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T5#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T5(this, LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#2#heap#0, this, _module.SeqOp.x)): real))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: 
                        Set#IsMember((if $Unbox($l#2#i#0): int < 20
                             then Set#Empty(): Set
                             else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                          $Box($l#2#o#0))))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.T5 for all literals (revealed)
axiom {:id "id183"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.T5(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.T5#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(n#0) <= LitInt(20))
       ==> _module.SeqOp.T5(Lit(this), LitInt(n#0))
         == Seq#Create(TReal, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < 20
                         then 25e-1
                         else $Unbox(read($l#4#heap#0, Lit(this), _module.SeqOp.x)): real))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: 
                        Set#IsMember((if $Unbox($l#4#i#0): int < 20
                             then Set#Empty(): Set
                             else Set#UnionOne(Set#Empty(): Set, $Box(Lit(this)))), 
                          $Box($l#4#o#0))))))), 
              $LS($LZ)))));
}

function _module.SeqOp.T5#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.T5#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.T5
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.T5#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.T5#requires(this, n#0) == (n#0 <= LitInt(20)));

procedure {:verboseName "SeqOp.T5 (well-formedness)"} CheckWellformed$$_module.SeqOp.T5(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.T5 (well-formedness)"} CheckWellformed$$_module.SeqOp.T5(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id184"} n#0 <= LitInt(20);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.T5(this, n#0), TSeq(TReal));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id185"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool
                     ==> Set#IsMember((if i#0 < 20
                         then Set#Empty(): Set
                         else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                      $Box($o)));
                if (i#0 < 20)
                {
                }
                else
                {
                }

                if (i#0 < 20)
                {
                    assume {:id "id186"} lambdaResult#0 == LitReal(25e-1);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
                else
                {
                    assert {:id "id187"} $_Frame#l0[this, _module.SeqOp.x];
                    assume {:id "id188"} lambdaResult#0 == $Unbox(read($Heap, this, _module.SeqOp.x)): real;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TReal);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id189"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < 20
                             then 25e-1
                             else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: 
                            Set#IsMember((if $Unbox($l#6#i#0): int < 20
                                 then Set#Empty(): Set
                                 else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                              $Box($l#6#o#0))))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TReal, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < 20
                                     then 25e-1
                                     else $Unbox(read($l#6#heap#0, this, _module.SeqOp.x)): real))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: 
                                    Set#IsMember((if $Unbox($l#6#i#0): int < 20
                                         then Set#Empty(): Set
                                         else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                                      $Box($l#6#o#0))))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id190"} _module.SeqOp.T5(this, n#0)
           == Seq#Create(TReal, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < 20
                           then 25e-1
                           else $Unbox(read($l#8#heap#0, this, _module.SeqOp.x)): real))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: 
                          Set#IsMember((if $Unbox($l#8#i#0): int < 20
                               then Set#Empty(): Set
                               else Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                            $Box($l#8#o#0))))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.T5(this, n#0), TSeq(TReal));
        assert {:id "id191"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT0
function _module.SeqOp.XT0(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT0
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT0(this, n#0) } 
    _module.SeqOp.XT0#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT0(this, n#0), TSeq(TInt)));
// definition axiom for _module.SeqOp.XT0 (revealed)
axiom {:id "id192"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT0(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT0#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT0(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#_v1#0: Box :: $Box(LitInt(7))), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v1#0: Box :: $IsBox($l#0#_v1#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v1#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT0 for decreasing-related literals (revealed)
axiom {:id "id193"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT0(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT0#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT0(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#_v1#0: Box :: $Box(LitInt(7))), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v1#0: Box :: $IsBox($l#2#_v1#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v1#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT0 for all literals (revealed)
axiom {:id "id194"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT0(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT0#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT0(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#_v1#0: Box :: $Box(LitInt(7))), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v1#0: Box :: $IsBox($l#4#_v1#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v1#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT0#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT0#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT0
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT0#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT0#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT0 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT0 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT0(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var _v1#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT0(this, n#0), TSeq(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id195"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc _v1#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                assume {:id "id196"} lambdaResult#0 == LitInt(7);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TInt);
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id197"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#_v1#0: Box :: $Box(LitInt(7))), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v1#0: Box :: $IsBox($l#6#_v1#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v1#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#_v1#0: Box :: $Box(LitInt(7))), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v1#0: Box :: $IsBox($l#6#_v1#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v1#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id198"} _module.SeqOp.XT0(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#_v1#0: Box :: $Box(LitInt(7))), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v1#0: Box :: $IsBox($l#8#_v1#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v1#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT0(this, n#0), TSeq(TInt));
        assert {:id "id199"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT1
function _module.SeqOp.XT1(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT1
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT1(this, n#0) } 
    _module.SeqOp.XT1#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT1(this, n#0), TSeq(TInt)));
// definition axiom for _module.SeqOp.XT1 (revealed)
axiom {:id "id200"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT1(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT1#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT1(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#_v2#0: Box :: $Box(LitInt(7))), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v2#0: Box :: $IsBox($l#0#_v2#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v2#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT1 for decreasing-related literals (revealed)
axiom {:id "id201"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT1(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT1#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT1(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#_v2#0: Box :: $Box(LitInt(7))), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v2#0: Box :: $IsBox($l#2#_v2#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v2#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT1 for all literals (revealed)
axiom {:id "id202"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT1(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT1#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT1(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#_v2#0: Box :: $Box(LitInt(7))), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v2#0: Box :: $IsBox($l#4#_v2#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v2#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT1#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT1#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT1
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT1#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT1#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT1 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT1 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT1(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var _v2#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT1(this, n#0), TSeq(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id203"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc _v2#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                assume {:id "id204"} lambdaResult#0 == LitInt(7);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TInt);
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id205"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: $Box(LitInt(7))), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: $IsBox($l#6#_v2#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: $Box(LitInt(7))), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: $IsBox($l#6#_v2#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assert {:id "id206"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> $Is($Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                        Handle1((lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: $Box(LitInt(7))), 
                          (lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: $IsBox($l#6#_v2#0, TInt)), 
                          (lambda $l#6#heap#0: Heap, $l#6#_v2#0: Box :: 
                            SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(seqinit#0#i0#0))): int, 
              Tclass._System.nat()));
        assume {:id "id207"} _module.SeqOp.XT1(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#_v2#0: Box :: $Box(LitInt(7))), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v2#0: Box :: $IsBox($l#8#_v2#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v2#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT1(this, n#0), TSeq(TInt));
        assert {:id "id208"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT2
function _module.SeqOp.XT2(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT2
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT2(this, n#0) } 
    _module.SeqOp.XT2#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT2(this, n#0), TSeq(TInt)));
// definition axiom for _module.SeqOp.XT2 (revealed)
axiom {:id "id209"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT2(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT2#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT2(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: $Box(LitInt(-7))), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: $IsBox($l#0#_v3#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v3#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT2 for decreasing-related literals (revealed)
axiom {:id "id210"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT2(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT2#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT2(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#_v3#0: Box :: $Box(LitInt(-7))), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v3#0: Box :: $IsBox($l#2#_v3#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v3#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT2 for all literals (revealed)
axiom {:id "id211"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT2(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT2#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT2(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#_v3#0: Box :: $Box(LitInt(-7))), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v3#0: Box :: $IsBox($l#4#_v3#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v3#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT2#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT2#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT2
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT2#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT2#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT2 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT2 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT2(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var _v3#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT2(this, n#0), TSeq(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id212"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc _v3#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                assume {:id "id213"} lambdaResult#0 == LitInt(-7);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TInt);
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id214"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: $Box(LitInt(-7))), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: $IsBox($l#6#_v3#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: $Box(LitInt(-7))), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: $IsBox($l#6#_v3#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assert {:id "id215"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> $Is($Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                        Handle1((lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: $Box(LitInt(-7))), 
                          (lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: $IsBox($l#6#_v3#0, TInt)), 
                          (lambda $l#6#heap#0: Heap, $l#6#_v3#0: Box :: 
                            SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(seqinit#0#i0#0))): int, 
              Tclass._System.nat()));
        assume {:id "id216"} _module.SeqOp.XT2(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#_v3#0: Box :: $Box(LitInt(-7))), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v3#0: Box :: $IsBox($l#8#_v3#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v3#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT2(this, n#0), TSeq(TInt));
        assert {:id "id217"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT3
function _module.SeqOp.XT3(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT3
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT3(this, n#0) } 
    _module.SeqOp.XT3#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT3(this, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.SeqOp.XT3 (revealed)
axiom {:id "id218"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT3(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT3#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT3(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#_v4#0: Box :: $Box(LitInt(-7))), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v4#0: Box :: $IsBox($l#0#_v4#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#_v4#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT3 for decreasing-related literals (revealed)
axiom {:id "id219"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT3(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT3#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT3(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#_v4#0: Box :: $Box(LitInt(-7))), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v4#0: Box :: $IsBox($l#2#_v4#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#_v4#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT3 for all literals (revealed)
axiom {:id "id220"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT3(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT3#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT3(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#_v4#0: Box :: $Box(LitInt(-7))), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v4#0: Box :: $IsBox($l#4#_v4#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#_v4#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT3#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT3#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT3
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT3#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT3#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT3 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT3 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT3(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var _v4#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT3(this, n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id221"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc _v4#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                assume {:id "id222"} lambdaResult#0 == LitInt(-7);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TInt);
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id223"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: $Box(LitInt(-7))), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: $IsBox($l#6#_v4#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: $Box(LitInt(-7))), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: $IsBox($l#6#_v4#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assert {:id "id224"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> $Is($Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                        Handle1((lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: $Box(LitInt(-7))), 
                          (lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: $IsBox($l#6#_v4#0, TInt)), 
                          (lambda $l#6#heap#0: Heap, $l#6#_v4#0: Box :: 
                            SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(seqinit#0#i0#0))): int, 
              Tclass._System.nat()));
        assume {:id "id225"} _module.SeqOp.XT3(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#_v4#0: Box :: $Box(LitInt(-7))), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v4#0: Box :: $IsBox($l#8#_v4#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#_v4#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT3(this, n#0), TSeq(Tclass._System.nat()));
        assert {:id "id226"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT4
function _module.SeqOp.XT4(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT4
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT4(this, n#0) } 
    _module.SeqOp.XT4#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT4(this, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.SeqOp.XT4 (revealed)
axiom {:id "id227"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT4(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT4#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT4(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $Box(LitInt(10))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $IsBox($l#0#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#0#i#0): int
                       && $Unbox($l#0#i#0): int < 3), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT4 for decreasing-related literals (revealed)
axiom {:id "id228"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT4(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT4#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT4(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $Box(LitInt(10))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $IsBox($l#2#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#2#i#0): int
                       && $Unbox($l#2#i#0): int < 3), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT4 for all literals (revealed)
axiom {:id "id229"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT4(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT4#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT4(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $Box(LitInt(10))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $IsBox($l#4#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#4#i#0): int
                       && $Unbox($l#4#i#0): int < 3), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT4#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT4#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT4
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT4#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT4#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT4 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT4 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT4(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT4(this, n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id230"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (LitInt(0) <= i#0)
                {
                }

                if (LitInt(0) <= i#0 && i#0 < 3)
                {
                    assume {:id "id231"} lambdaResult#0 == LitInt(10);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TInt);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id232"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box(LitInt(10))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $IsBox($l#6#i#0, TInt)
                           && 
                          LitInt(0) <= $Unbox($l#6#i#0): int
                           && $Unbox($l#6#i#0): int < 3), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box(LitInt(10))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $IsBox($l#6#i#0, TInt)
                                   && 
                                  LitInt(0) <= $Unbox($l#6#i#0): int
                                   && $Unbox($l#6#i#0): int < 3), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assert {:id "id233"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> $Is($Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                        Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box(LitInt(10))), 
                          (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                            $IsBox($l#6#i#0, TInt)
                               && 
                              LitInt(0) <= $Unbox($l#6#i#0): int
                               && $Unbox($l#6#i#0): int < 3), 
                          (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                            SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(seqinit#0#i0#0))): int, 
              Tclass._System.nat()));
        assume {:id "id234"} _module.SeqOp.XT4(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $Box(LitInt(10))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $IsBox($l#8#i#0, TInt)
                         && 
                        LitInt(0) <= $Unbox($l#8#i#0): int
                         && $Unbox($l#8#i#0): int < 3), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT4(this, n#0), TSeq(Tclass._System.nat()));
        assert {:id "id235"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT5
function _module.SeqOp.XT5(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT5
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT5(this, n#0) } 
    _module.SeqOp.XT5#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT5(this, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.SeqOp.XT5 (revealed)
axiom {:id "id236"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT5(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT5#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT5(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $Box(LitInt(10))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $IsBox($l#0#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#0#i#0): int
                       && $Unbox($l#0#i#0): int < n#0), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT5 for decreasing-related literals (revealed)
axiom {:id "id237"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT5(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT5#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT5(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $Box(LitInt(10))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $IsBox($l#2#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#2#i#0): int
                       && $Unbox($l#2#i#0): int < n#0), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT5 for all literals (revealed)
axiom {:id "id238"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT5(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT5#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT5(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $Box(LitInt(10))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $IsBox($l#4#i#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#4#i#0): int
                       && $Unbox($l#4#i#0): int < n#0), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT5#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT5#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT5
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT5#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT5#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT5 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT5(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT5 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT5(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT5(this, n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id239"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (LitInt(0) <= i#0)
                {
                }

                if (LitInt(0) <= i#0 && i#0 < n#0)
                {
                    assume {:id "id240"} lambdaResult#0 == LitInt(10);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TInt);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id241"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box(LitInt(10))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $IsBox($l#6#i#0, TInt)
                           && 
                          LitInt(0) <= $Unbox($l#6#i#0): int
                           && $Unbox($l#6#i#0): int < n#0), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box(LitInt(10))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $IsBox($l#6#i#0, TInt)
                                   && 
                                  LitInt(0) <= $Unbox($l#6#i#0): int
                                   && $Unbox($l#6#i#0): int < n#0), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assert {:id "id242"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> $Is($Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                        Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $Box(LitInt(10))), 
                          (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                            $IsBox($l#6#i#0, TInt)
                               && 
                              LitInt(0) <= $Unbox($l#6#i#0): int
                               && $Unbox($l#6#i#0): int < n#0), 
                          (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                            SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(seqinit#0#i0#0))): int, 
              Tclass._System.nat()));
        assume {:id "id243"} _module.SeqOp.XT5(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $Box(LitInt(10))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $IsBox($l#8#i#0, TInt)
                         && 
                        LitInt(0) <= $Unbox($l#8#i#0): int
                         && $Unbox($l#8#i#0): int < n#0), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT5(this, n#0), TSeq(Tclass._System.nat()));
        assert {:id "id244"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT6
function _module.SeqOp.XT6(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT6
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT6(this, n#0) } 
    _module.SeqOp.XT6#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT6(this, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.SeqOp.XT6 (revealed)
axiom {:id "id245"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT6(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT6#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT6(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < n#0 then 10 else -7))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT6 for decreasing-related literals (revealed)
axiom {:id "id246"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT6(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT6#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT6(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < n#0 then 10 else -7))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT6 for all literals (revealed)
axiom {:id "id247"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT6(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT6#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT6(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < n#0 then 10 else -7))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT6#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT6#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT6
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT6#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT6#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT6 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT6(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT6 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT6(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT6(this, n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id248"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (i#0 < n#0)
                {
                    assert {:id "id249"} $Is(LitInt(10), Tclass._System.nat());
                    assume {:id "id250"} lambdaResult#0 == LitInt(10);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, Tclass._System.nat());
                }
                else
                {
                    assert {:id "id251"} $Is(LitInt(-7), Tclass._System.nat());
                    assume {:id "id252"} lambdaResult#0 == LitInt(-7);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, Tclass._System.nat());
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id253"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              Tclass._System.nat(), 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < n#0 then 10 else -7))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      Tclass._System.nat(), 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < n#0 then 10 else -7))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id254"} _module.SeqOp.XT6(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < n#0 then 10 else -7))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT6(this, n#0), TSeq(Tclass._System.nat()));
        assert {:id "id255"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT7
function _module.SeqOp.XT7(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT7
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT7(this, n#0) } 
    _module.SeqOp.XT7#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT7(this, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.SeqOp.XT7 (revealed)
axiom {:id "id256"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT7(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT7#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT7(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((var u#0 := (if $Unbox($l#0#i#0): int < n#0 then 10 else -7); u#0))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT7 for decreasing-related literals (revealed)
axiom {:id "id257"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT7(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT7#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT7(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((var u#2 := (if $Unbox($l#2#i#0): int < n#0 then 10 else -7); u#2))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT7 for all literals (revealed)
axiom {:id "id258"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT7(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT7#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT7(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((var u#4 := (if $Unbox($l#4#i#0): int < n#0 then 10 else -7); u#4))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT7#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT7#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT7
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT7#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT7#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT7 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT7(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT7 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT7(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var u#Z#0: int;
  var let#0#0#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT7(this, n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id259"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                havoc u#Z#0;
                if (i#0 < n#0)
                {
                    assume {:id "id260"} let#0#0#0 == LitInt(10);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(let#0#0#0, TInt);
                }
                else
                {
                    assume {:id "id261"} let#0#0#0 == LitInt(-7);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(let#0#0#0, TInt);
                }

                assume {:id "id262"} u#Z#0 == let#0#0#0;
                assume {:id "id263"} lambdaResult#0 == u#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TInt);
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id264"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((var u#6 := (if $Unbox($l#6#i#0): int < n#0 then 10 else -7); u#6))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((var u#6 := (if $Unbox($l#6#i#0): int < n#0 then 10 else -7); u#6))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assert {:id "id265"} $Is(Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
                  Handle1((lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: 
                      $Box((var u#7 := (if $Unbox($l#7#i#0): int < n#0 then 10 else -7); u#7))), 
                    (lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: $IsBox($l#7#i#0, TInt)), 
                    (lambda $l#7#heap#0: Heap, $l#7#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
                $LS($LZ)))), 
          TSeq(Tclass._System.nat()));
        assume {:id "id266"} _module.SeqOp.XT7(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((var u#8 := (if $Unbox($l#8#i#0): int < n#0 then 10 else -7); u#8))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT7(this, n#0), TSeq(Tclass._System.nat()));
        assert {:id "id267"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT8
function _module.SeqOp.XT8(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT8
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT8(this, n#0) } 
    _module.SeqOp.XT8#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT8(this, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.SeqOp.XT8 (revealed)
axiom {:id "id268"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT8(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT8#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT8(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < n#0 then -7 else 10))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT8 for decreasing-related literals (revealed)
axiom {:id "id269"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT8(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT8#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT8(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < n#0 then -7 else 10))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT8 for all literals (revealed)
axiom {:id "id270"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT8(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT8#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT8(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < n#0 then -7 else 10))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT8#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT8#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT8
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT8#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT8#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT8 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT8(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT8 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT8(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT8(this, n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id271"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (i#0 < n#0)
                {
                    assert {:id "id272"} $Is(LitInt(-7), Tclass._System.nat());
                    assume {:id "id273"} lambdaResult#0 == LitInt(-7);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, Tclass._System.nat());
                }
                else
                {
                    assert {:id "id274"} $Is(LitInt(10), Tclass._System.nat());
                    assume {:id "id275"} lambdaResult#0 == LitInt(10);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, Tclass._System.nat());
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id276"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              Tclass._System.nat(), 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < n#0 then -7 else 10))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      Tclass._System.nat(), 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < n#0 then -7 else 10))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assume {:id "id277"} _module.SeqOp.XT8(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < n#0 then -7 else 10))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT8(this, n#0), TSeq(Tclass._System.nat()));
        assert {:id "id278"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.SeqOp.XT9
function _module.SeqOp.XT9(this: ref, n#0: int) : Seq
uses {
// consequence axiom for _module.SeqOp.XT9
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref, n#0: int :: 
    { _module.SeqOp.XT9(this, n#0) } 
    _module.SeqOp.XT9#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.SeqOp())
           && LitInt(0) <= n#0)
       ==> $Is(_module.SeqOp.XT9(this, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.SeqOp.XT9 (revealed)
axiom {:id "id279"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    { _module.SeqOp.XT9(this, n#0), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT9#canCall(this, n#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT9(this, n#0)
         == Seq#Create(TInt, 
          $Heap, 
          n#0, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box((if $Unbox($l#0#i#0): int < n#0 then -7 else 10))), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT9 for decreasing-related literals (revealed)
axiom {:id "id280"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT9(this, LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT9#canCall(this, LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT9(this, LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle1((lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    $Box((if $Unbox($l#2#i#0): int < n#0 then -7 else 10))), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: $IsBox($l#2#i#0, TInt)), 
                  (lambda $l#2#heap#0: Heap, $l#2#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $LS($LZ)))));
// definition axiom for _module.SeqOp.XT9 for all literals (revealed)
axiom {:id "id281"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, n#0: int :: 
    {:weight 3} { _module.SeqOp.XT9(Lit(this), LitInt(n#0)), $IsGoodHeap($Heap) } 
    _module.SeqOp.XT9#canCall(Lit(this), LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.SeqOp())
           && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
           && LitInt(0) <= n#0)
       ==> _module.SeqOp.XT9(Lit(this), LitInt(n#0))
         == Seq#Create(TInt, 
          $Heap, 
          LitInt(n#0), 
          Lit(AtLayer((lambda $l#4#ly#0: LayerType :: 
                Handle1((lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    $Box((if $Unbox($l#4#i#0): int < n#0 then -7 else 10))), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: $IsBox($l#4#i#0, TInt)), 
                  (lambda $l#4#heap#0: Heap, $l#4#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#4#o#0: ref :: false))))), 
              $LS($LZ)))));
}

function _module.SeqOp.XT9#canCall(this: ref, n#0: int) : bool;

function _module.SeqOp.XT9#requires(ref, int) : bool;

// #requires axiom for _module.SeqOp.XT9
axiom (forall $Heap: Heap, this: ref, n#0: int :: 
  { _module.SeqOp.XT9#requires(this, n#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.SeqOp())
       && $IsAlloc(this, Tclass._module.SeqOp(), $Heap)
       && LitInt(0) <= n#0
     ==> _module.SeqOp.XT9#requires(this, n#0) == true);

procedure {:verboseName "SeqOp.XT9 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT9(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SeqOp())
         && $IsAlloc(this, Tclass._module.SeqOp(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqOp.XT9 (well-formedness)"} CheckWellformed$$_module.SeqOp.XT9(this: ref, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.SeqOp.XT9(this, n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id282"} 0 <= n#0;
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            havoc i#0;
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                if (i#0 < n#0)
                {
                    assume {:id "id283"} lambdaResult#0 == LitInt(-7);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TInt);
                }
                else
                {
                    assume {:id "id284"} lambdaResult#0 == LitInt(10);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0, TInt);
                }
            }

            assume false;
        }

        // End Comprehension WF check
        assert {:id "id285"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> Requires1(TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                    Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        $Box((if $Unbox($l#6#i#0): int < n#0 then -7 else 10))), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                      (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(seqinit#0#i0#0)));
        b$reqreads#0 := (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(TInt, 
                      TInt, 
                      $Heap, 
                      Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                            Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                $Box((if $Unbox($l#6#i#0): int < n#0 then -7 else 10))), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                              (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                                SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                          $LS($LZ))), 
                      $Box(seqinit#0#i0#0)), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]));
        assert {:id "id286"} {:subsumption 0} (forall seqinit#0#i0#0: int :: 
          0 <= seqinit#0#i0#0 && seqinit#0#i0#0 < n#0
             ==> $Is($Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                        Handle1((lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                            $Box((if $Unbox($l#6#i#0): int < n#0 then -7 else 10))), 
                          (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: $IsBox($l#6#i#0, TInt)), 
                          (lambda $l#6#heap#0: Heap, $l#6#i#0: Box :: 
                            SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(seqinit#0#i0#0))): int, 
              Tclass._System.nat()));
        assume {:id "id287"} _module.SeqOp.XT9(this, n#0)
           == Seq#Create(TInt, 
            $Heap, 
            n#0, 
            Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                  Handle1((lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      $Box((if $Unbox($l#8#i#0): int < n#0 then -7 else 10))), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: $IsBox($l#8#i#0, TInt)), 
                    (lambda $l#8#heap#0: Heap, $l#8#i#0: Box :: 
                      SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
                $LS($LZ))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.SeqOp.XT9(this, n#0), TSeq(Tclass._System.nat()));
        assert {:id "id288"} b$reqreads#0;
        return;

        assume false;
    }
}



// $Is axiom for non-null type _module.SeqOp
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.SeqOp()) } { $Is(c#0, Tclass._module.SeqOp?()) } 
  $Is(c#0, Tclass._module.SeqOp())
     <==> $Is(c#0, Tclass._module.SeqOp?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SeqOp
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SeqOp(), $h) } 
    { $IsAlloc(c#0, Tclass._module.SeqOp?(), $h) } 
  $IsAlloc(c#0, Tclass._module.SeqOp(), $h)
     <==> $IsAlloc(c#0, Tclass._module.SeqOp?(), $h));

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

const unique tytagFamily$D: TyTagFamily;

const unique tytagFamily$SeqOp: TyTagFamily;

const unique field$x: NameFamily;
