// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy

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

const unique class.All.__default: ClassName;

function Tclass.TraitDefinitions.Option(Ty) : Ty;

const unique Tagclass.TraitDefinitions.Option: TyTag;

// Tclass.TraitDefinitions.Option Tag
axiom (forall TraitDefinitions.Option$T: Ty :: 
  { Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T) } 
  Tag(Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
       == Tagclass.TraitDefinitions.Option
     && TagFamily(Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
       == tytagFamily$Option);

function Tclass.TraitDefinitions.Option_0(Ty) : Ty;

// Tclass.TraitDefinitions.Option injectivity 0
axiom (forall TraitDefinitions.Option$T: Ty :: 
  { Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T) } 
  Tclass.TraitDefinitions.Option_0(Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     == TraitDefinitions.Option$T);

// Box/unbox axiom for Tclass.TraitDefinitions.Option
axiom (forall TraitDefinitions.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)) } 
  $IsBox(bx, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)));

procedure {:verboseName "All.Test (well-formedness)"} CheckWellFormed$$All.__default.Test(x#0: DatatypeType
       where $Is(x#0, Tclass.TraitDefinitions.Option(TInt))
         && $IsAlloc(x#0, Tclass.TraitDefinitions.Option(TInt), $Heap)
         && $IsA#TraitDefinitions.Option(x#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass.TraitDefinitions.Option(TBool))
         && $IsAlloc(r#0, Tclass.TraitDefinitions.Option(TBool), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Test (call)"} Call$$All.__default.Test(x#0: DatatypeType
       where $Is(x#0, Tclass.TraitDefinitions.Option(TInt))
         && $IsAlloc(x#0, Tclass.TraitDefinitions.Option(TInt), $Heap)
         && $IsA#TraitDefinitions.Option(x#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass.TraitDefinitions.Option(TBool))
         && $IsAlloc(r#0, Tclass.TraitDefinitions.Option(TBool), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Test (correctness)"} Impl$$All.__default.Test(x#0: DatatypeType
       where $Is(x#0, Tclass.TraitDefinitions.Option(TInt))
         && $IsAlloc(x#0, Tclass.TraitDefinitions.Option(TInt), $Heap)
         && $IsA#TraitDefinitions.Option(x#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass.TraitDefinitions.Option(TBool))
         && $IsAlloc(r#0, Tclass.TraitDefinitions.Option(TBool), $Heap), 
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



function Tclass.TraitDefinitions.SubTrait(Ty, Ty) : Ty;

const unique Tagclass.TraitDefinitions.SubTrait: TyTag;

// Tclass.TraitDefinitions.SubTrait Tag
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty :: 
  { Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I) } 
  Tag(Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
       == Tagclass.TraitDefinitions.SubTrait
     && TagFamily(Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
       == tytagFamily$SubTrait);

function Tclass.TraitDefinitions.SubTrait_0(Ty) : Ty;

// Tclass.TraitDefinitions.SubTrait injectivity 0
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty :: 
  { Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I) } 
  Tclass.TraitDefinitions.SubTrait_0(Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     == TraitDefinitions.SubTrait$T);

function Tclass.TraitDefinitions.SubTrait_1(Ty) : Ty;

// Tclass.TraitDefinitions.SubTrait injectivity 1
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty :: 
  { Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I) } 
  Tclass.TraitDefinitions.SubTrait_1(Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     == TraitDefinitions.SubTrait$I);

// Box/unbox axiom for Tclass.TraitDefinitions.SubTrait
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)) } 
  $IsBox(bx, 
      Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)));

procedure {:verboseName "All.AcceptSubtraitIntInt (well-formedness)"} CheckWellFormed$$All.__default.AcceptSubtraitIntInt(t#0: ref
       where $Is(t#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(t#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.AcceptSubtraitIntInt (call)"} Call$$All.__default.AcceptSubtraitIntInt(t#0: ref
       where $Is(t#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(t#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.AcceptSubtraitIntInt (correctness)"} Impl$$All.__default.AcceptSubtraitIntInt(t#0: ref
       where $Is(t#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(t#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap))
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



function Tclass.All.Y(Ty) : Ty;

const unique Tagclass.All.Y: TyTag;

// Tclass.All.Y Tag
axiom (forall All.Y$I: Ty :: 
  { Tclass.All.Y(All.Y$I) } 
  Tag(Tclass.All.Y(All.Y$I)) == Tagclass.All.Y
     && TagFamily(Tclass.All.Y(All.Y$I)) == tytagFamily$Y);

function Tclass.All.Y_0(Ty) : Ty;

// Tclass.All.Y injectivity 0
axiom (forall All.Y$I: Ty :: 
  { Tclass.All.Y(All.Y$I) } 
  Tclass.All.Y_0(Tclass.All.Y(All.Y$I)) == All.Y$I);

// Box/unbox axiom for Tclass.All.Y
axiom (forall All.Y$I: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.All.Y(All.Y$I)) } 
  $IsBox(bx, Tclass.All.Y(All.Y$I))
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.All.Y(All.Y$I)));

function Tclass.All.ObjectContainer() : Ty
uses {
// Tclass.All.ObjectContainer Tag
axiom Tag(Tclass.All.ObjectContainer()) == Tagclass.All.ObjectContainer
   && TagFamily(Tclass.All.ObjectContainer()) == tytagFamily$ObjectContainer;
}

const unique Tagclass.All.ObjectContainer: TyTag;

// Box/unbox axiom for Tclass.All.ObjectContainer
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.All.ObjectContainer()) } 
  $IsBox(bx, Tclass.All.ObjectContainer())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.All.ObjectContainer()));

procedure {:verboseName "All.ParameterBorrows (well-formedness)"} CheckWellFormed$$All.__default.ParameterBorrows(y#0: ref
       where $Is(y#0, Tclass.All.Y(TInt)) && $IsAlloc(y#0, Tclass.All.Y(TInt), $Heap), 
    o#0: DatatypeType
       where $Is(o#0, Tclass.All.ObjectContainer())
         && $IsAlloc(o#0, Tclass.All.ObjectContainer(), $Heap)
         && $IsA#All.ObjectContainer(o#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.ParameterBorrows (call)"} Call$$All.__default.ParameterBorrows(y#0: ref
       where $Is(y#0, Tclass.All.Y(TInt)) && $IsAlloc(y#0, Tclass.All.Y(TInt), $Heap), 
    o#0: DatatypeType
       where $Is(o#0, Tclass.All.ObjectContainer())
         && $IsAlloc(o#0, Tclass.All.ObjectContainer(), $Heap)
         && $IsA#All.ObjectContainer(o#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.ParameterBorrows (correctness)"} Impl$$All.__default.ParameterBorrows(y#0: ref
       where $Is(y#0, Tclass.All.Y(TInt)) && $IsAlloc(y#0, Tclass.All.Y(TInt), $Heap), 
    o#0: DatatypeType
       where $Is(o#0, Tclass.All.ObjectContainer())
         && $IsAlloc(o#0, Tclass.All.ObjectContainer(), $Heap)
         && $IsA#All.ObjectContainer(o#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.TraitDefinitions.SuperTrait() : Ty
uses {
// Tclass.TraitDefinitions.SuperTrait Tag
axiom Tag(Tclass.TraitDefinitions.SuperTrait())
     == Tagclass.TraitDefinitions.SuperTrait
   && TagFamily(Tclass.TraitDefinitions.SuperTrait()) == tytagFamily$SuperTrait;
}

const unique Tagclass.TraitDefinitions.SuperTrait: TyTag;

// Box/unbox axiom for Tclass.TraitDefinitions.SuperTrait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.SuperTrait()) } 
  $IsBox(bx, Tclass.TraitDefinitions.SuperTrait())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitDefinitions.SuperTrait()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.ParameterBorrows (correctness)"} Impl$$All.__default.ParameterBorrows(y#0: ref, o#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(z#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap);
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var defass#p#0: bool;
  var p#0: ref
     where defass#p#0
       ==> $Is(p#0, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(p#0, Tclass.TraitDefinitions.SuperTrait(), $Heap);
  var defass#y2#0: bool;
  var y2#0: ref
     where defass#y2#0
       ==> $Is(y2#0, Tclass.All.Y(TInt)) && $IsAlloc(y2#0, Tclass.All.Y(TInt), $Heap);
  var y##0: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var y##1: ref;
  var newtype$check#4: ref;
  var newtype$check#5: ref;

    // AddMethodImpl: ParameterBorrows, Impl$$All.__default.ParameterBorrows
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(136,31)
    assume true;
    newtype$check#0 := y#0;
    newtype$check#1 := y#0;
    assume true;
    z#0 := y#0;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(137,23)
    assume true;
    assume true;
    p#0 := y#0;
    defass#p#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(138,12)
    assume true;
    assume All.ObjectContainer.ObjectContainer_q(o#0);
    assume All.ObjectContainer.ObjectContainer_q(o#0);
    y2#0 := All.ObjectContainer.y(o#0);
    defass#y2#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(139,19)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id38"} defass#y2#0;
    newtype$check#2 := y2#0;
    newtype$check#3 := y2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := y2#0;
    call {:id "id39"} Call$$All.__default.ConsumeBorrows(y##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(140,19)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id40"} defass#y2#0;
    newtype$check#4 := y2#0;
    newtype$check#5 := y2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := y2#0;
    call {:id "id41"} Call$$All.__default.ConsumeBorrows(y##1);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "All.ConsumeBorrows (well-formedness)"} CheckWellFormed$$All.__default.ConsumeBorrows(y#0: ref
       where $Is(y#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(y#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.ConsumeBorrows (call)"} Call$$All.__default.ConsumeBorrows(y#0: ref
       where $Is(y#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(y#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.ConsumeBorrows (correctness)"} Impl$$All.__default.ConsumeBorrows(y#0: ref
       where $Is(y#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(y#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap))
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



function Tclass.All.ClassNoArgs() : Ty
uses {
// Tclass.All.ClassNoArgs Tag
axiom Tag(Tclass.All.ClassNoArgs()) == Tagclass.All.ClassNoArgs
   && TagFamily(Tclass.All.ClassNoArgs()) == tytagFamily$ClassNoArgs;
}

const unique Tagclass.All.ClassNoArgs: TyTag;

// Box/unbox axiom for Tclass.All.ClassNoArgs
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.All.ClassNoArgs()) } 
  $IsBox(bx, Tclass.All.ClassNoArgs())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.All.ClassNoArgs()));

procedure {:verboseName "All.ConsumeClassNoArgs (well-formedness)"} CheckWellFormed$$All.__default.ConsumeClassNoArgs(a#0: ref
       where $Is(a#0, Tclass.All.ClassNoArgs())
         && $IsAlloc(a#0, Tclass.All.ClassNoArgs(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.ConsumeClassNoArgs (call)"} Call$$All.__default.ConsumeClassNoArgs(a#0: ref
       where $Is(a#0, Tclass.All.ClassNoArgs())
         && $IsAlloc(a#0, Tclass.All.ClassNoArgs(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.ConsumeClassNoArgs (correctness)"} Impl$$All.__default.ConsumeClassNoArgs(a#0: ref
       where $Is(a#0, Tclass.All.ClassNoArgs())
         && $IsAlloc(a#0, Tclass.All.ClassNoArgs(), $Heap))
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



procedure {:verboseName "All.Main (well-formedness)"} CheckWellFormed$$All.__default.Main();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Main (call)"} Call$$All.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Main (correctness)"} Impl$$All.__default.Main() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.All.Y?(Ty) : Ty
uses {
axiom (forall All.Y$I: Ty :: 
  implements$TraitDefinitions.SubTrait(Tclass.All.Y?(All.Y$I), TInt, All.Y$I));
}

const unique Tagclass.All.Y?: TyTag;

// Tclass.All.Y? Tag
axiom (forall All.Y$I: Ty :: 
  { Tclass.All.Y?(All.Y$I) } 
  Tag(Tclass.All.Y?(All.Y$I)) == Tagclass.All.Y?
     && TagFamily(Tclass.All.Y?(All.Y$I)) == tytagFamily$Y);

function Tclass.All.Y?_0(Ty) : Ty;

// Tclass.All.Y? injectivity 0
axiom (forall All.Y$I: Ty :: 
  { Tclass.All.Y?(All.Y$I) } 
  Tclass.All.Y?_0(Tclass.All.Y?(All.Y$I)) == All.Y$I);

// Box/unbox axiom for Tclass.All.Y?
axiom (forall All.Y$I: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.All.Y?(All.Y$I)) } 
  $IsBox(bx, Tclass.All.Y?(All.Y$I))
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.All.Y?(All.Y$I)));

function Tclass.All.TraitNoArgs() : Ty
uses {
// Tclass.All.TraitNoArgs Tag
axiom Tag(Tclass.All.TraitNoArgs()) == Tagclass.All.TraitNoArgs
   && TagFamily(Tclass.All.TraitNoArgs()) == tytagFamily$TraitNoArgs;
}

const unique Tagclass.All.TraitNoArgs: TyTag;

// Box/unbox axiom for Tclass.All.TraitNoArgs
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.All.TraitNoArgs()) } 
  $IsBox(bx, Tclass.All.TraitNoArgs())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.All.TraitNoArgs()));

function Tclass.TraitDefinitions.NoMemberTrait() : Ty
uses {
// Tclass.TraitDefinitions.NoMemberTrait Tag
axiom Tag(Tclass.TraitDefinitions.NoMemberTrait())
     == Tagclass.TraitDefinitions.NoMemberTrait
   && TagFamily(Tclass.TraitDefinitions.NoMemberTrait()) == tytagFamily$NoMemberTrait;
}

const unique Tagclass.TraitDefinitions.NoMemberTrait: TyTag;

// Box/unbox axiom for Tclass.TraitDefinitions.NoMemberTrait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait()) } 
  $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitDefinitions.NoMemberTrait()));

function Tclass.TraitDefinitions.NoMemberTrait2() : Ty
uses {
// Tclass.TraitDefinitions.NoMemberTrait2 Tag
axiom Tag(Tclass.TraitDefinitions.NoMemberTrait2())
     == Tagclass.TraitDefinitions.NoMemberTrait2
   && TagFamily(Tclass.TraitDefinitions.NoMemberTrait2())
     == tytagFamily$NoMemberTrait2;
}

const unique Tagclass.TraitDefinitions.NoMemberTrait2: TyTag;

// Box/unbox axiom for Tclass.TraitDefinitions.NoMemberTrait2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait2()) } 
  $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait2())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitDefinitions.NoMemberTrait2()));

function All.Y.d(All.Y$I: Ty, this: ref) : int
uses {
axiom (forall All.Y$I: Ty, this: ref :: 
  { All.Y.d(All.Y$I, this): int } 
  All.Y.d(All.Y$I, this): int == LitInt(2));
// Y.d: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall All.Y$I: Ty, $o: ref :: 
    { All.Y.d(All.Y$I, $o) } 
    $o != null && dtype($o) == Tclass.All.Y?(All.Y$I)
       ==> $Is(All.Y.d(All.Y$I, $o), TInt));
// Y.d: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall All.Y$I: Ty, $h: Heap, $o: ref :: 
    { All.Y.d(All.Y$I, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass.All.Y?(All.Y$I)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(All.Y.d(All.Y$I, $o), TInt, $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Main (correctness)"} Impl$$All.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var rts#0: DatatypeType
     where $Is(rts#0, Tclass.TraitDefinitions.Option(TBool))
       && $IsAlloc(rts#0, Tclass.TraitDefinitions.Option(TBool), $Heap);
  var $rhs##0: DatatypeType;
  var x##0: DatatypeType;
  var y#0: ref
     where $Is(y#0, Tclass.All.Y?(TInt)) && $IsAlloc(y#0, Tclass.All.Y?(TInt), $Heap);
  var $nw: ref;
  var c##0: int;
  var yOwned#0: ref
     where $Is(yOwned#0, Tclass.All.Y?(TInt))
       && $IsAlloc(yOwned#0, Tclass.All.Y?(TInt), $Heap);
  var t##0: ref;
  var t##1: ref;
  var defass#z#0: bool;
  var z#0: ref
     where defass#z#0
       ==> $Is(z#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(z#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap);
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var defass#z2#0: bool;
  var z2#0: ref
     where defass#z2#0
       ==> $Is(z2#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt))
         && $IsAlloc(z2#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt), $Heap);
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var defass#w#0: bool;
  var w#0: ref
     where defass#w#0
       ==> $Is(w#0, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(w#0, Tclass.TraitDefinitions.SuperTrait(), $Heap);
  var defass#w2#0: bool;
  var w2#0: ref
     where defass#w2#0
       ==> $Is(w2#0, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(w2#0, Tclass.TraitDefinitions.SuperTrait(), $Heap);
  var defass#p#0: bool;
  var p#0: ref
     where defass#p#0
       ==> $Is(p#0, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(p#0, Tclass.TraitDefinitions.SuperTrait(), $Heap);
  var zc#0: int;
  var $rhs##1: int;
  var wc#0: int;
  var $rhs##2: int;
  var pc#0: int;
  var $rhs##3: int;
  var zd#0: int;
  var $rhs##4: int;
  var yd#0: int;
  var $rhs##5: int;
  var zc2d#0: int;
  var $rhs##6: int;
  var yc2d#0: int;
  var $rhs##7: int;
  var f#0: int;
  var $rhs##8: int;
  var i##0: int;
  var i2##0: int;
  var $tmp##0: Box;
  var newC##0: int;
  var $rhs##9: int;
  var i##1: int;
  var i2##1: int;
  var $tmp##1: Box;
  var newtype$check#4: ref;
  var newtype$check#5: ref;
  var newtype$check#6: ref;
  var newtype$check#7: ref;
  var newtype$check#8: ref;
  var newtype$check#9: ref;
  var newtype$check#10: ref;
  var newtype$check#11: ref;
  var newtype$check#12: ref;
  var newtype$check#13: ref;
  var newtype$check#14: ref;
  var newtype$check#15: ref;
  var newtype$check#16: ref;
  var newtype$check#17: ref;
  var newtype$check#18: ref;
  var newtype$check#19: ref;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass.All.ClassNoArgs())
         && $IsAlloc(a#0, Tclass.All.ClassNoArgs(), $Heap);
  var defass#aOwned#0: bool;
  var aOwned#0: ref
     where defass#aOwned#0
       ==> $Is(aOwned#0, Tclass.All.ClassNoArgs())
         && $IsAlloc(aOwned#0, Tclass.All.ClassNoArgs(), $Heap);
  var defass#o#0: bool;
  var o#0: ref
     where defass#o#0
       ==> $Is(o#0, Tclass.All.TraitNoArgs())
         && $IsAlloc(o#0, Tclass.All.TraitNoArgs(), $Heap);
  var newtype$check#20: ref;
  var newtype$check#21: ref;
  var a##0: ref;
  var a##1: ref;
  var defass#oo#0: bool;
  var oo#0: ref
     where defass#oo#0
       ==> $Is(oo#0, Tclass._System.object())
         && $IsAlloc(oo#0, Tclass._System.object(), $Heap);
  var newtype$check#22: ref;
  var newtype$check#23: ref;
  var a##2: ref;
  var newtype$check#24: ref;
  var newtype$check#25: ref;
  var a##3: ref;
  var newtype$check#26: ref;
  var newtype$check#27: ref;
  var objects#0: Set
     where $Is(objects#0, TSet(Tclass._System.object()))
       && $IsAlloc(objects#0, TSet(Tclass._System.object()), $Heap);
  var newtype$check#28: ref;
  var newtype$check#29: ref;
  var newtype$check#30: ref;
  var newtype$check#31: ref;
  var newtype$check#32: ref;
  var newtype$check#33: ref;
  var defass#q#0: bool;
  var q#0: ref
     where defass#q#0
       ==> $Is(q#0, Tclass.TraitDefinitions.NoMemberTrait())
         && $IsAlloc(q#0, Tclass.TraitDefinitions.NoMemberTrait(), $Heap);
  var newtype$check#34: ref;
  var newtype$check#35: ref;
  var newtype$check#36: ref;
  var newtype$check#37: ref;
  var newtype$check#38: ref;
  var newtype$check#39: ref;
  var newtype$check#40: ref;
  var newtype$check#41: ref;
  var newtype$check#42: ref;
  var newtype$check#43: ref;
  var newtype$check#44: ref;
  var newtype$check#45: ref;
  var defass#yn#0: bool;
  var yn#0: ref
     where defass#yn#0
       ==> $Is(yn#0, Tclass.All.Y(TInt)) && $IsAlloc(yn#0, Tclass.All.Y(TInt), $Heap);
  var newtype$check#46: ref;
  var newtype$check#47: ref;
  var newtype$check#48: ref;
  var newtype$check#49: ref;
  var newtype$check#50: ref;
  var newtype$check#51: ref;
  var newtype$check#52: ref;
  var newtype$check#53: ref;
  var yp#0: ref
     where $Is(yp#0, Tclass.All.Y?(TInt)) && $IsAlloc(yp#0, Tclass.All.Y?(TInt), $Heap);
  var newtype$check#54: ref;
  var newtype$check#55: ref;
  var ff#0: HandleType
     where $Is(ff#0, Tclass._System.___hFunc1(TInt, TInt))
       && $IsAlloc(ff#0, Tclass._System.___hFunc1(TInt, TInt), $Heap);
  var $rhs##10: HandleType;
  var seqY#0: Seq
     where $Is(seqY#0, TSeq(Tclass.All.Y?(TInt)))
       && $IsAlloc(seqY#0, TSeq(Tclass.All.Y?(TInt)), $Heap);
  var setY#0: Set
     where $Is(setY#0, TSet(Tclass.All.Y?(TInt)))
       && $IsAlloc(setY#0, TSet(Tclass.All.Y?(TInt)), $Heap);
  var mulY#0: MultiSet
     where $Is(mulY#0, TMultiSet(Tclass.All.Y?(TInt)))
       && $IsAlloc(mulY#0, TMultiSet(Tclass.All.Y?(TInt)), $Heap);
  var mapY#0: Map
     where $Is(mapY#0, TMap(TInt, Tclass.All.Y?(TInt)))
       && $IsAlloc(mapY#0, TMap(TInt, Tclass.All.Y?(TInt)), $Heap);
  var seqYU#0: Seq
     where $Is(seqYU#0, TSeq(Tclass.TraitDefinitions.SubTrait(TInt, TInt)))
       && $IsAlloc(seqYU#0, TSeq(Tclass.TraitDefinitions.SubTrait(TInt, TInt)), $Heap);
  var setYU#0: Set
     where $Is(setYU#0, TSet(Tclass.TraitDefinitions.SubTrait(TInt, TInt)))
       && $IsAlloc(setYU#0, TSet(Tclass.TraitDefinitions.SubTrait(TInt, TInt)), $Heap);
  var mulYU#0: MultiSet
     where $Is(mulYU#0, TMultiSet(Tclass.TraitDefinitions.SubTrait(TInt, TInt)))
       && $IsAlloc(mulYU#0, TMultiSet(Tclass.TraitDefinitions.SubTrait(TInt, TInt)), $Heap);
  var mapYU#0: Map
     where $Is(mapYU#0, TMap(TInt, Tclass.TraitDefinitions.SubTrait(TInt, TInt)))
       && $IsAlloc(mapYU#0, TMap(TInt, Tclass.TraitDefinitions.SubTrait(TInt, TInt)), $Heap);
  var seqYS#0: Seq
     where $Is(seqYS#0, TSeq(Tclass.TraitDefinitions.SuperTrait()))
       && $IsAlloc(seqYS#0, TSeq(Tclass.TraitDefinitions.SuperTrait()), $Heap);
  var setYS#0: Set
     where $Is(setYS#0, TSet(Tclass.TraitDefinitions.SuperTrait()))
       && $IsAlloc(setYS#0, TSet(Tclass.TraitDefinitions.SuperTrait()), $Heap);
  var mulYS#0: MultiSet
     where $Is(mulYS#0, TMultiSet(Tclass.TraitDefinitions.SuperTrait()))
       && $IsAlloc(mulYS#0, TMultiSet(Tclass.TraitDefinitions.SuperTrait()), $Heap);
  var mapYS#0: Map
     where $Is(mapYS#0, TMap(TInt, Tclass.TraitDefinitions.SuperTrait()))
       && $IsAlloc(mapYS#0, TMap(TInt, Tclass.TraitDefinitions.SuperTrait()), $Heap);
  var seqYO#0: Seq
     where $Is(seqYO#0, TSeq(Tclass._System.object()))
       && $IsAlloc(seqYO#0, TSeq(Tclass._System.object()), $Heap);
  var seaYO#0: Set
     where $Is(seaYO#0, TSet(Tclass._System.object()))
       && $IsAlloc(seaYO#0, TSet(Tclass._System.object()), $Heap);
  var mulYO#0: MultiSet
     where $Is(mulYO#0, TMultiSet(Tclass._System.object()))
       && $IsAlloc(mulYO#0, TMultiSet(Tclass._System.object()), $Heap);
  var mapYO#0: Map
     where $Is(mapYO#0, TMap(TInt, Tclass._System.object()))
       && $IsAlloc(mapYO#0, TMap(TInt, Tclass._System.object()), $Heap);
  var seqYSO#0: Seq
     where $Is(seqYSO#0, TSeq(Tclass._System.object()))
       && $IsAlloc(seqYSO#0, TSeq(Tclass._System.object()), $Heap);
  var seaYSO#0: Set
     where $Is(seaYSO#0, TSet(Tclass._System.object()))
       && $IsAlloc(seaYSO#0, TSet(Tclass._System.object()), $Heap);
  var mulYSO#0: MultiSet
     where $Is(mulYSO#0, TMultiSet(Tclass._System.object()))
       && $IsAlloc(mulYSO#0, TMultiSet(Tclass._System.object()), $Heap);
  var mapYSO#0: Map
     where $Is(mapYSO#0, TMap(TInt, Tclass._System.object()))
       && $IsAlloc(mapYSO#0, TMap(TInt, Tclass._System.object()), $Heap);
  var optY#0: DatatypeType
     where $Is(optY#0, Tclass.TraitDefinitions.Option(Tclass.All.Y?(TInt)))
       && $IsAlloc(optY#0, Tclass.TraitDefinitions.Option(Tclass.All.Y?(TInt)), $Heap);
  var optYU#0: DatatypeType
     where $Is(optYU#0, 
        Tclass.TraitDefinitions.Option(Tclass.TraitDefinitions.SubTrait(TInt, TInt)))
       && $IsAlloc(optYU#0, 
        Tclass.TraitDefinitions.Option(Tclass.TraitDefinitions.SubTrait(TInt, TInt)), 
        $Heap);
  var optYS#0: DatatypeType
     where $Is(optYS#0, Tclass.TraitDefinitions.Option(Tclass.TraitDefinitions.SuperTrait()))
       && $IsAlloc(optYS#0, 
        Tclass.TraitDefinitions.Option(Tclass.TraitDefinitions.SuperTrait()), 
        $Heap);
  var optYO#0: DatatypeType
     where $Is(optYO#0, Tclass.TraitDefinitions.Option(Tclass._System.object()))
       && $IsAlloc(optYO#0, Tclass.TraitDefinitions.Option(Tclass._System.object()), $Heap);
  var optYSO#0: DatatypeType
     where $Is(optYSO#0, Tclass.TraitDefinitions.Option(Tclass._System.object()))
       && $IsAlloc(optYSO#0, Tclass.TraitDefinitions.Option(Tclass._System.object()), $Heap);

    // AddMethodImpl: Main, Impl$$All.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(157,20)
    assume true;
    // TrCallStmt: Adding lhs with type Option<bool>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := Lit(#TraitDefinitions.Option.Some($Box(LitInt(2))));
    call {:id "id42"} $rhs##0 := Call$$All.__default.Test(x##0);
    // TrCallStmt: After ProcessCallStmt
    rts#0 := $rhs##0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(158,5)
    assume $IsA#TraitDefinitions.Option(rts#0);
    if (!TraitDefinitions.Option#Equal(rts#0, #TraitDefinitions.Option.Some($Box(Lit(true)))))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(160,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(160,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := LitInt(7);
    call {:id "id44"} $nw := Call$$All.Y.__ctor(TInt, c##0);
    // TrCallStmt: After ProcessCallStmt
    y#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(161,16)
    assume true;
    assume true;
    yOwned#0 := y#0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(162,5)
    assert {:id "id47"} {:subsumption 0} y#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(y#0), Tclass.All.Y?(TInt), $Heap);
    assume All.Y.GetDFunc#canCall(TInt, y#0);
    assume All.Y.GetDFunc#canCall(TInt, y#0);
    if (All.Y.GetDFunc(TInt, y#0) != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(163,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id48"} $Is(yOwned#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt));
    t##0 := yOwned#0;
    call {:id "id49"} Call$$All.__default.AcceptSubtraitIntInt(t##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(164,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id50"} $Is(yOwned#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt));
    t##1 := yOwned#0;
    call {:id "id51"} Call$$All.__default.AcceptSubtraitIntInt(t##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(165,31)
    assume true;
    newtype$check#0 := yOwned#0;
    assert {:id "id52"} $Is(newtype$check#0, Tclass.TraitDefinitions.SubTrait(TInt, TInt));
    newtype$check#1 := yOwned#0;
    assume true;
    z#0 := yOwned#0;
    defass#z#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(166,32)
    assume true;
    newtype$check#2 := yOwned#0;
    assert {:id "id54"} $Is(newtype$check#2, Tclass.TraitDefinitions.SubTrait(TInt, TInt));
    newtype$check#3 := yOwned#0;
    assume true;
    z2#0 := yOwned#0;
    defass#z2#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(167,23)
    assume true;
    assert {:id "id56"} defass#z#0;
    assume true;
    w#0 := z#0;
    defass#w#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(168,24)
    assume true;
    assert {:id "id58"} defass#z#0;
    assume true;
    w2#0 := z#0;
    defass#w2#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(169,23)
    assume true;
    assert {:id "id60"} $Is(y#0, Tclass.TraitDefinitions.SuperTrait());
    assume true;
    p#0 := y#0;
    defass#p#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(174,21)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id62"} defass#z#0;
    assume true;
    assert {:id "id63"} z#0 != null;
    call {:id "id64"} $rhs##1 := Call$$TraitDefinitions.SubTrait.GetC(TInt, TInt, z#0);
    // TrCallStmt: After ProcessCallStmt
    zc#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(175,21)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id66"} defass#w#0;
    assume true;
    assert {:id "id67"} w#0 != null;
    call {:id "id68"} $rhs##2 := Call$$TraitDefinitions.SuperTrait.GetC(w#0);
    // TrCallStmt: After ProcessCallStmt
    wc#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(176,21)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id70"} defass#p#0;
    assume true;
    assert {:id "id71"} p#0 != null;
    call {:id "id72"} $rhs##3 := Call$$TraitDefinitions.SuperTrait.GetC(p#0);
    // TrCallStmt: After ProcessCallStmt
    pc#0 := $rhs##3;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(177,5)
    assert {:id "id74"} {:subsumption 0} y#0 != null;
    if (LitInt(7) == $Unbox(read($Heap, y#0, All.Y.c)): int)
    {
        assert {:id "id75"} {:subsumption 0} y#0 != null;
    }

    if (LitInt(7) == $Unbox(read($Heap, y#0, All.Y.c)): int
       && $Unbox(read($Heap, y#0, All.Y.c)): int == zc#0)
    {
    }

    if (LitInt(7) == $Unbox(read($Heap, y#0, All.Y.c)): int
       && $Unbox(read($Heap, y#0, All.Y.c)): int == zc#0
       && zc#0 == wc#0)
    {
    }

    assume true;
    if (!(
      LitInt(7) == $Unbox(read($Heap, y#0, All.Y.c)): int
       && $Unbox(read($Heap, y#0, All.Y.c)): int == zc#0
       && zc#0 == wc#0
       && wc#0 == pc#0))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(178,21)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id76"} defass#z#0;
    assume true;
    assert {:id "id77"} z#0 != null;
    call {:id "id78"} $rhs##4 := Call$$TraitDefinitions.SubTrait.GetD(TInt, TInt, z#0);
    // TrCallStmt: After ProcessCallStmt
    zd#0 := $rhs##4;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(179,21)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id80"} y#0 != null;
    call {:id "id81"} $rhs##5 := Call$$All.Y.GetD(TInt, y#0);
    // TrCallStmt: After ProcessCallStmt
    yd#0 := $rhs##5;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(180,5)
    if (yd#0 == zd#0)
    {
    }

    assume true;
    if (!(yd#0 == zd#0 && zd#0 == LitInt(2)))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(181,33)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id83"} defass#z#0;
    assume true;
    assert {:id "id84"} z#0 != null;
    call {:id "id85"} $rhs##6 := Call$$TraitDefinitions.SubTrait.GetCTwicePlusD(TInt, TInt, z#0);
    // TrCallStmt: After ProcessCallStmt
    zc2d#0 := $rhs##6;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(182,5)
    assume true;
    if (zc2d#0 != LitInt(16))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(183,33)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id87"} y#0 != null;
    call {:id "id88"} $rhs##7 := Call$$TraitDefinitions.SubTrait.GetCTwicePlusD(TInt, TInt, y#0);
    // TrCallStmt: After ProcessCallStmt
    yc2d#0 := $rhs##7;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(184,5)
    assume true;
    if (yc2d#0 != LitInt(16))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(185,23)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id90"} y#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##0 := LitInt(42);
    assume true;
    // ProcessCallStmt: CheckSubrange
    i2##0 := LitInt(37);
    call {:id "id91"} $tmp##0 := Call$$All.Y.Convert(TInt, y#0, $Box(i##0), $Box(i2##0));
    havoc $rhs##8;
    assume $rhs##8 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##8;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(186,5)
    assume true;
    if (f#0 != LitInt(37))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(187,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id93"} defass#w#0;
    assume true;
    assert {:id "id94"} w#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    newC##0 := LitInt(0);
    assert {:id "id95"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == w#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id96"} Call$$TraitDefinitions.SuperTrait.SetC(w#0, newC##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(188,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id97"} y#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    i##1 := LitInt(42);
    assume true;
    // ProcessCallStmt: CheckSubrange
    i2##1 := LitInt(37);
    call {:id "id98"} $tmp##1 := Call$$All.Y.Convert(TInt, y#0, $Box(i##1), $Box(i2##1));
    havoc $rhs##9;
    assume $rhs##9 == $Unbox($tmp##1): int;
    // TrCallStmt: After ProcessCallStmt
    f#0 := $rhs##9;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(189,5)
    assume true;
    if (f#0 != LitInt(42))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(190,5)
    newtype$check#4 := y#0;
    assert {:id "id100"} $Is(newtype$check#4, Tclass._System.object());
    newtype$check#5 := y#0;
    assert {:id "id101"} defass#w#0;
    newtype$check#6 := w#0;
    newtype$check#7 := w#0;
    assume true;
    if (y#0 != w#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(191,5)
    newtype$check#8 := y#0;
    assert {:id "id102"} $Is(newtype$check#8, Tclass._System.object());
    newtype$check#9 := y#0;
    assert {:id "id103"} defass#p#0;
    newtype$check#10 := p#0;
    newtype$check#11 := p#0;
    assume true;
    if (y#0 != p#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(192,5)
    newtype$check#12 := yOwned#0;
    assert {:id "id104"} $Is(newtype$check#12, Tclass._System.object());
    newtype$check#13 := yOwned#0;
    assert {:id "id105"} defass#w#0;
    newtype$check#14 := w#0;
    newtype$check#15 := w#0;
    assume true;
    if (yOwned#0 != w#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(193,5)
    newtype$check#16 := yOwned#0;
    assert {:id "id106"} $Is(newtype$check#16, Tclass._System.object());
    newtype$check#17 := yOwned#0;
    assert {:id "id107"} defass#p#0;
    newtype$check#18 := p#0;
    newtype$check#19 := p#0;
    assume true;
    if (yOwned#0 != p#0)
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(194,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(194,14)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id108"} $nw := Call$$All.ClassNoArgs.__ctor();
    // TrCallStmt: After ProcessCallStmt
    a#0 := $nw;
    defass#a#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(195,16)
    assume true;
    assert {:id "id110"} defass#a#0;
    assume true;
    aOwned#0 := a#0;
    defass#aOwned#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(196,24)
    assume true;
    assert {:id "id112"} defass#a#0;
    newtype$check#20 := a#0;
    newtype$check#21 := a#0;
    assume true;
    o#0 := a#0;
    defass#o#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(197,5)
    assert {:id "id114"} defass#o#0;
    assume true;
    if (!$Is(o#0, Tclass.All.ClassNoArgs()))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(198,23)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id115"} defass#o#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id116"} $Is(o#0, Tclass.All.ClassNoArgs());
    a##0 := o#0;
    call {:id "id117"} Call$$All.__default.ConsumeClassNoArgs(a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(199,23)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id118"} defass#o#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id119"} $Is(o#0, Tclass.All.ClassNoArgs());
    a##1 := o#0;
    call {:id "id120"} Call$$All.__default.ConsumeClassNoArgs(a##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(200,20)
    assume true;
    assert {:id "id121"} defass#o#0;
    newtype$check#22 := o#0;
    newtype$check#23 := o#0;
    assume true;
    oo#0 := o#0;
    defass#oo#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(201,5)
    assert {:id "id123"} defass#oo#0;
    assume true;
    if (!$Is(oo#0, Tclass.All.ClassNoArgs()))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(202,23)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id124"} defass#oo#0;
    newtype$check#24 := oo#0;
    assert {:id "id125"} $Is(newtype$check#24, Tclass.All.ClassNoArgs());
    newtype$check#25 := oo#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := oo#0;
    call {:id "id126"} Call$$All.__default.ConsumeClassNoArgs(a##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(203,23)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id127"} defass#oo#0;
    newtype$check#26 := oo#0;
    assert {:id "id128"} $Is(newtype$check#26, Tclass.All.ClassNoArgs());
    newtype$check#27 := oo#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := oo#0;
    call {:id "id129"} Call$$All.__default.ConsumeClassNoArgs(a##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(204,17)
    assume true;
    newtype$check#28 := y#0;
    assert {:id "id130"} $Is(newtype$check#28, Tclass._System.object());
    newtype$check#29 := y#0;
    assert {:id "id131"} defass#w#0;
    newtype$check#30 := w#0;
    newtype$check#31 := w#0;
    assert {:id "id132"} defass#p#0;
    newtype$check#32 := p#0;
    newtype$check#33 := p#0;
    assume true;
    objects#0 := Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(y#0)), $Box(w#0)), $Box(p#0));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(205,5)
    assume true;
    if (Set#Card(objects#0) != LitInt(1))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(206,11)
    assume true;
    newtype$check#34 := y#0;
    assert {:id "id134"} $Is(newtype$check#34, Tclass.TraitDefinitions.NoMemberTrait());
    newtype$check#35 := y#0;
    assume true;
    q#0 := y#0;
    defass#q#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(207,5)
    newtype$check#36 := y#0;
    assert {:id "id136"} $Is(newtype$check#36, Tclass.TraitDefinitions.NoMemberTrait());
    newtype$check#37 := y#0;
    assume true;
    if (y#0 != y#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(208,5)
    newtype$check#38 := y#0;
    assert {:id "id137"} $Is(newtype$check#38, Tclass.TraitDefinitions.NoMemberTrait2());
    newtype$check#39 := y#0;
    assume true;
    if (y#0 != y#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(209,5)
    newtype$check#40 := y#0;
    assert {:id "id138"} $Is(newtype$check#40, Tclass.TraitDefinitions.NoMemberTrait());
    newtype$check#41 := y#0;
    newtype$check#42 := y#0;
    newtype$check#43 := y#0;
    newtype$check#44 := y#0;
    assert {:id "id139"} $Is(newtype$check#44, Tclass.TraitDefinitions.NoMemberTrait2());
    newtype$check#45 := y#0;
    assume true;
    if (y#0 != y#0)
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(210,12)
    assume true;
    assert {:id "id140"} defass#q#0;
    newtype$check#46 := q#0;
    newtype$check#47 := q#0;
    newtype$check#48 := q#0;
    assert {:id "id141"} $Is(newtype$check#48, Tclass.All.Y(TInt));
    newtype$check#49 := q#0;
    assume true;
    yn#0 := q#0;
    defass#yn#0 := true;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(211,5)
    assert {:id "id143"} defass#yn#0;
    assert {:id "id144"} {:subsumption 0} yn#0 != null;
    assert {:id "id145"} {:subsumption 0} y#0 != null;
    assume true;
    if (All.Y.d(TInt, yn#0) != All.Y.d(TInt, y#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(212,5)
    assert {:id "id146"} defass#q#0;
    newtype$check#50 := q#0;
    newtype$check#51 := q#0;
    newtype$check#52 := q#0;
    assert {:id "id147"} $Is(newtype$check#52, Tclass.All.Y(TInt));
    newtype$check#53 := q#0;
    assume true;
    if (q#0 != y#0)
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(213,21)
    assume true;
    newtype$check#54 := null;
    assume true;
    yp#0 := null;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(214,5)
    newtype$check#55 := null;
    assume true;
    if (yp#0 != null)
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(215,8)
    assume true;
    assume true;
    yp#0 := y#0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(216,5)
    assume true;
    if (yp#0 != y#0)
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(217,31)
    assume true;
    // TrCallStmt: Adding lhs with type int ~> int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id150"} y#0 != null;
    call {:id "id151"} $rhs##10 := Call$$All.Y.ClosureConvert(TInt, y#0);
    // TrCallStmt: After ProcessCallStmt
    ff#0 := $rhs##10;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(218,5)
    assert {:id "id153"} Requires1(TInt, TInt, $Heap, ff#0, $Box(LitInt(1)));
    assert {:id "id154"} {:subsumption 0} y#0 != null;
    assert {:id "id155"} {:subsumption 0} y#0 != null;
    assume true;
    if ($Unbox(Apply1(TInt, TInt, $Heap, ff#0, $Box(LitInt(1)))): int
       != 1 + $Unbox(read($Heap, y#0, All.Y.c)): int + All.Y.d(TInt, y#0))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(220,14)
    assume true;
    assume true;
    seqY#0 := Seq#Build(Seq#Empty(): Seq, $Box(y#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(221,14)
    assume true;
    assume true;
    setY#0 := Set#UnionOne(Set#Empty(): Set, $Box(y#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(222,14)
    assume true;
    assume true;
    mulY#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(y#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(223,14)
    assume true;
    assume true;
    mapY#0 := Map#Build(Map#Empty(): Map, $Box(LitInt(1)), $Box(y#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(225,40)
    assume true;
    assert {:id "id160"} $Is(seqY#0, TSeq(Tclass.TraitDefinitions.SubTrait(TInt, TInt)));
    assume true;
    seqYU#0 := seqY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(226,40)
    assume true;
    assert {:id "id162"} $Is(setY#0, TSet(Tclass.TraitDefinitions.SubTrait(TInt, TInt)));
    assume true;
    setYU#0 := setY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(227,45)
    assume true;
    assert {:id "id164"} $Is(mulY#0, TMultiSet(Tclass.TraitDefinitions.SubTrait(TInt, TInt)));
    assume true;
    mulYU#0 := mulY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(228,45)
    assume true;
    assert {:id "id166"} $Is(mapY#0, TMap(TInt, Tclass.TraitDefinitions.SubTrait(TInt, TInt)));
    assume true;
    mapYU#0 := mapY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(230,32)
    assume true;
    assert {:id "id168"} $Is(seqY#0, TSeq(Tclass.TraitDefinitions.SuperTrait()));
    assume true;
    seqYS#0 := seqY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(231,32)
    assume true;
    assert {:id "id170"} $Is(setY#0, TSet(Tclass.TraitDefinitions.SuperTrait()));
    assume true;
    setYS#0 := setY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(232,37)
    assume true;
    assert {:id "id172"} $Is(mulY#0, TMultiSet(Tclass.TraitDefinitions.SuperTrait()));
    assume true;
    mulYS#0 := mulY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(233,37)
    assume true;
    assert {:id "id174"} $Is(mapY#0, TMap(TInt, Tclass.TraitDefinitions.SuperTrait()));
    assume true;
    mapYS#0 := mapY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(235,28)
    assume true;
    assert {:id "id176"} $Is(seqY#0, TSeq(Tclass._System.object()));
    assume true;
    seqYO#0 := seqY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(236,28)
    assume true;
    assert {:id "id178"} $Is(setY#0, TSet(Tclass._System.object()));
    assume true;
    seaYO#0 := setY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(237,33)
    assume true;
    assert {:id "id180"} $Is(mulY#0, TMultiSet(Tclass._System.object()));
    assume true;
    mulYO#0 := mulY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(238,33)
    assume true;
    assert {:id "id182"} $Is(mapY#0, TMap(TInt, Tclass._System.object()));
    assume true;
    mapYO#0 := mapY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(240,29)
    assume true;
    assume true;
    seqYSO#0 := seqYS#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(241,29)
    assume true;
    assume true;
    seaYSO#0 := setYS#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(242,34)
    assume true;
    assume true;
    mulYSO#0 := mulYS#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(243,34)
    assume true;
    assume true;
    mapYSO#0 := mapYS#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(245,14)
    assume true;
    assume true;
    optY#0 := #TraitDefinitions.Option.Some($Box(y#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(246,43)
    assume true;
    assert {:id "id189"} $Is(optY#0, 
      Tclass.TraitDefinitions.Option(Tclass.TraitDefinitions.SubTrait(TInt, TInt)));
    assume true;
    optYU#0 := optY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(247,35)
    assume true;
    assert {:id "id191"} $Is(optY#0, Tclass.TraitDefinitions.Option(Tclass.TraitDefinitions.SuperTrait()));
    assume true;
    optYS#0 := optY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(248,31)
    assume true;
    assert {:id "id193"} $Is(optY#0, Tclass.TraitDefinitions.Option(Tclass._System.object()));
    assume true;
    optYO#0 := optY#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(249,32)
    assume true;
    assume true;
    optYSO#0 := optYS#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(251,5)
    assume true;
}



const unique class.All.Y?: ClassName;

// $Is axiom for class Y
axiom (forall All.Y$I: Ty, $o: ref :: 
  { $Is($o, Tclass.All.Y?(All.Y$I)) } 
  $Is($o, Tclass.All.Y?(All.Y$I))
     <==> $o == null || dtype($o) == Tclass.All.Y?(All.Y$I));

// $IsAlloc axiom for class Y
axiom (forall All.Y$I: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.All.Y?(All.Y$I), $h) } 
  $IsAlloc($o, Tclass.All.Y?(All.Y$I), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const All.Y.c: Field
uses {
axiom FDim(All.Y.c) == 0
   && FieldOfDecl(class.All.Y?, field$c) == All.Y.c
   && !$IsGhostField(All.Y.c);
}

// Y.c: Type axiom
axiom (forall All.Y$I: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, All.Y.c)): int, Tclass.All.Y?(All.Y$I) } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.All.Y?(All.Y$I)
     ==> $Is($Unbox(read($h, $o, All.Y.c)): int, TInt));

// Y.c: Allocation axiom
axiom (forall All.Y$I: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, All.Y.c)): int, Tclass.All.Y?(All.Y$I) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.All.Y?(All.Y$I)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, All.Y.c)): int, TInt, $h));

const All.Y.z: Field
uses {
axiom FDim(All.Y.z) == 0
   && FieldOfDecl(class.All.Y?, field$z) == All.Y.z
   && !$IsGhostField(All.Y.z);
}

// Y.z: Type axiom
axiom (forall All.Y$I: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, All.Y.z)): int, Tclass.All.Y?(All.Y$I) } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.All.Y?(All.Y$I)
     ==> $Is($Unbox(read($h, $o, All.Y.z)): int, TInt));

// Y.z: Allocation axiom
axiom (forall All.Y$I: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, All.Y.z)): int, Tclass.All.Y?(All.Y$I) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.All.Y?(All.Y$I)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, All.Y.z)): int, TInt, $h));

procedure {:verboseName "All.Y.d (well-formedness)"} CheckWellFormed$$All.Y.d(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y._ctor (well-formedness)"} CheckWellFormed$$All.Y.__ctor(All.Y$I: Ty, c#0: int) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y._ctor (call)"} Call$$All.Y.__ctor(All.Y$I: Ty, c#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
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



procedure {:verboseName "All.Y._ctor (correctness)"} Impl$$All.Y.__ctor(All.Y$I: Ty, c#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.AddZ (well-formedness)"} CheckWellFormed$$All.Y.AddZ(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.AddZ (call)"} Call$$All.Y.AddZ(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.AddZ (correctness)"} Impl$$All.Y.AddZ(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.AddZ (correctness)"} Impl$$All.Y.AddZ(All.Y$I: Ty, this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var extra##0: int;

    // AddMethodImpl: AddZ, Impl$$All.Y.AddZ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(83,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    extra##0 := $Unbox(read($Heap, this, All.Y.z)): int;
    assert {:id "id197"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id198"} Call$$All.Y.Add(All.Y$I, this, extra##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "All.Y.Add (well-formedness)"} CheckWellFormed$$All.Y.Add(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    extra#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.Add (call)"} Call$$All.Y.Add(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    extra#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.Add (correctness)"} Impl$$All.Y.Add(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    extra#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.Add (correctness)"} Impl$$All.Y.Add(All.Y$I: Ty, this: ref, extra#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: Add, Impl$$All.Y.Add
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(88,9)
    assume true;
    assert {:id "id199"} $_ModifiesFrame[this, All.Y.c];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, All.Y.c)): int + extra#0;
    $Heap := update($Heap, this, All.Y.c, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "All.Y.Swap (well-formedness)"} CheckWellFormed$$All.Y.Swap(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.Swap (call)"} Call$$All.Y.Swap(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.Swap (correctness)"} Impl$$All.Y.Swap(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.Swap (correctness)"} Impl$$All.Y.Swap(All.Y$I: Ty, this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: Swap, Impl$$All.Y.Swap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(93,22)
    assume true;
    $obj0 := this;
    assert {:id "id202"} $_ModifiesFrame[$obj0, All.Y.c];
    assume true;
    $obj1 := this;
    assert {:id "id203"} $_ModifiesFrame[$obj1, All.Y.z];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, All.Y.z)): int;
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, All.Y.c)): int;
    $Heap := update($Heap, $obj0, All.Y.c, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, All.Y.z, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "All.Y.SetC (well-formedness)"} CheckWellFormed$$All.Y.SetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    newC#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.SetC (override check)"} OverrideCheck$$All.Y.SetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    newC#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.SetC (override check)"} OverrideCheck$$All.Y.SetC(All.Y$I: Ty, this: ref, newC#0: int)
{
    assert {:id "id208"} newC#0 <= newC#0;
    assert {:id "id209"} (forall $o: ref, $f: Field :: true);
    assert {:id "id210"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this ==> $o == this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "All.Y.SetC (call)"} Call$$All.Y.SetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    newC#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.SetC (correctness)"} Impl$$All.Y.SetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    newC#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.SetC (correctness)"} Impl$$All.Y.SetC(All.Y$I: Ty, this: ref, newC#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: SetC, Impl$$All.Y.SetC
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(98,9)
    assume true;
    assert {:id "id211"} $_ModifiesFrame[this, All.Y.c];
    assume true;
    $rhs#0 := newC#0;
    $Heap := update($Heap, this, All.Y.c, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "All.Y.GetC (well-formedness)"} CheckWellFormed$$All.Y.GetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (c#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.GetC (override check)"} OverrideCheck$$All.Y.GetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (c#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.GetC (override check)"} OverrideCheck$$All.Y.GetC(All.Y$I: Ty, this: ref) returns (c#0: int)
{
  var TraitDefinitions.SubTrait$T: Ty;
  var TraitDefinitions.SubTrait$I: Ty;

    assume TraitDefinitions.SubTrait$T == TInt;
    assume TraitDefinitions.SubTrait$I == All.Y$I;
    assert {:id "id215"} true;
    assert {:id "id216"} (forall $o: ref, $f: Field :: true);
    assert {:id "id217"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    assume {:id "id218"} c#0 >= LitInt(0);
    assert {:id "id219"} c#0 >= LitInt(0);
}



procedure {:verboseName "All.Y.GetC (call)"} Call$$All.Y.GetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (c#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id220"} c#0 >= LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.GetC (correctness)"} Impl$$All.Y.GetC(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (c#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id221"} c#0 >= LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.GetC (correctness)"} Impl$$All.Y.GetC(All.Y$I: Ty, this: ref) returns (c#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: GetC, Impl$$All.Y.GetC
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(103,7)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(103,7)
    assume true;
    if ($Unbox(read($Heap, this, All.Y.c)): int <= LitInt(0))
    {
    }
    else
    {
    }

    assume true;
    c#0 := (if $Unbox(read($Heap, this, All.Y.c)): int <= LitInt(0)
       then 37
       else $Unbox(read($Heap, this, All.Y.c)): int);
    return;
}



procedure {:verboseName "All.Y.GetD (well-formedness)"} CheckWellFormed$$All.Y.GetD(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (d#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.GetD (override check)"} OverrideCheck$$All.Y.GetD(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (d#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.GetD (override check)"} OverrideCheck$$All.Y.GetD(All.Y$I: Ty, this: ref) returns (d#0: int)
{
  var TraitDefinitions.SubTrait$T: Ty;
  var TraitDefinitions.SubTrait$I: Ty;

    assume TraitDefinitions.SubTrait$T == TInt;
    assume TraitDefinitions.SubTrait$I == All.Y$I;
    assert {:id "id223"} true;
    assert {:id "id224"} (forall $o: ref, $f: Field :: true);
    assert {:id "id225"} (forall $o: ref, $f: Field :: true);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "All.Y.GetD (call)"} Call$$All.Y.GetD(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (d#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.GetD (correctness)"} Impl$$All.Y.GetD(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (d#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.Convert (well-formedness)"} CheckWellFormed$$All.Y.Convert(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    i#0: Box where $IsBox(i#0, All.Y$I) && $IsAllocBox(i#0, All.Y$I, $Heap), 
    i2#0: Box where $IsBox(i2#0, All.Y$I) && $IsAllocBox(i2#0, All.Y$I, $Heap))
   returns (j#0: Box where $IsBox(j#0, All.Y$I) && $IsAllocBox(j#0, All.Y$I, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.Convert (call)"} Call$$All.Y.Convert(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    i#0: Box where $IsBox(i#0, All.Y$I) && $IsAllocBox(i#0, All.Y$I, $Heap), 
    i2#0: Box where $IsBox(i2#0, All.Y$I) && $IsAllocBox(i2#0, All.Y$I, $Heap))
   returns (j#0: Box where $IsBox(j#0, All.Y$I) && $IsAllocBox(j#0, All.Y$I, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.Convert (correctness)"} Impl$$All.Y.Convert(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap), 
    i#0: Box where $IsBox(i#0, All.Y$I) && $IsAllocBox(i#0, All.Y$I, $Heap), 
    i2#0: Box where $IsBox(i2#0, All.Y$I) && $IsAllocBox(i2#0, All.Y$I, $Heap))
   returns (defass#j#0: bool, 
    j#0: Box
       where defass#j#0 ==> $IsBox(j#0, All.Y$I) && $IsAllocBox(j#0, All.Y$I, $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.Convert (correctness)"} Impl$$All.Y.Convert(All.Y$I: Ty, this: ref, i#0: Box, i2#0: Box)
   returns (defass#j#0: bool, j#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Convert, Impl$$All.Y.Convert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(109,7)
    assume true;
    if ($Unbox(read($Heap, this, All.Y.c)): int == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(110,9)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(110,9)
        assume true;
        assume true;
        j#0 := i#0;
        defass#j#0 := true;
        assert {:id "id228"} defass#j#0;
        return;
    }
    else
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(112,9)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(112,9)
        assume true;
        assume true;
        j#0 := i2#0;
        defass#j#0 := true;
        assert {:id "id230"} defass#j#0;
        return;
    }

    assert {:id "id231"} defass#j#0;
}



procedure {:verboseName "All.Y.ClosureConvert (well-formedness)"} CheckWellFormed$$All.Y.ClosureConvert(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (f#0: HandleType
       where $Is(f#0, Tclass._System.___hFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hFunc1(TInt, TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.ClosureConvert (well-formedness)"} CheckWellFormed$$All.Y.ClosureConvert(All.Y$I: Ty, this: ref) returns (f#0: HandleType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var ##x0#0: int;
  var ##x0#1: int;


    // AddMethodImpl: ClosureConvert, CheckWellFormed$$All.Y.ClosureConvert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc f#0;
    havoc i#0;
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(f#0), Tclass._System.___hFunc1(TInt, TInt), $Heap);
    ##x0#0 := i#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x0#0, TInt, $Heap);
    assume Requires1#canCall(TInt, TInt, $Heap, f#0, $Box(i#0));
    assume {:id "id232"} Requires1(TInt, TInt, $Heap, f#0, $Box(i#0)) == Lit(true);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(f#0), Tclass._System.___hFunc1(TInt, TInt), $Heap);
    ##x0#1 := i#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x0#1, TInt, $Heap);
    assert {:id "id233"} Requires1(TInt, TInt, $Heap, f#0, $Box(i#0));
    assume Reads1#canCall(TInt, TInt, $Heap, f#0, $Box(i#0));
    assume {:id "id234"} Set#Equal(Reads1(TInt, TInt, $Heap, f#0, $Box(i#0)), 
      Set#UnionOne(Set#Empty(): Set, $Box(this)));
    assume {:id "id235"} (forall i#1: int :: 
      { Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
        { Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
      Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) == Lit(true)
         && Set#Equal(Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)), 
          Set#UnionOne(Set#Empty(): Set, $Box(this))));
}



procedure {:verboseName "All.Y.ClosureConvert (call)"} Call$$All.Y.ClosureConvert(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (f#0: HandleType
       where $Is(f#0, Tclass._System.___hFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hFunc1(TInt, TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: int :: 
    { Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
      { Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
    Requires1#canCall(TInt, TInt, $Heap, f#0, $Box(i#1))
       && (Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) == Lit(true)
         ==> Reads1#canCall(TInt, TInt, $Heap, f#0, $Box(i#1))));
  ensures {:id "id236"} (forall i#1: int :: 
    { Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
      { Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
    Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) == Lit(true)
       && Set#Equal(Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)), 
        Set#UnionOne(Set#Empty(): Set, $Box(this))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "All.Y.ClosureConvert (correctness)"} Impl$$All.Y.ClosureConvert(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap))
   returns (f#0: HandleType
       where $Is(f#0, Tclass._System.___hFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hFunc1(TInt, TInt), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: int :: 
    { Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
      { Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
    Requires1#canCall(TInt, TInt, $Heap, f#0, $Box(i#1))
       && (Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) == Lit(true)
         ==> Reads1#canCall(TInt, TInt, $Heap, f#0, $Box(i#1))));
  ensures {:id "id237"} (forall i#1: int :: 
    { Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
      { Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) } 
    Requires1(TInt, TInt, $Heap, f#0, $Box(i#1)) == Lit(true)
       && Set#Equal(Reads1(TInt, TInt, $Heap, f#0, $Box(i#1)), 
        Set#UnionOne(Set#Empty(): Set, $Box(this))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.ClosureConvert (correctness)"} Impl$$All.Y.ClosureConvert(All.Y$I: Ty, this: ref) returns (f#0: HandleType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $lambdaHeap#0: Heap;
  var i#2: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;

    // AddMethodImpl: ClosureConvert, Impl$$All.Y.ClosureConvert
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(118,7)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/traits.dfy(118,7)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc i#2;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> $o == this);
            assert {:id "id238"} $_Frame#l0[this, All.Y.c];
            assume {:id "id239"} lambdaResult#0
               == $Unbox(read($Heap, this, All.Y.c)): int + All.Y.d(All.Y$I, this) + i#2;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    f#0 := Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
              $Box($Unbox(read($l#0#heap#0, this, All.Y.c)): int
                   + All.Y.d(All.Y$I, this)
                   + $Unbox($l#0#i#0): int)), 
            (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: $IsBox($l#0#i#0, TInt)), 
            (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: $l#0#o#0 == this))))), 
        $LS($LZ)));
    return;
}



// function declaration for All.Y.GetDFunc
function All.Y.GetDFunc(All.Y$I: Ty, this: ref) : int
uses {
// definition axiom for All.Y.GetDFunc (revealed)
axiom {:id "id241"} 1 <= $FunctionContextHeight
   ==> (forall All.Y$I: Ty, this: ref :: 
    { All.Y.GetDFunc(All.Y$I, this) } 
    All.Y.GetDFunc#canCall(All.Y$I, this)
         || (1 < $FunctionContextHeight && this != null && $Is(this, Tclass.All.Y(All.Y$I)))
       ==> All.Y.GetDFunc(All.Y$I, this) == All.Y.d(All.Y$I, this));
// definition axiom for All.Y.GetDFunc for all literals (revealed)
axiom {:id "id242"} 1 <= $FunctionContextHeight
   ==> (forall All.Y$I: Ty, this: ref :: 
    {:weight 3} { All.Y.GetDFunc(All.Y$I, Lit(this)) } 
    All.Y.GetDFunc#canCall(All.Y$I, Lit(this))
         || (1 < $FunctionContextHeight && this != null && $Is(this, Tclass.All.Y(All.Y$I)))
       ==> All.Y.GetDFunc(All.Y$I, Lit(this)) == All.Y.d(All.Y$I, Lit(this)));
}

function All.Y.GetDFunc#canCall(All.Y$I: Ty, this: ref) : bool;

function All.Y.GetDFunc#requires(Ty, ref) : bool;

// #requires axiom for All.Y.GetDFunc
axiom (forall All.Y$I: Ty, this: ref :: 
  { All.Y.GetDFunc#requires(All.Y$I, this) } 
  this != null && $Is(this, Tclass.All.Y(All.Y$I))
     ==> All.Y.GetDFunc#requires(All.Y$I, this) == true);

// override axiom for TraitDefinitions.SubTrait.GetDFunc in class All.Y
axiom 1 <= $FunctionContextHeight
   ==> (forall All.Y$I: Ty, this: ref :: 
    { TraitDefinitions.SubTrait.GetDFunc(TInt, All.Y$I, this), $Is(this, Tclass.All.Y(All.Y$I)) } 
      { TraitDefinitions.SubTrait.GetDFunc(TInt, All.Y$I, this), All.Y.GetDFunc(All.Y$I, this) } 
    All.Y.GetDFunc#canCall(All.Y$I, this)
         || (1 < $FunctionContextHeight && this != null && $Is(this, Tclass.All.Y(All.Y$I)))
       ==> TraitDefinitions.SubTrait.GetDFunc(TInt, All.Y$I, this)
         == All.Y.GetDFunc(All.Y$I, this));

procedure {:verboseName "All.Y.GetDFunc (well-formedness)"} CheckWellformed$$All.Y.GetDFunc(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.Y.GetDFunc (override check)"} OverrideCheck$$All.Y.GetDFunc(All.Y$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.All.Y(All.Y$I))
         && $IsAlloc(this, Tclass.All.Y(All.Y$I), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "All.Y.GetDFunc (override check)"} OverrideCheck$$All.Y.GetDFunc(All.Y$I: Ty, this: ref)
{
  var TraitDefinitions.SubTrait$T: Ty;
  var TraitDefinitions.SubTrait$I: Ty;
  var Y_$_ReadsFrame: [ref,Field]bool;

    assume TraitDefinitions.SubTrait$T == TInt;
    assume TraitDefinitions.SubTrait$I == All.Y$I;
    assert {:id "id244"} true;
    Y_$_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id245"} (forall $o: ref, $f: Field :: true);
}



// $Is axiom for non-null type All.Y
axiom (forall All.Y$I: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.All.Y(All.Y$I)) } { $Is(c#0, Tclass.All.Y?(All.Y$I)) } 
  $Is(c#0, Tclass.All.Y(All.Y$I))
     <==> $Is(c#0, Tclass.All.Y?(All.Y$I)) && c#0 != null);

// $IsAlloc axiom for non-null type All.Y
axiom (forall All.Y$I: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.All.Y(All.Y$I), $h) } 
    { $IsAlloc(c#0, Tclass.All.Y?(All.Y$I), $h) } 
  $IsAlloc(c#0, Tclass.All.Y(All.Y$I), $h)
     <==> $IsAlloc(c#0, Tclass.All.Y?(All.Y$I), $h));

// Constructor function declaration
function #All.ObjectContainer.ObjectContainer(ref) : DatatypeType;

const unique ##All.ObjectContainer.ObjectContainer: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: ref :: 
  { #All.ObjectContainer.ObjectContainer(a#0#0#0) } 
  DatatypeCtorId(#All.ObjectContainer.ObjectContainer(a#0#0#0))
     == ##All.ObjectContainer.ObjectContainer);
}

function All.ObjectContainer.ObjectContainer_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { All.ObjectContainer.ObjectContainer_q(d) } 
  All.ObjectContainer.ObjectContainer_q(d)
     <==> DatatypeCtorId(d) == ##All.ObjectContainer.ObjectContainer);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { All.ObjectContainer.ObjectContainer_q(d) } 
  All.ObjectContainer.ObjectContainer_q(d)
     ==> (exists a#1#0#0: ref :: d == #All.ObjectContainer.ObjectContainer(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: ref :: 
  { $Is(#All.ObjectContainer.ObjectContainer(a#2#0#0), Tclass.All.ObjectContainer()) } 
  $Is(#All.ObjectContainer.ObjectContainer(a#2#0#0), Tclass.All.ObjectContainer())
     <==> $Is(a#2#0#0, Tclass.All.Y(TInt)));

// Constructor $IsAlloc
axiom (forall a#2#0#0: ref, $h: Heap :: 
  { $IsAlloc(#All.ObjectContainer.ObjectContainer(a#2#0#0), Tclass.All.ObjectContainer(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#All.ObjectContainer.ObjectContainer(a#2#0#0), Tclass.All.ObjectContainer(), $h)
       <==> $IsAlloc(a#2#0#0, Tclass.All.Y(TInt), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(All.ObjectContainer.y(d), Tclass.All.Y(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      All.ObjectContainer.ObjectContainer_q(d)
       && $IsAlloc(d, Tclass.All.ObjectContainer(), $h)
     ==> $IsAlloc(All.ObjectContainer.y(d), Tclass.All.Y(TInt), $h));

// Constructor literal
axiom (forall a#3#0#0: ref :: 
  { #All.ObjectContainer.ObjectContainer(Lit(a#3#0#0)) } 
  #All.ObjectContainer.ObjectContainer(Lit(a#3#0#0))
     == Lit(#All.ObjectContainer.ObjectContainer(a#3#0#0)));

function All.ObjectContainer.y(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#4#0#0: ref :: 
  { #All.ObjectContainer.ObjectContainer(a#4#0#0) } 
  All.ObjectContainer.y(#All.ObjectContainer.ObjectContainer(a#4#0#0)) == a#4#0#0);

// Depth-one case-split function
function $IsA#All.ObjectContainer(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#All.ObjectContainer(d) } 
  $IsA#All.ObjectContainer(d) ==> All.ObjectContainer.ObjectContainer_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { All.ObjectContainer.ObjectContainer_q(d), $Is(d, Tclass.All.ObjectContainer()) } 
  $Is(d, Tclass.All.ObjectContainer())
     ==> All.ObjectContainer.ObjectContainer_q(d));

// Datatype extensional equality declaration
function All.ObjectContainer#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #All.ObjectContainer.ObjectContainer
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { All.ObjectContainer#Equal(a, b) } 
  All.ObjectContainer#Equal(a, b)
     <==> All.ObjectContainer.y(a) == All.ObjectContainer.y(b));

// Datatype extensionality axiom: All.ObjectContainer
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { All.ObjectContainer#Equal(a, b) } 
  All.ObjectContainer#Equal(a, b) <==> a == b);

const unique class.All.ObjectContainer: ClassName;

const unique class.All.TraitNoArgs?: ClassName;

function Tclass.All.TraitNoArgs?() : Ty
uses {
// Tclass.All.TraitNoArgs? Tag
axiom Tag(Tclass.All.TraitNoArgs?()) == Tagclass.All.TraitNoArgs?
   && TagFamily(Tclass.All.TraitNoArgs?()) == tytagFamily$TraitNoArgs;
}

const unique Tagclass.All.TraitNoArgs?: TyTag;

// Box/unbox axiom for Tclass.All.TraitNoArgs?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.All.TraitNoArgs?()) } 
  $IsBox(bx, Tclass.All.TraitNoArgs?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.All.TraitNoArgs?()));

// $Is axiom for trait TraitNoArgs
axiom (forall $o: ref :: 
  { $Is($o, Tclass.All.TraitNoArgs?()) } 
  $Is($o, Tclass.All.TraitNoArgs?())
     <==> $o == null || implements$All.TraitNoArgs(dtype($o)));

// $IsAlloc axiom for trait TraitNoArgs
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.All.TraitNoArgs?(), $h) } 
  $IsAlloc($o, Tclass.All.TraitNoArgs?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$All.TraitNoArgs(ty: Ty) : bool;

// $Is axiom for non-null type All.TraitNoArgs
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.All.TraitNoArgs()) } { $Is(c#0, Tclass.All.TraitNoArgs?()) } 
  $Is(c#0, Tclass.All.TraitNoArgs())
     <==> $Is(c#0, Tclass.All.TraitNoArgs?()) && c#0 != null);

// $IsAlloc axiom for non-null type All.TraitNoArgs
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.All.TraitNoArgs(), $h) } 
    { $IsAlloc(c#0, Tclass.All.TraitNoArgs?(), $h) } 
  $IsAlloc(c#0, Tclass.All.TraitNoArgs(), $h)
     <==> $IsAlloc(c#0, Tclass.All.TraitNoArgs?(), $h));

const unique class.All.ClassNoArgs?: ClassName;

function Tclass.All.ClassNoArgs?() : Ty
uses {
// Tclass.All.ClassNoArgs? Tag
axiom Tag(Tclass.All.ClassNoArgs?()) == Tagclass.All.ClassNoArgs?
   && TagFamily(Tclass.All.ClassNoArgs?()) == tytagFamily$ClassNoArgs;
axiom implements$All.TraitNoArgs(Tclass.All.ClassNoArgs?());
}

const unique Tagclass.All.ClassNoArgs?: TyTag;

// Box/unbox axiom for Tclass.All.ClassNoArgs?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.All.ClassNoArgs?()) } 
  $IsBox(bx, Tclass.All.ClassNoArgs?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.All.ClassNoArgs?()));

// $Is axiom for class ClassNoArgs
axiom (forall $o: ref :: 
  { $Is($o, Tclass.All.ClassNoArgs?()) } 
  $Is($o, Tclass.All.ClassNoArgs?())
     <==> $o == null || dtype($o) == Tclass.All.ClassNoArgs?());

// $IsAlloc axiom for class ClassNoArgs
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.All.ClassNoArgs?(), $h) } 
  $IsAlloc($o, Tclass.All.ClassNoArgs?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const All.ClassNoArgs.x: Field
uses {
axiom FDim(All.ClassNoArgs.x) == 0
   && FieldOfDecl(class.All.ClassNoArgs?, field$x) == All.ClassNoArgs.x
   && !$IsGhostField(All.ClassNoArgs.x);
}

// ClassNoArgs.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, All.ClassNoArgs.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.All.ClassNoArgs?()
     ==> $Is($Unbox(read($h, $o, All.ClassNoArgs.x)): int, TInt));

// ClassNoArgs.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, All.ClassNoArgs.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.All.ClassNoArgs?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, All.ClassNoArgs.x)): int, TInt, $h));

procedure {:verboseName "All.ClassNoArgs._ctor (well-formedness)"} CheckWellFormed$$All.ClassNoArgs.__ctor() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "All.ClassNoArgs._ctor (call)"} Call$$All.ClassNoArgs.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.All.ClassNoArgs())
         && $IsAlloc(this, Tclass.All.ClassNoArgs(), $Heap));
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



procedure {:verboseName "All.ClassNoArgs._ctor (correctness)"} Impl$$All.ClassNoArgs.__ctor() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type All.ClassNoArgs
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.All.ClassNoArgs()) } { $Is(c#0, Tclass.All.ClassNoArgs?()) } 
  $Is(c#0, Tclass.All.ClassNoArgs())
     <==> $Is(c#0, Tclass.All.ClassNoArgs?()) && c#0 != null);

// $IsAlloc axiom for non-null type All.ClassNoArgs
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.All.ClassNoArgs(), $h) } 
    { $IsAlloc(c#0, Tclass.All.ClassNoArgs?(), $h) } 
  $IsAlloc(c#0, Tclass.All.ClassNoArgs(), $h)
     <==> $IsAlloc(c#0, Tclass.All.ClassNoArgs?(), $h));

const unique class.TraitDefinitions.__default: ClassName;

// Constructor function declaration
function #TraitDefinitions.Option.Some(Box) : DatatypeType;

const unique ##TraitDefinitions.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #TraitDefinitions.Option.Some(a#0#0#0) } 
  DatatypeCtorId(#TraitDefinitions.Option.Some(a#0#0#0))
     == ##TraitDefinitions.Option.Some);
}

function TraitDefinitions.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TraitDefinitions.Option.Some_q(d) } 
  TraitDefinitions.Option.Some_q(d)
     <==> DatatypeCtorId(d) == ##TraitDefinitions.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TraitDefinitions.Option.Some_q(d) } 
  TraitDefinitions.Option.Some_q(d)
     ==> (exists a#1#0#0: Box :: d == #TraitDefinitions.Option.Some(a#1#0#0)));

// Constructor $Is
axiom (forall TraitDefinitions.Option$T: Ty, a#2#0#0: Box :: 
  { $Is(#TraitDefinitions.Option.Some(a#2#0#0), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)) } 
  $Is(#TraitDefinitions.Option.Some(a#2#0#0), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     <==> $IsBox(a#2#0#0, TraitDefinitions.Option$T));

// Constructor $IsAlloc
axiom (forall TraitDefinitions.Option$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#TraitDefinitions.Option.Some(a#2#0#0), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TraitDefinitions.Option.Some(a#2#0#0), 
        Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, TraitDefinitions.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TraitDefinitions.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(TraitDefinitions.Option.value(d), TraitDefinitions.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      TraitDefinitions.Option.Some_q(d)
       && $IsAlloc(d, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), $h)
     ==> $IsAllocBox(TraitDefinitions.Option.value(d), TraitDefinitions.Option$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #TraitDefinitions.Option.Some(Lit(a#3#0#0)) } 
  #TraitDefinitions.Option.Some(Lit(a#3#0#0))
     == Lit(#TraitDefinitions.Option.Some(a#3#0#0)));

function TraitDefinitions.Option.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #TraitDefinitions.Option.Some(a#4#0#0) } 
  TraitDefinitions.Option.value(#TraitDefinitions.Option.Some(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #TraitDefinitions.Option.Some(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#TraitDefinitions.Option.Some(a#5#0#0)));

// Constructor function declaration
function #TraitDefinitions.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TraitDefinitions.Option.None())
   == ##TraitDefinitions.Option.None;
// Constructor literal
axiom #TraitDefinitions.Option.None() == Lit(#TraitDefinitions.Option.None());
}

const unique ##TraitDefinitions.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TraitDefinitions.Option.None())
   == ##TraitDefinitions.Option.None;
}

function TraitDefinitions.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TraitDefinitions.Option.None_q(d) } 
  TraitDefinitions.Option.None_q(d)
     <==> DatatypeCtorId(d) == ##TraitDefinitions.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TraitDefinitions.Option.None_q(d) } 
  TraitDefinitions.Option.None_q(d) ==> d == #TraitDefinitions.Option.None());

// Constructor $Is
axiom (forall TraitDefinitions.Option$T: Ty :: 
  { $Is(#TraitDefinitions.Option.None(), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)) } 
  $Is(#TraitDefinitions.Option.None(), 
    Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)));

// Constructor $IsAlloc
axiom (forall TraitDefinitions.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#TraitDefinitions.Option.None(), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TraitDefinitions.Option.None(), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), 
      $h));

// Depth-one case-split function
function $IsA#TraitDefinitions.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TraitDefinitions.Option(d) } 
  $IsA#TraitDefinitions.Option(d)
     ==> TraitDefinitions.Option.Some_q(d) || TraitDefinitions.Option.None_q(d));

// Questionmark data type disjunctivity
axiom (forall TraitDefinitions.Option$T: Ty, d: DatatypeType :: 
  { TraitDefinitions.Option.None_q(d), $Is(d, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)) } 
    { TraitDefinitions.Option.Some_q(d), $Is(d, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)) } 
  $Is(d, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.Some_q(d) || TraitDefinitions.Option.None_q(d));

// Datatype extensional equality declaration
function TraitDefinitions.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TraitDefinitions.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TraitDefinitions.Option#Equal(a, b), TraitDefinitions.Option.Some_q(a) } 
    { TraitDefinitions.Option#Equal(a, b), TraitDefinitions.Option.Some_q(b) } 
  TraitDefinitions.Option.Some_q(a) && TraitDefinitions.Option.Some_q(b)
     ==> (TraitDefinitions.Option#Equal(a, b)
       <==> TraitDefinitions.Option.value(a) == TraitDefinitions.Option.value(b)));

// Datatype extensional equality definition: #TraitDefinitions.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TraitDefinitions.Option#Equal(a, b), TraitDefinitions.Option.None_q(a) } 
    { TraitDefinitions.Option#Equal(a, b), TraitDefinitions.Option.None_q(b) } 
  TraitDefinitions.Option.None_q(a) && TraitDefinitions.Option.None_q(b)
     ==> TraitDefinitions.Option#Equal(a, b));

// Datatype extensionality axiom: TraitDefinitions.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TraitDefinitions.Option#Equal(a, b) } 
  TraitDefinitions.Option#Equal(a, b) <==> a == b);

const unique class.TraitDefinitions.Option: ClassName;

// function declaration for TraitDefinitions.Option.Negate
function TraitDefinitions.Option.Negate(TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box) : DatatypeType;

function TraitDefinitions.Option.Negate#canCall(TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box) : bool;

// consequence axiom for TraitDefinitions.Option.Negate
axiom (forall TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box :: 
  { TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, this, t#0) } 
  TraitDefinitions.Option.Negate#canCall(TraitDefinitions.Option$T, this, t#0)
       || ($Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
         && $IsBox(t#0, TraitDefinitions.Option$T))
     ==> $Is(TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, this, t#0), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T)));

// alloc consequence axiom for TraitDefinitions.Option.Negate
axiom (forall $Heap: Heap, TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box :: 
  { $IsAlloc(TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, this, t#0), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), 
      $Heap) } 
  (TraitDefinitions.Option.Negate#canCall(TraitDefinitions.Option$T, this, t#0)
         || ($IsAlloc(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), $Heap)
           && 
          $IsBox(t#0, TraitDefinitions.Option$T)
           && $IsAllocBox(t#0, TraitDefinitions.Option$T, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, this, t#0), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), 
      $Heap));

function TraitDefinitions.Option.Negate#requires(Ty, DatatypeType, Box) : bool;

// #requires axiom for TraitDefinitions.Option.Negate
axiom (forall TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box :: 
  { TraitDefinitions.Option.Negate#requires(TraitDefinitions.Option$T, this, t#0) } 
  $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
       && $IsBox(t#0, TraitDefinitions.Option$T)
     ==> TraitDefinitions.Option.Negate#requires(TraitDefinitions.Option$T, this, t#0)
       == true);

// definition axiom for TraitDefinitions.Option.Negate (revealed)
axiom {:id "id247"} (forall TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box :: 
  { TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, this, t#0) } 
  TraitDefinitions.Option.Negate#canCall(TraitDefinitions.Option$T, this, t#0)
       || ($Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
         && $IsBox(t#0, TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, this, t#0)
       == (if TraitDefinitions.Option.Some_q(this)
         then (var v#6 := TraitDefinitions.Option.value(this); 
          Lit(#TraitDefinitions.Option.None()))
         else #TraitDefinitions.Option.Some(t#0)));

// definition axiom for TraitDefinitions.Option.Negate for decreasing-related literals (revealed)
axiom {:id "id248"} (forall TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box :: 
  {:weight 3} { TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, Lit(this), t#0) } 
  TraitDefinitions.Option.Negate#canCall(TraitDefinitions.Option$T, Lit(this), t#0)
       || ($Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
         && $IsBox(t#0, TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, Lit(this), t#0)
       == (if TraitDefinitions.Option.Some_q(Lit(this))
         then (var v#8 := Lit(TraitDefinitions.Option.value(Lit(this))); 
          Lit(#TraitDefinitions.Option.None()))
         else #TraitDefinitions.Option.Some(t#0)));

// definition axiom for TraitDefinitions.Option.Negate for all literals (revealed)
axiom {:id "id249"} (forall TraitDefinitions.Option$T: Ty, this: DatatypeType, t#0: Box :: 
  {:weight 3} { TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, Lit(this), Lit(t#0)) } 
  TraitDefinitions.Option.Negate#canCall(TraitDefinitions.Option$T, Lit(this), Lit(t#0))
       || ($Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
         && $IsBox(t#0, TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.Negate(TraitDefinitions.Option$T, Lit(this), Lit(t#0))
       == (if TraitDefinitions.Option.Some_q(Lit(this))
         then (var v#10 := Lit(TraitDefinitions.Option.value(Lit(this))); 
          Lit(#TraitDefinitions.Option.None()))
         else #TraitDefinitions.Option.Some(Lit(t#0))));

// function declaration for TraitDefinitions.Option.IsFailure
function TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T: Ty, this: DatatypeType) : bool;

function TraitDefinitions.Option.IsFailure#canCall(TraitDefinitions.Option$T: Ty, this: DatatypeType) : bool;

function TraitDefinitions.Option.IsFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for TraitDefinitions.Option.IsFailure
axiom (forall TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  { TraitDefinitions.Option.IsFailure#requires(TraitDefinitions.Option$T, this) } 
  $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.IsFailure#requires(TraitDefinitions.Option$T, this)
       == true);

// definition axiom for TraitDefinitions.Option.IsFailure (revealed)
axiom {:id "id250"} (forall TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  { TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, this) } 
  TraitDefinitions.Option.IsFailure#canCall(TraitDefinitions.Option$T, this)
       || $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, this)
       == TraitDefinitions.Option.None_q(this));

// definition axiom for TraitDefinitions.Option.IsFailure for all literals (revealed)
axiom {:id "id251"} (forall TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  {:weight 3} { TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, Lit(this)) } 
  TraitDefinitions.Option.IsFailure#canCall(TraitDefinitions.Option$T, Lit(this))
       || $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, Lit(this))
       == Lit(TraitDefinitions.Option.None_q(Lit(this))));

// function declaration for TraitDefinitions.Option.PropagateFailure
function TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T: Ty, 
    TraitDefinitions.Option.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : DatatypeType;

function TraitDefinitions.Option.PropagateFailure#canCall(TraitDefinitions.Option$T: Ty, 
    TraitDefinitions.Option.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : bool;

// consequence axiom for TraitDefinitions.Option.PropagateFailure
axiom (forall TraitDefinitions.Option$T: Ty, 
    TraitDefinitions.Option.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this) } 
  TraitDefinitions.Option.PropagateFailure#canCall(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this)
       || $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> $Is(TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option.PropagateFailure$U)));

// alloc consequence axiom for TraitDefinitions.Option.PropagateFailure
axiom (forall $Heap: Heap, 
    TraitDefinitions.Option$T: Ty, 
    TraitDefinitions.Option.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { $IsAlloc(TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option.PropagateFailure$U), 
      $Heap) } 
  (TraitDefinitions.Option.PropagateFailure#canCall(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this)
         || $IsAlloc(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), $Heap))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this), 
      Tclass.TraitDefinitions.Option(TraitDefinitions.Option.PropagateFailure$U), 
      $Heap));

function TraitDefinitions.Option.PropagateFailure#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for TraitDefinitions.Option.PropagateFailure
axiom (forall TraitDefinitions.Option$T: Ty, 
    TraitDefinitions.Option.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { TraitDefinitions.Option.PropagateFailure#requires(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this) } 
  $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.PropagateFailure#requires(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this)
       == true);

// definition axiom for TraitDefinitions.Option.PropagateFailure (revealed)
axiom {:id "id252"} (forall TraitDefinitions.Option$T: Ty, 
    TraitDefinitions.Option.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this) } 
  TraitDefinitions.Option.PropagateFailure#canCall(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this)
       || $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, this)
       == Lit(#TraitDefinitions.Option.None()));

// definition axiom for TraitDefinitions.Option.PropagateFailure for all literals (revealed)
axiom {:id "id253"} (forall TraitDefinitions.Option$T: Ty, 
    TraitDefinitions.Option.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  {:weight 3} { TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, Lit(this)) } 
  TraitDefinitions.Option.PropagateFailure#canCall(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, Lit(this))
       || $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.PropagateFailure(TraitDefinitions.Option$T, TraitDefinitions.Option.PropagateFailure$U, Lit(this))
       == Lit(#TraitDefinitions.Option.None()));

// function declaration for TraitDefinitions.Option.Extract
function TraitDefinitions.Option.Extract(TraitDefinitions.Option$T: Ty, this: DatatypeType) : Box;

function TraitDefinitions.Option.Extract#canCall(TraitDefinitions.Option$T: Ty, this: DatatypeType) : bool;

// consequence axiom for TraitDefinitions.Option.Extract
axiom (forall TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  { TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, this) } 
  TraitDefinitions.Option.Extract#canCall(TraitDefinitions.Option$T, this)
       || ($Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
         && !TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, this))
     ==> $IsBox(TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, this), 
      TraitDefinitions.Option$T));

// alloc consequence axiom for TraitDefinitions.Option.Extract
axiom (forall $Heap: Heap, TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  { $IsAllocBox(TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, this), 
      TraitDefinitions.Option$T, 
      $Heap) } 
  (TraitDefinitions.Option.Extract#canCall(TraitDefinitions.Option$T, this)
         || ($IsAlloc(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T), $Heap)
           && !TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, this)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, this), 
      TraitDefinitions.Option$T, 
      $Heap));

function TraitDefinitions.Option.Extract#requires(Ty, DatatypeType) : bool;

// #requires axiom for TraitDefinitions.Option.Extract
axiom (forall TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  { TraitDefinitions.Option.Extract#requires(TraitDefinitions.Option$T, this) } 
  $Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
     ==> TraitDefinitions.Option.Extract#requires(TraitDefinitions.Option$T, this)
       == !TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, this));

// definition axiom for TraitDefinitions.Option.Extract (revealed)
axiom {:id "id254"} (forall TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  { TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, this) } 
  TraitDefinitions.Option.Extract#canCall(TraitDefinitions.Option$T, this)
       || ($Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
         && !TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, this))
     ==> TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, this)
       == TraitDefinitions.Option.value(this));

// definition axiom for TraitDefinitions.Option.Extract for all literals (revealed)
axiom {:id "id255"} (forall TraitDefinitions.Option$T: Ty, this: DatatypeType :: 
  {:weight 3} { TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, Lit(this)) } 
  TraitDefinitions.Option.Extract#canCall(TraitDefinitions.Option$T, Lit(this))
       || ($Is(this, Tclass.TraitDefinitions.Option(TraitDefinitions.Option$T))
         && !Lit(TraitDefinitions.Option.IsFailure(TraitDefinitions.Option$T, Lit(this))))
     ==> TraitDefinitions.Option.Extract(TraitDefinitions.Option$T, Lit(this))
       == Lit(TraitDefinitions.Option.value(Lit(this))));

const unique class.TraitDefinitions.NoMemberTrait?: ClassName;

function Tclass.TraitDefinitions.NoMemberTrait?() : Ty
uses {
// Tclass.TraitDefinitions.NoMemberTrait? Tag
axiom Tag(Tclass.TraitDefinitions.NoMemberTrait?())
     == Tagclass.TraitDefinitions.NoMemberTrait?
   && TagFamily(Tclass.TraitDefinitions.NoMemberTrait?()) == tytagFamily$NoMemberTrait;
}

const unique Tagclass.TraitDefinitions.NoMemberTrait?: TyTag;

// Box/unbox axiom for Tclass.TraitDefinitions.NoMemberTrait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait?()) } 
  $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitDefinitions.NoMemberTrait?()));

// $Is axiom for trait NoMemberTrait
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitDefinitions.NoMemberTrait?()) } 
  $Is($o, Tclass.TraitDefinitions.NoMemberTrait?())
     <==> $o == null || implements$TraitDefinitions.NoMemberTrait(dtype($o)));

// $IsAlloc axiom for trait NoMemberTrait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitDefinitions.NoMemberTrait?(), $h) } 
  $IsAlloc($o, Tclass.TraitDefinitions.NoMemberTrait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitDefinitions.NoMemberTrait(ty: Ty) : bool;

// $Is axiom for non-null type TraitDefinitions.NoMemberTrait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait()) } 
    { $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait?()) } 
  $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait())
     <==> $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait?()) && c#0 != null);

// $IsAlloc axiom for non-null type TraitDefinitions.NoMemberTrait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait(), $h) } 
    { $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait?(), $h) } 
  $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait(), $h)
     <==> $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait?(), $h));

const unique class.TraitDefinitions.NoMemberTrait2?: ClassName;

function Tclass.TraitDefinitions.NoMemberTrait2?() : Ty
uses {
// Tclass.TraitDefinitions.NoMemberTrait2? Tag
axiom Tag(Tclass.TraitDefinitions.NoMemberTrait2?())
     == Tagclass.TraitDefinitions.NoMemberTrait2?
   && TagFamily(Tclass.TraitDefinitions.NoMemberTrait2?())
     == tytagFamily$NoMemberTrait2;
}

const unique Tagclass.TraitDefinitions.NoMemberTrait2?: TyTag;

// Box/unbox axiom for Tclass.TraitDefinitions.NoMemberTrait2?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait2?()) } 
  $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait2?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitDefinitions.NoMemberTrait2?()));

// $Is axiom for trait NoMemberTrait2
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitDefinitions.NoMemberTrait2?()) } 
  $Is($o, Tclass.TraitDefinitions.NoMemberTrait2?())
     <==> $o == null || implements$TraitDefinitions.NoMemberTrait2(dtype($o)));

// $IsAlloc axiom for trait NoMemberTrait2
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitDefinitions.NoMemberTrait2?(), $h) } 
  $IsAlloc($o, Tclass.TraitDefinitions.NoMemberTrait2?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitDefinitions.NoMemberTrait2(ty: Ty) : bool;

// $Is axiom for non-null type TraitDefinitions.NoMemberTrait2
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait2()) } 
    { $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait2?()) } 
  $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait2())
     <==> $Is(c#0, Tclass.TraitDefinitions.NoMemberTrait2?()) && c#0 != null);

// $IsAlloc axiom for non-null type TraitDefinitions.NoMemberTrait2
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait2(), $h) } 
    { $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait2?(), $h) } 
  $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait2(), $h)
     <==> $IsAlloc(c#0, Tclass.TraitDefinitions.NoMemberTrait2?(), $h));

const unique class.TraitDefinitions.SuperTrait?: ClassName;

function Tclass.TraitDefinitions.SuperTrait?() : Ty
uses {
// Tclass.TraitDefinitions.SuperTrait? Tag
axiom Tag(Tclass.TraitDefinitions.SuperTrait?())
     == Tagclass.TraitDefinitions.SuperTrait?
   && TagFamily(Tclass.TraitDefinitions.SuperTrait?()) == tytagFamily$SuperTrait;
}

const unique Tagclass.TraitDefinitions.SuperTrait?: TyTag;

// Box/unbox axiom for Tclass.TraitDefinitions.SuperTrait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.SuperTrait?()) } 
  $IsBox(bx, Tclass.TraitDefinitions.SuperTrait?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TraitDefinitions.SuperTrait?()));

// $Is axiom for trait SuperTrait
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitDefinitions.SuperTrait?()) } 
  $Is($o, Tclass.TraitDefinitions.SuperTrait?())
     <==> $o == null || implements$TraitDefinitions.SuperTrait(dtype($o)));

// $IsAlloc axiom for trait SuperTrait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TraitDefinitions.SuperTrait?(), $h) } 
  $IsAlloc($o, Tclass.TraitDefinitions.SuperTrait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitDefinitions.SuperTrait(ty: Ty) : bool;

procedure {:verboseName "TraitDefinitions.SuperTrait.GetC (well-formedness)"} CheckWellFormed$$TraitDefinitions.SuperTrait.GetC(this: ref
       where this != null
         && 
        $Is(this, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(this, Tclass.TraitDefinitions.SuperTrait(), $Heap))
   returns (c#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TraitDefinitions.SuperTrait.GetC (call)"} Call$$TraitDefinitions.SuperTrait.GetC(this: ref
       where this != null
         && 
        $Is(this, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(this, Tclass.TraitDefinitions.SuperTrait(), $Heap))
   returns (c#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TraitDefinitions.SuperTrait.SetC (well-formedness)"} CheckWellFormed$$TraitDefinitions.SuperTrait.SetC(this: ref
       where this != null
         && 
        $Is(this, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(this, Tclass.TraitDefinitions.SuperTrait(), $Heap), 
    newC#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TraitDefinitions.SuperTrait.SetC (call)"} Call$$TraitDefinitions.SuperTrait.SetC(this: ref
       where this != null
         && 
        $Is(this, Tclass.TraitDefinitions.SuperTrait())
         && $IsAlloc(this, Tclass.TraitDefinitions.SuperTrait(), $Heap), 
    newC#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type TraitDefinitions.SuperTrait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TraitDefinitions.SuperTrait()) } 
    { $Is(c#0, Tclass.TraitDefinitions.SuperTrait?()) } 
  $Is(c#0, Tclass.TraitDefinitions.SuperTrait())
     <==> $Is(c#0, Tclass.TraitDefinitions.SuperTrait?()) && c#0 != null);

// $IsAlloc axiom for non-null type TraitDefinitions.SuperTrait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TraitDefinitions.SuperTrait(), $h) } 
    { $IsAlloc(c#0, Tclass.TraitDefinitions.SuperTrait?(), $h) } 
  $IsAlloc(c#0, Tclass.TraitDefinitions.SuperTrait(), $h)
     <==> $IsAlloc(c#0, Tclass.TraitDefinitions.SuperTrait?(), $h));

const unique class.TraitDefinitions.SubTrait?: ClassName;

function Tclass.TraitDefinitions.SubTrait?(Ty, Ty) : Ty;

const unique Tagclass.TraitDefinitions.SubTrait?: TyTag;

// Tclass.TraitDefinitions.SubTrait? Tag
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty :: 
  { Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I) } 
  Tag(Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
       == Tagclass.TraitDefinitions.SubTrait?
     && TagFamily(Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
       == tytagFamily$SubTrait);

function Tclass.TraitDefinitions.SubTrait?_0(Ty) : Ty;

// Tclass.TraitDefinitions.SubTrait? injectivity 0
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty :: 
  { Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I) } 
  Tclass.TraitDefinitions.SubTrait?_0(Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     == TraitDefinitions.SubTrait$T);

function Tclass.TraitDefinitions.SubTrait?_1(Ty) : Ty;

// Tclass.TraitDefinitions.SubTrait? injectivity 1
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty :: 
  { Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I) } 
  Tclass.TraitDefinitions.SubTrait?_1(Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     == TraitDefinitions.SubTrait$I);

// Box/unbox axiom for Tclass.TraitDefinitions.SubTrait?
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)) } 
  $IsBox(bx, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)));

// $Is axiom for trait SubTrait
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)) } 
  $Is($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     <==> $o == null
       || implements$TraitDefinitions.SubTrait(dtype($o), TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I));

// $IsAlloc axiom for trait SubTrait
axiom (forall TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    $o: ref, 
    $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$TraitDefinitions.SubTrait(ty: Ty, TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty) : bool;

procedure {:verboseName "TraitDefinitions.SubTrait.GetC (well-formedness)"} CheckWellFormed$$TraitDefinitions.SubTrait.GetC(TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
         && $IsAlloc(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
          $Heap))
   returns (c#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TraitDefinitions.SubTrait.GetC (call)"} Call$$TraitDefinitions.SubTrait.GetC(TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
         && $IsAlloc(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
          $Heap))
   returns (c#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id256"} c#0 >= LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TraitDefinitions.SubTrait.GetCTwicePlusD (well-formedness)"} CheckWellFormed$$TraitDefinitions.SubTrait.GetCTwicePlusD(TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
         && $IsAlloc(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
          $Heap))
   returns (c2#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TraitDefinitions.SubTrait.GetCTwicePlusD (call)"} Call$$TraitDefinitions.SubTrait.GetCTwicePlusD(TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
         && $IsAlloc(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
          $Heap))
   returns (c2#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TraitDefinitions.SubTrait.GetD (well-formedness)"} CheckWellFormed$$TraitDefinitions.SubTrait.GetD(TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
         && $IsAlloc(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
          $Heap))
   returns (d#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TraitDefinitions.SubTrait.GetD (call)"} Call$$TraitDefinitions.SubTrait.GetD(TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
         && $IsAlloc(this, 
          Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
          $Heap))
   returns (d#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for TraitDefinitions.SubTrait.GetDFunc
function TraitDefinitions.SubTrait.GetDFunc(TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, this: ref)
   : int;

function TraitDefinitions.SubTrait.GetDFunc#canCall(TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, this: ref)
   : bool;

function TraitDefinitions.SubTrait.GetDFunc#requires(Ty, Ty, ref) : bool;

// #requires axiom for TraitDefinitions.SubTrait.GetDFunc
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, this: ref :: 
  { TraitDefinitions.SubTrait.GetDFunc#requires(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I, this) } 
  this != null
       && $Is(this, 
        Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     ==> TraitDefinitions.SubTrait.GetDFunc#requires(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I, this)
       == true);

// $Is axiom for non-null type TraitDefinitions.SubTrait
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, c#0: ref :: 
  { $Is(c#0, 
      Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)) } 
    { $Is(c#0, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)) } 
  $Is(c#0, 
      Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     <==> $Is(c#0, 
        Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
       && c#0 != null);

// $IsAlloc axiom for non-null type TraitDefinitions.SubTrait
axiom (forall TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    c#0: ref, 
    $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TraitDefinitions.SubTrait(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $h));

// type axiom for trait parent: SuperTrait? extends NoMemberTrait?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitDefinitions.SuperTrait?()) } 
  $Is($o, Tclass.TraitDefinitions.SuperTrait?())
     ==> $Is($o, Tclass.TraitDefinitions.NoMemberTrait?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.SuperTrait?()) } 
  $IsBox(bx, Tclass.TraitDefinitions.SuperTrait?())
     ==> $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait?()));

// allocation axiom for trait parent: SuperTrait? extends NoMemberTrait?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitDefinitions.SuperTrait?(), $heap) } 
  $IsAlloc($o, Tclass.TraitDefinitions.SuperTrait?(), $heap)
     ==> $IsAlloc($o, Tclass.TraitDefinitions.NoMemberTrait?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitDefinitions.SuperTrait?(), $h) } 
  $IsAllocBox(bx, Tclass.TraitDefinitions.SuperTrait?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitDefinitions.NoMemberTrait?(), $h));

// type axiom for trait parent: SuperTrait? extends NoMemberTrait2?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TraitDefinitions.SuperTrait?()) } 
  $Is($o, Tclass.TraitDefinitions.SuperTrait?())
     ==> $Is($o, Tclass.TraitDefinitions.NoMemberTrait2?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TraitDefinitions.SuperTrait?()) } 
  $IsBox(bx, Tclass.TraitDefinitions.SuperTrait?())
     ==> $IsBox(bx, Tclass.TraitDefinitions.NoMemberTrait2?()));

// allocation axiom for trait parent: SuperTrait? extends NoMemberTrait2?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.TraitDefinitions.SuperTrait?(), $heap) } 
  $IsAlloc($o, Tclass.TraitDefinitions.SuperTrait?(), $heap)
     ==> $IsAlloc($o, Tclass.TraitDefinitions.NoMemberTrait2?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.TraitDefinitions.SuperTrait?(), $h) } 
  $IsAllocBox(bx, Tclass.TraitDefinitions.SuperTrait?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitDefinitions.NoMemberTrait2?(), $h));

// type axiom for trait parent: SubTrait? extends SuperTrait?
axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)) } 
  $Is($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     ==> $Is($o, Tclass.TraitDefinitions.SuperTrait?()));

axiom (forall TraitDefinitions.SubTrait$T: Ty, TraitDefinitions.SubTrait$I: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I)) } 
  $IsBox(bx, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I))
     ==> $IsBox(bx, Tclass.TraitDefinitions.SuperTrait?()));

// allocation axiom for trait parent: SubTrait? extends SuperTrait?
axiom (forall TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    $o: ref, 
    $heap: Heap :: 
  { $IsAlloc($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $heap) } 
  $IsAlloc($o, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $heap)
     ==> $IsAlloc($o, Tclass.TraitDefinitions.SuperTrait?(), $heap));

axiom (forall TraitDefinitions.SubTrait$T: Ty, 
    TraitDefinitions.SubTrait$I: Ty, 
    bx: Box, 
    $h: Heap :: 
  { $IsAllocBox(bx, 
      Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
      $h) } 
  $IsAllocBox(bx, 
        Tclass.TraitDefinitions.SubTrait?(TraitDefinitions.SubTrait$T, TraitDefinitions.SubTrait$I), 
        $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitDefinitions.SuperTrait?(), $h));

// type axiom for trait parent: Y? extends SubTrait?<int, I>
axiom (forall All.Y$I: Ty, $o: ref :: 
  { $Is($o, Tclass.All.Y?(All.Y$I)) } 
  $Is($o, Tclass.All.Y?(All.Y$I))
     ==> $Is($o, Tclass.TraitDefinitions.SubTrait?(TInt, All.Y$I)));

axiom (forall All.Y$I: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.All.Y?(All.Y$I)) } 
  $IsBox(bx, Tclass.All.Y?(All.Y$I))
     ==> $IsBox(bx, Tclass.TraitDefinitions.SubTrait?(TInt, All.Y$I)));

// allocation axiom for trait parent: Y? extends SubTrait?<int, I>
axiom (forall All.Y$I: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.All.Y?(All.Y$I), $heap) } 
  $IsAlloc($o, Tclass.All.Y?(All.Y$I), $heap)
     ==> $IsAlloc($o, Tclass.TraitDefinitions.SubTrait?(TInt, All.Y$I), $heap));

axiom (forall All.Y$I: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.All.Y?(All.Y$I), $h) } 
  $IsAllocBox(bx, Tclass.All.Y?(All.Y$I), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.TraitDefinitions.SubTrait?(TInt, All.Y$I), $h));

// type axiom for trait parent: ClassNoArgs? extends TraitNoArgs?
axiom (forall $o: ref :: 
  { $Is($o, Tclass.All.ClassNoArgs?()) } 
  $Is($o, Tclass.All.ClassNoArgs?()) ==> $Is($o, Tclass.All.TraitNoArgs?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.All.ClassNoArgs?()) } 
  $IsBox(bx, Tclass.All.ClassNoArgs?()) ==> $IsBox(bx, Tclass.All.TraitNoArgs?()));

// allocation axiom for trait parent: ClassNoArgs? extends TraitNoArgs?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass.All.ClassNoArgs?(), $heap) } 
  $IsAlloc($o, Tclass.All.ClassNoArgs?(), $heap)
     ==> $IsAlloc($o, Tclass.All.TraitNoArgs?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass.All.ClassNoArgs?(), $h) } 
  $IsAllocBox(bx, Tclass.All.ClassNoArgs?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass.All.TraitNoArgs?(), $h));

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

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$SubTrait: TyTagFamily;

const unique tytagFamily$Y: TyTagFamily;

const unique tytagFamily$ObjectContainer: TyTagFamily;

const unique tytagFamily$SuperTrait: TyTagFamily;

const unique tytagFamily$ClassNoArgs: TyTagFamily;

const unique tytagFamily$TraitNoArgs: TyTagFamily;

const unique tytagFamily$NoMemberTrait: TyTagFamily;

const unique tytagFamily$NoMemberTrait2: TyTagFamily;

const unique field$c: NameFamily;

const unique field$z: NameFamily;

const unique field$x: NameFamily;
