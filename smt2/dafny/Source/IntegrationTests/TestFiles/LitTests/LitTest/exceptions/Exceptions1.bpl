// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy

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

function Tclass._module.NatOutcome() : Ty
uses {
// Tclass._module.NatOutcome Tag
axiom Tag(Tclass._module.NatOutcome()) == Tagclass._module.NatOutcome
   && TagFamily(Tclass._module.NatOutcome()) == tytagFamily$NatOutcome;
}

const unique Tagclass._module.NatOutcome: TyTag;

// Box/unbox axiom for Tclass._module.NatOutcome
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatOutcome()) } 
  $IsBox(bx, Tclass._module.NatOutcome())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.NatOutcome()));

procedure {:verboseName "Switch (well-formedness)"} CheckWellFormed$$_module.__default.Switch(b#0: bool, v#0: int where LitInt(0) <= v#0)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Switch (call)"} Call$$_module.__default.Switch(b#0: bool, v#0: int where LitInt(0) <= v#0)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Switch (correctness)"} Impl$$_module.__default.Switch(b#0: bool, v#0: int where LitInt(0) <= v#0)
   returns (defass#res#0: bool, 
    res#0: ref
       where defass#res#0
         ==> $Is(res#0, Tclass._module.NatOutcome())
           && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Switch (correctness)"} Impl$$_module.__default.Switch(b#0: bool, v#0: int)
   returns (defass#res#0: bool, res#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0_0: ref;
  var n##0_0: int;
  var $rhs##1_0: ref;
  var msg##1_0: Seq;

    // AddMethodImpl: Switch, Impl$$_module.__default.Switch
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(6,5)
    assume true;
    if (b#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(7,30)
        assume true;
        // TrCallStmt: Adding lhs with type NatOutcome
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := v#0;
        call {:id "id0"} $rhs##0_0 := Call$$_module.__default.MakeNatSuccess(n##0_0);
        // TrCallStmt: After ProcessCallStmt
        res#0 := $rhs##0_0;
        defass#res#0 := true;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(9,30)
        assume true;
        // TrCallStmt: Adding lhs with type NatOutcome
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        msg##1_0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(97))), 
                      $Box(char#FromInt(100))), 
                    $Box(char#FromInt(32))), 
                  $Box(char#FromInt(108))), 
                $Box(char#FromInt(117))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(107))));
        call {:id "id2"} $rhs##1_0 := Call$$_module.__default.MakeNatFailure(msg##1_0);
        // TrCallStmt: After ProcessCallStmt
        res#0 := $rhs##1_0;
        defass#res#0 := true;
    }

    assert {:id "id4"} defass#res#0;
}



procedure {:verboseName "TestControlFlowCase_Nat (well-formedness)"} CheckWellFormed$$_module.__default.TestControlFlowCase__Nat(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestControlFlowCase_Nat (call)"} Call$$_module.__default.TestControlFlowCase__Nat(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestControlFlowCase_Nat (correctness)"} Impl$$_module.__default.TestControlFlowCase__Nat(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (defass#res#0: bool, 
    res#0: ref
       where defass#res#0
         ==> $Is(res#0, Tclass._module.NatOutcome())
           && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap), 
    $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NatOutcome?() : Ty
uses {
// Tclass._module.NatOutcome? Tag
axiom Tag(Tclass._module.NatOutcome?()) == Tagclass._module.NatOutcome?
   && TagFamily(Tclass._module.NatOutcome?()) == tytagFamily$NatOutcome;
}

const unique Tagclass._module.NatOutcome?: TyTag;

// Box/unbox axiom for Tclass._module.NatOutcome?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatOutcome?()) } 
  $IsBox(bx, Tclass._module.NatOutcome?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NatOutcome?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestControlFlowCase_Nat (correctness)"} Impl$$_module.__default.TestControlFlowCase__Nat(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (defass#res#0: bool, res#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n1#0: int where LitInt(0) <= n1#0;
  var defass#valueOrError0#0: bool;
  var valueOrError0#0: ref
     where defass#valueOrError0#0
       ==> $Is(valueOrError0#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##0: ref;
  var b##0: bool;
  var v##0: int;
  var n2#0: int where LitInt(0) <= n2#0;
  var defass#valueOrError1#0: bool;
  var valueOrError1#0: ref
     where defass#valueOrError1#0
       ==> $Is(valueOrError1#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError1#0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##1: ref;
  var b##1: bool;
  var v##1: int;
  var defass#valueOrError2#0: bool;
  var valueOrError2#0: ref
     where defass#valueOrError2#0
       ==> $Is(valueOrError2#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError2#0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##2: ref;
  var b##2: bool;
  var v##2: int;
  var $rhs##3: ref;
  var n##0: int;

    // AddMethodImpl: TestControlFlowCase_Nat, Impl$$_module.__default.TestControlFlowCase__Nat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(14,12)
    havoc valueOrError0#0 /* where defass#valueOrError0#0
       ==> $Is(valueOrError0#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(14,21)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := switch1#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id5"} $Is(LitInt(88), Tclass._System.nat());
    v##0 := LitInt(88);
    call {:id "id6"} $rhs##0 := Call$$_module.__default.Switch(b##0, v##0);
    // TrCallStmt: After ProcessCallStmt
    valueOrError0#0 := $rhs##0;
    defass#valueOrError0#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(14,12)
    assert {:id "id8"} defass#valueOrError0#0;
    assert {:id "id9"} valueOrError0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    if (_module.NatOutcome.IsFailure(valueOrError0#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(14,12)
        assume true;
        assert {:id "id10"} defass#valueOrError0#0;
        assert {:id "id11"} valueOrError0#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id12"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError0#0);
        assume _module.NatOutcome.IsFailure(valueOrError0#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError0#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError0#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError0#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(14,12)
        assert {:id "id14"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(14,12)
    assume true;
    assert {:id "id15"} defass#valueOrError0#0;
    assert {:id "id16"} valueOrError0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id17"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    n1#0 := _module.NatOutcome.Extract(valueOrError0#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(15,5)
    assume true;
    assume true;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(16,17)
    havoc valueOrError1#0 /* where defass#valueOrError1#0
       ==> $Is(valueOrError1#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError1#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(16,26)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := switch2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id19"} $Is(LitInt(42), Tclass._System.nat());
    v##1 := LitInt(42);
    call {:id "id20"} $rhs##1 := Call$$_module.__default.Switch(b##1, v##1);
    // TrCallStmt: After ProcessCallStmt
    valueOrError1#0 := $rhs##1;
    defass#valueOrError1#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(16,17)
    assert {:id "id22"} defass#valueOrError1#0;
    assert {:id "id23"} valueOrError1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError1#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError1#0);
    if (_module.NatOutcome.IsFailure(valueOrError1#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(16,17)
        assume true;
        assert {:id "id24"} defass#valueOrError1#0;
        assert {:id "id25"} valueOrError1#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id26"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError1#0);
        assume _module.NatOutcome.IsFailure(valueOrError1#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError1#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError1#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError1#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(16,17)
        assert {:id "id28"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(16,17)
    assume true;
    assert {:id "id29"} defass#valueOrError1#0;
    assert {:id "id30"} valueOrError1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id31"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError1#0);
    assume !_module.NatOutcome.IsFailure(valueOrError1#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError1#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError1#0);
    n2#0 := _module.NatOutcome.Extract(valueOrError1#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(17,5)
    assume true;
    assume true;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(18,8)
    havoc valueOrError2#0 /* where defass#valueOrError2#0
       ==> $Is(valueOrError2#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError2#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(18,17)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := switch3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id33"} $Is(LitInt(33), Tclass._System.nat());
    v##2 := LitInt(33);
    call {:id "id34"} $rhs##2 := Call$$_module.__default.Switch(b##2, v##2);
    // TrCallStmt: After ProcessCallStmt
    valueOrError2#0 := $rhs##2;
    defass#valueOrError2#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(18,5)
    assert {:id "id36"} defass#valueOrError2#0;
    assert {:id "id37"} valueOrError2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError2#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError2#0);
    if (_module.NatOutcome.IsFailure(valueOrError2#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(18,8)
        assume true;
        assert {:id "id38"} defass#valueOrError2#0;
        assert {:id "id39"} valueOrError2#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id40"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError2#0);
        assume _module.NatOutcome.IsFailure(valueOrError2#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError2#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError2#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError2#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(18,5)
        assert {:id "id42"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(18,8)
    assume true;
    assert {:id "id43"} defass#valueOrError2#0;
    assert {:id "id44"} valueOrError2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id45"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError2#0);
    assume !_module.NatOutcome.IsFailure(valueOrError2#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError2#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError2#0);
    n1#0 := _module.NatOutcome.Extract(valueOrError2#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(19,5)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(20,26)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id47"} $Is(LitInt(100), Tclass._System.nat());
    n##0 := LitInt(100);
    call {:id "id48"} $rhs##3 := Call$$_module.__default.MakeNatSuccess(n##0);
    // TrCallStmt: After ProcessCallStmt
    res#0 := $rhs##3;
    defass#res#0 := true;
    assert {:id "id50"} defass#res#0;
}



function Tclass._module.VoidOutcome() : Ty
uses {
// Tclass._module.VoidOutcome Tag
axiom Tag(Tclass._module.VoidOutcome()) == Tagclass._module.VoidOutcome
   && TagFamily(Tclass._module.VoidOutcome()) == tytagFamily$VoidOutcome;
}

const unique Tagclass._module.VoidOutcome: TyTag;

// Box/unbox axiom for Tclass._module.VoidOutcome
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidOutcome()) } 
  $IsBox(bx, Tclass._module.VoidOutcome())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.VoidOutcome()));

procedure {:verboseName "FailIf (well-formedness)"} CheckWellFormed$$_module.__default.FailIf(b#0: bool)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailIf (call)"} Call$$_module.__default.FailIf(b#0: bool)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailIf (correctness)"} Impl$$_module.__default.FailIf(b#0: bool)
   returns (defass#res#0: bool, 
    res#0: ref
       where defass#res#0
         ==> $Is(res#0, Tclass._module.VoidOutcome())
           && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap), 
    $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailIf (correctness)"} Impl$$_module.__default.FailIf(b#0: bool) returns (defass#res#0: bool, res#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0_0: ref;
  var $rhs##1_0: ref;
  var msg##1_0: Seq;

    // AddMethodImpl: FailIf, Impl$$_module.__default.FailIf
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(24,5)
    assume true;
    if (b#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(25,31)
        assume true;
        // TrCallStmt: Adding lhs with type VoidOutcome
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id51"} $rhs##0_0 := Call$$_module.__default.MakeVoidSuccess();
        // TrCallStmt: After ProcessCallStmt
        res#0 := $rhs##0_0;
        defass#res#0 := true;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(27,31)
        assume true;
        // TrCallStmt: Adding lhs with type VoidOutcome
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        msg##1_0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(111))), 
                                $Box(char#FromInt(105))), 
                              $Box(char#FromInt(100))), 
                            $Box(char#FromInt(32))), 
                          $Box(char#FromInt(98))), 
                        $Box(char#FromInt(97))), 
                      $Box(char#FromInt(100))), 
                    $Box(char#FromInt(32))), 
                  $Box(char#FromInt(108))), 
                $Box(char#FromInt(117))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(107))));
        call {:id "id53"} $rhs##1_0 := Call$$_module.__default.MakeVoidFailure(msg##1_0);
        // TrCallStmt: After ProcessCallStmt
        res#0 := $rhs##1_0;
        defass#res#0 := true;
    }

    assert {:id "id55"} defass#res#0;
}



procedure {:verboseName "TestControlFlowCase_Void (well-formedness)"} CheckWellFormed$$_module.__default.TestControlFlowCase__Void(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestControlFlowCase_Void (call)"} Call$$_module.__default.TestControlFlowCase__Void(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestControlFlowCase_Void (correctness)"} Impl$$_module.__default.TestControlFlowCase__Void(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (defass#res#0: bool, 
    res#0: ref
       where defass#res#0
         ==> $Is(res#0, Tclass._module.VoidOutcome())
           && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap), 
    $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.VoidOutcome?() : Ty
uses {
// Tclass._module.VoidOutcome? Tag
axiom Tag(Tclass._module.VoidOutcome?()) == Tagclass._module.VoidOutcome?
   && TagFamily(Tclass._module.VoidOutcome?()) == tytagFamily$VoidOutcome;
}

const unique Tagclass._module.VoidOutcome?: TyTag;

// Box/unbox axiom for Tclass._module.VoidOutcome?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidOutcome?()) } 
  $IsBox(bx, Tclass._module.VoidOutcome?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.VoidOutcome?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestControlFlowCase_Void (correctness)"} Impl$$_module.__default.TestControlFlowCase__Void(switch1#0: bool, switch2#0: bool, switch3#0: bool)
   returns (defass#res#0: bool, res#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#valueOrError0#0: bool;
  var valueOrError0#0: ref
     where defass#valueOrError0#0
       ==> $Is(valueOrError0#0, Tclass._module.VoidOutcome())
         && $IsAlloc(valueOrError0#0, Tclass._module.VoidOutcome(), $Heap);
  var $rhs##0: ref;
  var b##0: bool;
  var defass#valueOrError1#0: bool;
  var valueOrError1#0: ref
     where defass#valueOrError1#0
       ==> $Is(valueOrError1#0, Tclass._module.VoidOutcome())
         && $IsAlloc(valueOrError1#0, Tclass._module.VoidOutcome(), $Heap);
  var $rhs##1: ref;
  var b##1: bool;
  var defass#valueOrError2#0: bool;
  var valueOrError2#0: ref
     where defass#valueOrError2#0
       ==> $Is(valueOrError2#0, Tclass._module.VoidOutcome())
         && $IsAlloc(valueOrError2#0, Tclass._module.VoidOutcome(), $Heap);
  var $rhs##2: ref;
  var b##2: bool;
  var $rhs##3: ref;

    // AddMethodImpl: TestControlFlowCase_Void, Impl$$_module.__default.TestControlFlowCase__Void
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(32,5)
    havoc valueOrError0#0 /* where defass#valueOrError0#0
       ==> $Is(valueOrError0#0, Tclass._module.VoidOutcome())
         && $IsAlloc(valueOrError0#0, Tclass._module.VoidOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(32,14)
    assume true;
    // TrCallStmt: Adding lhs with type VoidOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := switch1#0;
    call {:id "id56"} $rhs##0 := Call$$_module.__default.FailIf(b##0);
    // TrCallStmt: After ProcessCallStmt
    valueOrError0#0 := $rhs##0;
    defass#valueOrError0#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(32,5)
    assert {:id "id58"} defass#valueOrError0#0;
    assert {:id "id59"} valueOrError0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.VoidOutcome?(), $Heap);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError0#0);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError0#0);
    if (_module.VoidOutcome.IsFailure(valueOrError0#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(32,5)
        assume true;
        assert {:id "id60"} defass#valueOrError0#0;
        assert {:id "id61"} valueOrError0#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.VoidOutcome?(), $Heap);
        assert {:id "id62"} {:subsumption 0} _module.VoidOutcome.IsFailure(valueOrError0#0);
        assume _module.VoidOutcome.IsFailure(valueOrError0#0);
        assume _module.VoidOutcome.PropagateFailure#canCall(valueOrError0#0);
        assume _module.VoidOutcome.PropagateFailure#canCall(valueOrError0#0);
        res#0 := _module.VoidOutcome.PropagateFailure(valueOrError0#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(32,5)
        assert {:id "id64"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(33,5)
    assume true;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(34,5)
    havoc valueOrError1#0 /* where defass#valueOrError1#0
       ==> $Is(valueOrError1#0, Tclass._module.VoidOutcome())
         && $IsAlloc(valueOrError1#0, Tclass._module.VoidOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(34,14)
    assume true;
    // TrCallStmt: Adding lhs with type VoidOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := switch2#0;
    call {:id "id65"} $rhs##1 := Call$$_module.__default.FailIf(b##1);
    // TrCallStmt: After ProcessCallStmt
    valueOrError1#0 := $rhs##1;
    defass#valueOrError1#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(34,5)
    assert {:id "id67"} defass#valueOrError1#0;
    assert {:id "id68"} valueOrError1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.VoidOutcome?(), $Heap);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError1#0);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError1#0);
    if (_module.VoidOutcome.IsFailure(valueOrError1#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(34,5)
        assume true;
        assert {:id "id69"} defass#valueOrError1#0;
        assert {:id "id70"} valueOrError1#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.VoidOutcome?(), $Heap);
        assert {:id "id71"} {:subsumption 0} _module.VoidOutcome.IsFailure(valueOrError1#0);
        assume _module.VoidOutcome.IsFailure(valueOrError1#0);
        assume _module.VoidOutcome.PropagateFailure#canCall(valueOrError1#0);
        assume _module.VoidOutcome.PropagateFailure#canCall(valueOrError1#0);
        res#0 := _module.VoidOutcome.PropagateFailure(valueOrError1#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(34,5)
        assert {:id "id73"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(35,5)
    assume true;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(36,5)
    havoc valueOrError2#0 /* where defass#valueOrError2#0
       ==> $Is(valueOrError2#0, Tclass._module.VoidOutcome())
         && $IsAlloc(valueOrError2#0, Tclass._module.VoidOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(36,14)
    assume true;
    // TrCallStmt: Adding lhs with type VoidOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##2 := switch3#0;
    call {:id "id74"} $rhs##2 := Call$$_module.__default.FailIf(b##2);
    // TrCallStmt: After ProcessCallStmt
    valueOrError2#0 := $rhs##2;
    defass#valueOrError2#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(36,5)
    assert {:id "id76"} defass#valueOrError2#0;
    assert {:id "id77"} valueOrError2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.VoidOutcome?(), $Heap);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError2#0);
    assume _module.VoidOutcome.IsFailure#canCall(valueOrError2#0);
    if (_module.VoidOutcome.IsFailure(valueOrError2#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(36,5)
        assume true;
        assert {:id "id78"} defass#valueOrError2#0;
        assert {:id "id79"} valueOrError2#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.VoidOutcome?(), $Heap);
        assert {:id "id80"} {:subsumption 0} _module.VoidOutcome.IsFailure(valueOrError2#0);
        assume _module.VoidOutcome.IsFailure(valueOrError2#0);
        assume _module.VoidOutcome.PropagateFailure#canCall(valueOrError2#0);
        assume _module.VoidOutcome.PropagateFailure#canCall(valueOrError2#0);
        res#0 := _module.VoidOutcome.PropagateFailure(valueOrError2#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(36,5)
        assert {:id "id82"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(37,5)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(38,27)
    assume true;
    // TrCallStmt: Adding lhs with type VoidOutcome
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id83"} $rhs##3 := Call$$_module.__default.MakeVoidSuccess();
    // TrCallStmt: After ProcessCallStmt
    res#0 := $rhs##3;
    defass#res#0 := true;
    assert {:id "id85"} defass#res#0;
}



procedure {:verboseName "TestControlFlow (well-formedness)"} CheckWellFormed$$_module.__default.TestControlFlow();
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestControlFlow (call)"} Call$$_module.__default.TestControlFlow();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestControlFlow (correctness)"} Impl$$_module.__default.TestControlFlow() returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestControlFlow (correctness)"} Impl$$_module.__default.TestControlFlow() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int where LitInt(0) <= i#0;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var switch1#0_0: bool;
  var switch2#0_0: bool;
  var switch3#0_0: bool;
  var $rhs#0_0: bool;
  var $rhs#0_1: bool;
  var $rhs#0_2: bool;
  var defass#materialized1#0_0: bool;
  var materialized1#0_0: ref
     where defass#materialized1#0_0
       ==> $Is(materialized1#0_0, Tclass._module.NatOutcome())
         && $IsAlloc(materialized1#0_0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##0_0: ref;
  var switch1##0_0: bool;
  var switch2##0_0: bool;
  var switch3##0_0: bool;
  var defass#materialized2#0_0: bool;
  var materialized2#0_0: ref
     where defass#materialized2#0_0
       ==> $Is(materialized2#0_0, Tclass._module.VoidOutcome())
         && $IsAlloc(materialized2#0_0, Tclass._module.VoidOutcome(), $Heap);
  var $rhs##0_1: ref;
  var switch1##0_1: bool;
  var switch2##0_1: bool;
  var switch3##0_1: bool;

    // AddMethodImpl: TestControlFlow, Impl$$_module.__default.TestControlFlow
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(42,16)
    assume true;
    assert {:id "id86"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(43,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 8 - i#0;
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
      free invariant 8 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (8 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 8 - i#0;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(44,39)
        assume true;
        assume true;
        assume true;
        assert {:id "id88"} LitInt(4) != 0;
        assert {:id "id89"} LitInt(2) != 0;
        assume true;
        $rhs#0_0 := Mod(Div(i#0, LitInt(4)), LitInt(2)) == LitInt(0);
        assert {:id "id91"} LitInt(2) != 0;
        assert {:id "id92"} LitInt(2) != 0;
        assume true;
        $rhs#0_1 := Mod(Div(i#0, LitInt(2)), LitInt(2)) == LitInt(0);
        assert {:id "id94"} LitInt(2) != 0;
        assume true;
        $rhs#0_2 := Mod(i#0, LitInt(2)) == LitInt(0);
        switch1#0_0 := $rhs#0_0;
        switch2#0_0 := $rhs#0_1;
        switch3#0_0 := $rhs#0_2;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(45,9)
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(47,65)
        assume true;
        // TrCallStmt: Adding lhs with type NatOutcome
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        switch1##0_0 := switch1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        switch2##0_0 := switch2#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        switch3##0_0 := switch3#0_0;
        call {:id "id99"} $rhs##0_0 := Call$$_module.__default.TestControlFlowCase__Nat(switch1##0_0, switch2##0_0, switch3##0_0);
        // TrCallStmt: After ProcessCallStmt
        materialized1#0_0 := $rhs##0_0;
        defass#materialized1#0_0 := true;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(48,9)
        assert {:id "id101"} defass#materialized1#0_0;
        assert {:id "id102"} materialized1#0_0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(materialized1#0_0), Tclass._module.NatOutcome?(), $Heap);
        assume _module.NatOutcome.IsFailure#canCall(materialized1#0_0);
        assume _module.NatOutcome.IsFailure#canCall(materialized1#0_0);
        if (_module.NatOutcome.IsFailure(materialized1#0_0))
        {
            push;
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(49,13)
            assume true;
            pop;
        }
        else
        {
            push;
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(51,13)
            assume true;
            assert {:id "id103"} defass#materialized1#0_0;
            assert {:id "id104"} {:subsumption 0} materialized1#0_0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(materialized1#0_0), Tclass._module.NatOutcome?(), $Heap);
            assert {:id "id105"} {:subsumption 0} !_module.NatOutcome.IsFailure(materialized1#0_0);
            assume _module.NatOutcome.Extract#canCall(materialized1#0_0);
            assume _module.NatOutcome.Extract#canCall(materialized1#0_0);
            assume true;
            pop;
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(54,67)
        assume true;
        // TrCallStmt: Adding lhs with type VoidOutcome
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        switch1##0_1 := switch1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        switch2##0_1 := switch2#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        switch3##0_1 := switch3#0_0;
        call {:id "id106"} $rhs##0_1 := Call$$_module.__default.TestControlFlowCase__Void(switch1##0_1, switch2##0_1, switch3##0_1);
        // TrCallStmt: After ProcessCallStmt
        materialized2#0_0 := $rhs##0_1;
        defass#materialized2#0_0 := true;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(55,9)
        assert {:id "id108"} defass#materialized2#0_0;
        assert {:id "id109"} materialized2#0_0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(materialized2#0_0), Tclass._module.VoidOutcome?(), $Heap);
        assume _module.VoidOutcome.IsFailure#canCall(materialized2#0_0);
        assume _module.VoidOutcome.IsFailure#canCall(materialized2#0_0);
        if (_module.VoidOutcome.IsFailure(materialized2#0_0))
        {
            push;
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(56,13)
            assume true;
            pop;
        }
        else
        {
            push;
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(58,13)
            assume true;
            pop;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(61,11)
        assume true;
        assert {:id "id110"} $Is(i#0 + 1, Tclass._System.nat());
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(43,5)
        assert {:id "id112"} 0 <= $decr$loop#00 || 8 - i#0 == $decr$loop#00;
        assert {:id "id113"} 8 - i#0 < $decr$loop#00;
    }
}



procedure {:verboseName "TestStatementParsing (well-formedness)"} CheckWellFormed$$_module.__default.TestStatementParsing(b#0: bool, 
    n#0: int where LitInt(0) <= n#0, 
    o1#0: ref
       where $Is(o1#0, Tclass._module.NatOutcome())
         && $IsAlloc(o1#0, Tclass._module.NatOutcome(), $Heap), 
    o2#0: ref
       where $Is(o2#0, Tclass._module.NatOutcome())
         && $IsAlloc(o2#0, Tclass._module.NatOutcome(), $Heap))
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestStatementParsing (call)"} Call$$_module.__default.TestStatementParsing(b#0: bool, 
    n#0: int where LitInt(0) <= n#0, 
    o1#0: ref
       where $Is(o1#0, Tclass._module.NatOutcome())
         && $IsAlloc(o1#0, Tclass._module.NatOutcome(), $Heap), 
    o2#0: ref
       where $Is(o2#0, Tclass._module.NatOutcome())
         && $IsAlloc(o2#0, Tclass._module.NatOutcome(), $Heap))
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestStatementParsing (correctness)"} Impl$$_module.__default.TestStatementParsing(b#0: bool, 
    n#0: int where LitInt(0) <= n#0, 
    o1#0: ref
       where $Is(o1#0, Tclass._module.NatOutcome())
         && $IsAlloc(o1#0, Tclass._module.NatOutcome(), $Heap), 
    o2#0: ref
       where $Is(o2#0, Tclass._module.NatOutcome())
         && $IsAlloc(o2#0, Tclass._module.NatOutcome(), $Heap))
   returns (defass#res#0: bool, 
    res#0: ref
       where defass#res#0
         ==> $Is(res#0, Tclass._module.NatOutcome())
           && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap), 
    $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestStatementParsing (correctness)"} Impl$$_module.__default.TestStatementParsing(b#0: bool, n#0: int, o1#0: ref, o2#0: ref)
   returns (defass#res#0: bool, res#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var expr1#0: int where LitInt(0) <= expr1#0;
  var valueOrError0#0: ref
     where $Is(valueOrError0#0, Tclass._module.NatOutcome?())
       && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome?(), $Heap);
  var x#Z#0: ref;
  var let#0#0#0: ref;
  var use_expr1#0: int where LitInt(0) <= use_expr1#0;
  var stmt1#0: int where LitInt(0) <= stmt1#0;
  var defass#valueOrError1#0: bool;
  var valueOrError1#0: ref
     where defass#valueOrError1#0
       ==> $Is(valueOrError1#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError1#0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##0: ref;
  var n##0: int;
  var defass#valueOrError2#0: bool;
  var valueOrError2#0: ref
     where defass#valueOrError2#0
       ==> $Is(valueOrError2#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError2#0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##1: ref;
  var msg##0: Seq;
  var use_stmt1#0: int where LitInt(0) <= use_stmt1#0;
  var expr2#0: int where LitInt(0) <= expr2#0;
  var valueOrError3#0: ref
     where $Is(valueOrError3#0, Tclass._module.NatOutcome?())
       && $IsAlloc(valueOrError3#0, Tclass._module.NatOutcome?(), $Heap);
  var x#Z#1: ref;
  var let#1#0#0: ref;
  var use_expr2#0: int where LitInt(0) <= use_expr2#0;
  var stmt2#0: int where LitInt(0) <= stmt2#0;
  var defass#valueOrError4#0: bool;
  var valueOrError4#0: ref
     where defass#valueOrError4#0
       ==> $Is(valueOrError4#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError4#0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##2: ref;
  var n##1: int;
  var defass#valueOrError5#0: bool;
  var valueOrError5#0: ref
     where defass#valueOrError5#0
       ==> $Is(valueOrError5#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError5#0, Tclass._module.NatOutcome(), $Heap);
  var $rhs##3: ref;
  var msg##1: Seq;
  var use_stmt2#0: int where LitInt(0) <= use_stmt2#0;

    // AddMethodImpl: TestStatementParsing, Impl$$_module.__default.TestStatementParsing
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(68,20)
    havoc valueOrError0#0 /* where $Is(valueOrError0#0, Tclass._module.NatOutcome?())
       && $IsAlloc(valueOrError0#0, Tclass._module.NatOutcome?(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(68,23)
    assume true;
    havoc x#Z#0;
    if (b#0)
    {
        assume {:id "id114"} let#0#0#0 == o1#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.NatOutcome?());
    }
    else
    {
        assume {:id "id115"} let#0#0#0 == o2#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.NatOutcome?());
    }

    assume {:id "id116"} x#Z#0 == let#0#0#0;
    assume true;
    valueOrError0#0 := (var x#0 := (if b#0 then o1#0 else o2#0); x#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(68,20)
    assert {:id "id118"} valueOrError0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError0#0);
    if (_module.NatOutcome.IsFailure(valueOrError0#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(68,20)
        assume true;
        assert {:id "id119"} valueOrError0#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id120"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError0#0);
        assume _module.NatOutcome.IsFailure(valueOrError0#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError0#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError0#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError0#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(68,20)
        assert {:id "id122"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(68,20)
    assume true;
    assert {:id "id123"} valueOrError0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError0#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id124"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume !_module.NatOutcome.IsFailure(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError0#0);
    expr1#0 := _module.NatOutcome.Extract(valueOrError0#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(69,24)
    assume true;
    assume true;
    use_expr1#0 := expr1#0;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(71,20)
    havoc valueOrError1#0 /* where defass#valueOrError1#0
       ==> $Is(valueOrError1#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError1#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(71,37)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    call {:id "id127"} $rhs##0 := Call$$_module.__default.MakeNatSuccess(n##0);
    // TrCallStmt: After ProcessCallStmt
    valueOrError1#0 := $rhs##0;
    defass#valueOrError1#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(71,20)
    assert {:id "id129"} defass#valueOrError1#0;
    assert {:id "id130"} valueOrError1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError1#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError1#0);
    if (_module.NatOutcome.IsFailure(valueOrError1#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(71,20)
        assume true;
        assert {:id "id131"} defass#valueOrError1#0;
        assert {:id "id132"} valueOrError1#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id133"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError1#0);
        assume _module.NatOutcome.IsFailure(valueOrError1#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError1#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError1#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError1#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(71,20)
        assert {:id "id135"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(71,20)
    assume true;
    assert {:id "id136"} defass#valueOrError1#0;
    assert {:id "id137"} valueOrError1#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError1#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id138"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError1#0);
    assume !_module.NatOutcome.IsFailure(valueOrError1#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError1#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError1#0);
    stmt1#0 := _module.NatOutcome.Extract(valueOrError1#0);
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(72,11)
    havoc valueOrError2#0 /* where defass#valueOrError2#0
       ==> $Is(valueOrError2#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError2#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(72,28)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(111))), 
                                $Box(char#FromInt(114))), 
                              $Box(char#FromInt(114))), 
                            $Box(char#FromInt(121))), 
                          $Box(char#FromInt(44))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(98))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(100))), 
                $Box(char#FromInt(32))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(117))), 
          $Box(char#FromInt(99))), 
        $Box(char#FromInt(107))));
    call {:id "id140"} $rhs##1 := Call$$_module.__default.MakeNatFailure(msg##0);
    // TrCallStmt: After ProcessCallStmt
    valueOrError2#0 := $rhs##1;
    defass#valueOrError2#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(72,5)
    assert {:id "id142"} defass#valueOrError2#0;
    assert {:id "id143"} valueOrError2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError2#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError2#0);
    if (_module.NatOutcome.IsFailure(valueOrError2#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(72,11)
        assume true;
        assert {:id "id144"} defass#valueOrError2#0;
        assert {:id "id145"} valueOrError2#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id146"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError2#0);
        assume _module.NatOutcome.IsFailure(valueOrError2#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError2#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError2#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError2#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(72,5)
        assert {:id "id148"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(72,11)
    assume true;
    assert {:id "id149"} defass#valueOrError2#0;
    assert {:id "id150"} valueOrError2#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError2#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id151"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError2#0);
    assume !_module.NatOutcome.IsFailure(valueOrError2#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError2#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError2#0);
    stmt1#0 := _module.NatOutcome.Extract(valueOrError2#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(73,24)
    assume true;
    assume true;
    use_stmt1#0 := stmt1#0;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(75,15)
    havoc valueOrError3#0 /* where $Is(valueOrError3#0, Tclass._module.NatOutcome?())
       && $IsAlloc(valueOrError3#0, Tclass._module.NatOutcome?(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(75,18)
    assume true;
    havoc x#Z#1;
    if (b#0)
    {
        assume {:id "id154"} let#1#0#0 == o1#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, Tclass._module.NatOutcome?());
    }
    else
    {
        assume {:id "id155"} let#1#0#0 == o2#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, Tclass._module.NatOutcome?());
    }

    assume {:id "id156"} x#Z#1 == let#1#0#0;
    assume true;
    valueOrError3#0 := (var x#1 := (if b#0 then o1#0 else o2#0); x#1);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(75,15)
    assert {:id "id158"} valueOrError3#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError3#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError3#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError3#0);
    if (_module.NatOutcome.IsFailure(valueOrError3#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(75,15)
        assume true;
        assert {:id "id159"} valueOrError3#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError3#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id160"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError3#0);
        assume _module.NatOutcome.IsFailure(valueOrError3#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError3#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError3#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError3#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(75,15)
        assert {:id "id162"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(75,15)
    assume true;
    assert {:id "id163"} valueOrError3#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError3#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id164"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError3#0);
    assume !_module.NatOutcome.IsFailure(valueOrError3#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError3#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError3#0);
    expr2#0 := _module.NatOutcome.Extract(valueOrError3#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(76,24)
    assume true;
    assume true;
    use_expr2#0 := expr2#0;
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(78,15)
    havoc valueOrError4#0 /* where defass#valueOrError4#0
       ==> $Is(valueOrError4#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError4#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(78,32)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := n#0;
    call {:id "id167"} $rhs##2 := Call$$_module.__default.MakeNatSuccess(n##1);
    // TrCallStmt: After ProcessCallStmt
    valueOrError4#0 := $rhs##2;
    defass#valueOrError4#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(78,15)
    assert {:id "id169"} defass#valueOrError4#0;
    assert {:id "id170"} valueOrError4#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError4#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError4#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError4#0);
    if (_module.NatOutcome.IsFailure(valueOrError4#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(78,15)
        assume true;
        assert {:id "id171"} defass#valueOrError4#0;
        assert {:id "id172"} valueOrError4#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError4#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id173"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError4#0);
        assume _module.NatOutcome.IsFailure(valueOrError4#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError4#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError4#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError4#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(78,15)
        assert {:id "id175"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(78,15)
    assume true;
    assert {:id "id176"} defass#valueOrError4#0;
    assert {:id "id177"} valueOrError4#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError4#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id178"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError4#0);
    assume !_module.NatOutcome.IsFailure(valueOrError4#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError4#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError4#0);
    stmt2#0 := _module.NatOutcome.Extract(valueOrError4#0);
    // ----- assign-or-return statement (:-) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(79,11)
    havoc valueOrError5#0 /* where defass#valueOrError5#0
       ==> $Is(valueOrError5#0, Tclass._module.NatOutcome())
         && $IsAlloc(valueOrError5#0, Tclass._module.NatOutcome(), $Heap) */;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(79,28)
    assume true;
    // TrCallStmt: Adding lhs with type NatOutcome
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    msg##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(111))), 
                                $Box(char#FromInt(114))), 
                              $Box(char#FromInt(114))), 
                            $Box(char#FromInt(121))), 
                          $Box(char#FromInt(44))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(98))), 
                    $Box(char#FromInt(97))), 
                  $Box(char#FromInt(100))), 
                $Box(char#FromInt(32))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(117))), 
          $Box(char#FromInt(99))), 
        $Box(char#FromInt(107))));
    call {:id "id180"} $rhs##3 := Call$$_module.__default.MakeNatFailure(msg##1);
    // TrCallStmt: After ProcessCallStmt
    valueOrError5#0 := $rhs##3;
    defass#valueOrError5#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(79,5)
    assert {:id "id182"} defass#valueOrError5#0;
    assert {:id "id183"} valueOrError5#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError5#0), Tclass._module.NatOutcome?(), $Heap);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError5#0);
    assume _module.NatOutcome.IsFailure#canCall(valueOrError5#0);
    if (_module.NatOutcome.IsFailure(valueOrError5#0))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(79,11)
        assume true;
        assert {:id "id184"} defass#valueOrError5#0;
        assert {:id "id185"} valueOrError5#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError5#0), Tclass._module.NatOutcome?(), $Heap);
        assert {:id "id186"} {:subsumption 0} _module.NatOutcome.IsFailure(valueOrError5#0);
        assume _module.NatOutcome.IsFailure(valueOrError5#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError5#0);
        assume _module.NatOutcome.PropagateFailure#canCall(valueOrError5#0);
        res#0 := _module.NatOutcome.PropagateFailure(valueOrError5#0);
        defass#res#0 := true;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(79,5)
        assert {:id "id188"} defass#res#0;
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(79,11)
    assume true;
    assert {:id "id189"} defass#valueOrError5#0;
    assert {:id "id190"} valueOrError5#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(valueOrError5#0), Tclass._module.NatOutcome?(), $Heap);
    assert {:id "id191"} {:subsumption 0} !_module.NatOutcome.IsFailure(valueOrError5#0);
    assume !_module.NatOutcome.IsFailure(valueOrError5#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError5#0);
    assume _module.NatOutcome.Extract#canCall(valueOrError5#0);
    stmt2#0 := _module.NatOutcome.Extract(valueOrError5#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(80,24)
    assume true;
    assume true;
    use_stmt2#0 := stmt2#0;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(82,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(82,5)
    assume true;
    assume true;
    res#0 := o1#0;
    defass#res#0 := true;
    assert {:id "id195"} defass#res#0;
    return;

    assert {:id "id196"} defass#res#0;
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 6 == $FunctionContextHeight;
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
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/exceptions/Exceptions1.dfy(86,20)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id197"} Call$$_module.__default.TestControlFlow();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "MakeVoidSuccess (well-formedness)"} CheckWellFormed$$_module.__default.MakeVoidSuccess()
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MakeVoidSuccess (call)"} Call$$_module.__default.MakeVoidSuccess()
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MakeVoidFailure (well-formedness)"} CheckWellFormed$$_module.__default.MakeVoidFailure(msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap))
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MakeVoidFailure (call)"} Call$$_module.__default.MakeVoidFailure(msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap))
   returns (res#0: ref
       where $Is(res#0, Tclass._module.VoidOutcome())
         && $IsAlloc(res#0, Tclass._module.VoidOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module._default.Unreachable
function _module.__default.Unreachable(_module._default.Unreachable$R: Ty) : Box;

function _module.__default.Unreachable#canCall(_module._default.Unreachable$R: Ty) : bool;

// consequence axiom for _module.__default.Unreachable
axiom (forall _module._default.Unreachable$R: Ty :: 
  { _module.__default.Unreachable(_module._default.Unreachable$R) } 
  _module.__default.Unreachable#canCall(_module._default.Unreachable$R)
       || Lit(false)
     ==> $IsBox(_module.__default.Unreachable(_module._default.Unreachable$R), 
      _module._default.Unreachable$R));

// alloc consequence axiom for _module.__default.Unreachable
axiom (forall $Heap: Heap, _module._default.Unreachable$R: Ty :: 
  { $IsAllocBox(_module.__default.Unreachable(_module._default.Unreachable$R), 
      _module._default.Unreachable$R, 
      $Heap) } 
  (_module.__default.Unreachable#canCall(_module._default.Unreachable$R)
         || Lit(false))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(_module.__default.Unreachable(_module._default.Unreachable$R), 
      _module._default.Unreachable$R, 
      $Heap));

function _module.__default.Unreachable#requires(Ty) : bool;

// #requires axiom for _module.__default.Unreachable
axiom (forall _module._default.Unreachable$R: Ty :: 
  { _module.__default.Unreachable#requires(_module._default.Unreachable$R) } 
  _module.__default.Unreachable#requires(_module._default.Unreachable$R)
     == Lit(false));

// definition axiom for _module.__default.Unreachable (revealed)
axiom {:id "id198"} (forall _module._default.Unreachable$R: Ty :: 
  { _module.__default.Unreachable(_module._default.Unreachable$R) } 
  _module.__default.Unreachable#canCall(_module._default.Unreachable$R)
       || Lit(false)
     ==> _module.__default.Unreachable(_module._default.Unreachable$R)
       == (var o#0 := Lit(#_module.Option.None()); Lit(_module.Option.get(o#0))));

// definition axiom for _module.__default.Unreachable for all literals (revealed)
axiom {:id "id199"} (forall _module._default.Unreachable$R: Ty :: 
  {:weight 3} { _module.__default.Unreachable(_module._default.Unreachable$R) } 
  _module.__default.Unreachable#canCall(_module._default.Unreachable$R)
       || Lit(false)
     ==> _module.__default.Unreachable(_module._default.Unreachable$R)
       == (var o#1 := Lit(#_module.Option.None()); Lit(_module.Option.get(o#1))));

procedure {:verboseName "MakeNatSuccess (well-formedness)"} CheckWellFormed$$_module.__default.MakeNatSuccess(n#0: int where LitInt(0) <= n#0)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MakeNatSuccess (call)"} Call$$_module.__default.MakeNatSuccess(n#0: int where LitInt(0) <= n#0)
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MakeNatFailure (well-formedness)"} CheckWellFormed$$_module.__default.MakeNatFailure(msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap))
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MakeNatFailure (call)"} Call$$_module.__default.MakeNatFailure(msg#0: Seq where $Is(msg#0, TSeq(TChar)) && $IsAlloc(msg#0, TSeq(TChar), $Heap))
   returns (res#0: ref
       where $Is(res#0, Tclass._module.NatOutcome())
         && $IsAlloc(res#0, Tclass._module.NatOutcome(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class._module.VoidOutcome?: ClassName;

// $Is axiom for trait VoidOutcome
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.VoidOutcome?()) } 
  $Is($o, Tclass._module.VoidOutcome?())
     <==> $o == null || implements$_module.VoidOutcome(dtype($o)));

// $IsAlloc axiom for trait VoidOutcome
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.VoidOutcome?(), $h) } 
  $IsAlloc($o, Tclass._module.VoidOutcome?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.VoidOutcome(ty: Ty) : bool;

// function declaration for _module.VoidOutcome.IsFailure
function _module.VoidOutcome.IsFailure(this: ref) : bool;

function _module.VoidOutcome.IsFailure#canCall(this: ref) : bool;

function _module.VoidOutcome.IsFailure#requires(ref) : bool;

// #requires axiom for _module.VoidOutcome.IsFailure
axiom (forall this: ref :: 
  { _module.VoidOutcome.IsFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.VoidOutcome())
     ==> _module.VoidOutcome.IsFailure#requires(this) == true);

// function declaration for _module.VoidOutcome.PropagateFailure
function _module.VoidOutcome.PropagateFailure(this: ref) : ref;

function _module.VoidOutcome.PropagateFailure#canCall(this: ref) : bool;

// consequence axiom for _module.VoidOutcome.PropagateFailure
axiom (forall this: ref :: 
  { _module.VoidOutcome.PropagateFailure(this) } 
  _module.VoidOutcome.PropagateFailure#canCall(this)
       || (2 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass._module.VoidOutcome())
         && _module.VoidOutcome.IsFailure(this))
     ==> $Is(_module.VoidOutcome.PropagateFailure(this), Tclass._module.VoidOutcome()));

// alloc consequence axiom for _module.VoidOutcome.PropagateFailure
axiom (forall $Heap: Heap, this: ref :: 
  { $IsAlloc(_module.VoidOutcome.PropagateFailure(this), Tclass._module.VoidOutcome(), $Heap) } 
  (_module.VoidOutcome.PropagateFailure#canCall(this)
         || (2 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass._module.VoidOutcome(), $Heap)
           && _module.VoidOutcome.IsFailure(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(_module.VoidOutcome.PropagateFailure(this), Tclass._module.VoidOutcome(), $Heap));

function _module.VoidOutcome.PropagateFailure#requires(ref) : bool;

// #requires axiom for _module.VoidOutcome.PropagateFailure
axiom (forall this: ref :: 
  { _module.VoidOutcome.PropagateFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.VoidOutcome())
     ==> _module.VoidOutcome.PropagateFailure#requires(this)
       == _module.VoidOutcome.IsFailure(this));

// $Is axiom for non-null type _module.VoidOutcome
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.VoidOutcome()) } 
    { $Is(c#0, Tclass._module.VoidOutcome?()) } 
  $Is(c#0, Tclass._module.VoidOutcome())
     <==> $Is(c#0, Tclass._module.VoidOutcome?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.VoidOutcome
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.VoidOutcome(), $h) } 
    { $IsAlloc(c#0, Tclass._module.VoidOutcome?(), $h) } 
  $IsAlloc(c#0, Tclass._module.VoidOutcome(), $h)
     <==> $IsAlloc(c#0, Tclass._module.VoidOutcome?(), $h));

const unique class._module.VoidSuccess?: ClassName;

function Tclass._module.VoidSuccess?() : Ty
uses {
// Tclass._module.VoidSuccess? Tag
axiom Tag(Tclass._module.VoidSuccess?()) == Tagclass._module.VoidSuccess?
   && TagFamily(Tclass._module.VoidSuccess?()) == tytagFamily$VoidSuccess;
axiom implements$_module.VoidOutcome(Tclass._module.VoidSuccess?());
}

const unique Tagclass._module.VoidSuccess?: TyTag;

// Box/unbox axiom for Tclass._module.VoidSuccess?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidSuccess?()) } 
  $IsBox(bx, Tclass._module.VoidSuccess?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.VoidSuccess?()));

// $Is axiom for class VoidSuccess
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.VoidSuccess?()) } 
  $Is($o, Tclass._module.VoidSuccess?())
     <==> $o == null || dtype($o) == Tclass._module.VoidSuccess?());

// $IsAlloc axiom for class VoidSuccess
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.VoidSuccess?(), $h) } 
  $IsAlloc($o, Tclass._module.VoidSuccess?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.VoidSuccess.IsFailure
function _module.VoidSuccess.IsFailure(this: ref) : bool;

function _module.VoidSuccess.IsFailure#canCall(this: ref) : bool;

function Tclass._module.VoidSuccess() : Ty
uses {
// Tclass._module.VoidSuccess Tag
axiom Tag(Tclass._module.VoidSuccess()) == Tagclass._module.VoidSuccess
   && TagFamily(Tclass._module.VoidSuccess()) == tytagFamily$VoidSuccess;
}

const unique Tagclass._module.VoidSuccess: TyTag;

// Box/unbox axiom for Tclass._module.VoidSuccess
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidSuccess()) } 
  $IsBox(bx, Tclass._module.VoidSuccess())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.VoidSuccess()));

function _module.VoidSuccess.IsFailure#requires(ref) : bool;

// #requires axiom for _module.VoidSuccess.IsFailure
axiom (forall this: ref :: 
  { _module.VoidSuccess.IsFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.VoidSuccess())
     ==> _module.VoidSuccess.IsFailure#requires(this) == true);

// definition axiom for _module.VoidSuccess.IsFailure (revealed)
axiom {:id "id200"} (forall this: ref :: 
  { _module.VoidSuccess.IsFailure(this) } 
  _module.VoidSuccess.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.VoidSuccess()))
     ==> _module.VoidSuccess.IsFailure(this) == Lit(false));

// definition axiom for _module.VoidSuccess.IsFailure for all literals (revealed)
axiom {:id "id201"} (forall this: ref :: 
  {:weight 3} { _module.VoidSuccess.IsFailure(Lit(this)) } 
  _module.VoidSuccess.IsFailure#canCall(Lit(this))
       || (this != null && $Is(this, Tclass._module.VoidSuccess()))
     ==> _module.VoidSuccess.IsFailure(Lit(this)) == Lit(false));

// override axiom for _module.VoidOutcome.IsFailure in class _module.VoidSuccess
axiom (forall this: ref :: 
  { _module.VoidOutcome.IsFailure(this), $Is(this, Tclass._module.VoidSuccess()) } 
    { _module.VoidOutcome.IsFailure(this), _module.VoidSuccess.IsFailure(this) } 
  _module.VoidSuccess.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.VoidSuccess()))
     ==> _module.VoidOutcome.IsFailure(this) == _module.VoidSuccess.IsFailure(this));

// function declaration for _module.VoidSuccess.PropagateFailure
function _module.VoidSuccess.PropagateFailure(this: ref) : ref;

function _module.VoidSuccess.PropagateFailure#canCall(this: ref) : bool;

// consequence axiom for _module.VoidSuccess.PropagateFailure
axiom (forall this: ref :: 
  { _module.VoidSuccess.PropagateFailure(this) } 
  _module.VoidSuccess.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.VoidSuccess())
         && _module.VoidSuccess.IsFailure(this))
     ==> $Is(_module.VoidSuccess.PropagateFailure(this), Tclass._module.VoidOutcome()));

// alloc consequence axiom for _module.VoidSuccess.PropagateFailure
axiom (forall $Heap: Heap, this: ref :: 
  { $IsAlloc(_module.VoidSuccess.PropagateFailure(this), Tclass._module.VoidOutcome(), $Heap) } 
  (_module.VoidSuccess.PropagateFailure#canCall(this)
         || (
          this != null
           && $IsAlloc(this, Tclass._module.VoidSuccess(), $Heap)
           && _module.VoidSuccess.IsFailure(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(_module.VoidSuccess.PropagateFailure(this), Tclass._module.VoidOutcome(), $Heap));

function _module.VoidSuccess.PropagateFailure#requires(ref) : bool;

// #requires axiom for _module.VoidSuccess.PropagateFailure
axiom (forall this: ref :: 
  { _module.VoidSuccess.PropagateFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.VoidSuccess())
     ==> _module.VoidSuccess.PropagateFailure#requires(this)
       == _module.VoidSuccess.IsFailure(this));

// definition axiom for _module.VoidSuccess.PropagateFailure (revealed)
axiom {:id "id202"} (forall this: ref :: 
  { _module.VoidSuccess.PropagateFailure(this) } 
  _module.VoidSuccess.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.VoidSuccess())
         && _module.VoidSuccess.IsFailure(this))
     ==> _module.VoidSuccess.PropagateFailure(this) == this);

// definition axiom for _module.VoidSuccess.PropagateFailure for all literals (revealed)
axiom {:id "id203"} (forall this: ref :: 
  {:weight 3} { _module.VoidSuccess.PropagateFailure(Lit(this)) } 
  _module.VoidSuccess.PropagateFailure#canCall(Lit(this))
       || (
        this != null
         && $Is(this, Tclass._module.VoidSuccess())
         && Lit(_module.VoidSuccess.IsFailure(Lit(this))))
     ==> _module.VoidSuccess.PropagateFailure(Lit(this)) == Lit(this));

// override axiom for _module.VoidOutcome.PropagateFailure in class _module.VoidSuccess
axiom (forall this: ref :: 
  { _module.VoidOutcome.PropagateFailure(this), $Is(this, Tclass._module.VoidSuccess()) } 
    { _module.VoidOutcome.PropagateFailure(this), _module.VoidSuccess.PropagateFailure(this) } 
  _module.VoidSuccess.PropagateFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.VoidSuccess()))
     ==> _module.VoidOutcome.PropagateFailure(this)
       == _module.VoidSuccess.PropagateFailure(this));

// $Is axiom for non-null type _module.VoidSuccess
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.VoidSuccess()) } 
    { $Is(c#0, Tclass._module.VoidSuccess?()) } 
  $Is(c#0, Tclass._module.VoidSuccess())
     <==> $Is(c#0, Tclass._module.VoidSuccess?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.VoidSuccess
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.VoidSuccess(), $h) } 
    { $IsAlloc(c#0, Tclass._module.VoidSuccess?(), $h) } 
  $IsAlloc(c#0, Tclass._module.VoidSuccess(), $h)
     <==> $IsAlloc(c#0, Tclass._module.VoidSuccess?(), $h));

const unique class._module.VoidFailure?: ClassName;

function Tclass._module.VoidFailure?() : Ty
uses {
// Tclass._module.VoidFailure? Tag
axiom Tag(Tclass._module.VoidFailure?()) == Tagclass._module.VoidFailure?
   && TagFamily(Tclass._module.VoidFailure?()) == tytagFamily$VoidFailure;
axiom implements$_module.VoidOutcome(Tclass._module.VoidFailure?());
}

const unique Tagclass._module.VoidFailure?: TyTag;

// Box/unbox axiom for Tclass._module.VoidFailure?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidFailure?()) } 
  $IsBox(bx, Tclass._module.VoidFailure?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.VoidFailure?()));

// $Is axiom for class VoidFailure
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.VoidFailure?()) } 
  $Is($o, Tclass._module.VoidFailure?())
     <==> $o == null || dtype($o) == Tclass._module.VoidFailure?());

// $IsAlloc axiom for class VoidFailure
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.VoidFailure?(), $h) } 
  $IsAlloc($o, Tclass._module.VoidFailure?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.VoidFailure.error(this: ref) : Seq;

// VoidFailure.error: Type axiom
axiom (forall $o: ref :: 
  { _module.VoidFailure.error($o) } 
  $o != null && dtype($o) == Tclass._module.VoidFailure?()
     ==> $Is(_module.VoidFailure.error($o), TSeq(TChar)));

// VoidFailure.error: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.VoidFailure.error($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.VoidFailure?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.VoidFailure.error($o), TSeq(TChar), $h));

// function declaration for _module.VoidFailure.IsFailure
function _module.VoidFailure.IsFailure(this: ref) : bool;

function _module.VoidFailure.IsFailure#canCall(this: ref) : bool;

function Tclass._module.VoidFailure() : Ty
uses {
// Tclass._module.VoidFailure Tag
axiom Tag(Tclass._module.VoidFailure()) == Tagclass._module.VoidFailure
   && TagFamily(Tclass._module.VoidFailure()) == tytagFamily$VoidFailure;
}

const unique Tagclass._module.VoidFailure: TyTag;

// Box/unbox axiom for Tclass._module.VoidFailure
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidFailure()) } 
  $IsBox(bx, Tclass._module.VoidFailure())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.VoidFailure()));

function _module.VoidFailure.IsFailure#requires(ref) : bool;

// #requires axiom for _module.VoidFailure.IsFailure
axiom (forall this: ref :: 
  { _module.VoidFailure.IsFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.VoidFailure())
     ==> _module.VoidFailure.IsFailure#requires(this) == true);

// definition axiom for _module.VoidFailure.IsFailure (revealed)
axiom {:id "id204"} (forall this: ref :: 
  { _module.VoidFailure.IsFailure(this) } 
  _module.VoidFailure.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.VoidFailure()))
     ==> _module.VoidFailure.IsFailure(this) == Lit(true));

// definition axiom for _module.VoidFailure.IsFailure for all literals (revealed)
axiom {:id "id205"} (forall this: ref :: 
  {:weight 3} { _module.VoidFailure.IsFailure(Lit(this)) } 
  _module.VoidFailure.IsFailure#canCall(Lit(this))
       || (this != null && $Is(this, Tclass._module.VoidFailure()))
     ==> _module.VoidFailure.IsFailure(Lit(this)) == Lit(true));

// override axiom for _module.VoidOutcome.IsFailure in class _module.VoidFailure
axiom (forall this: ref :: 
  { _module.VoidOutcome.IsFailure(this), $Is(this, Tclass._module.VoidFailure()) } 
    { _module.VoidOutcome.IsFailure(this), _module.VoidFailure.IsFailure(this) } 
  _module.VoidFailure.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.VoidFailure()))
     ==> _module.VoidOutcome.IsFailure(this) == _module.VoidFailure.IsFailure(this));

// function declaration for _module.VoidFailure.PropagateFailure
function _module.VoidFailure.PropagateFailure(this: ref) : ref;

function _module.VoidFailure.PropagateFailure#canCall(this: ref) : bool;

// consequence axiom for _module.VoidFailure.PropagateFailure
axiom (forall this: ref :: 
  { _module.VoidFailure.PropagateFailure(this) } 
  _module.VoidFailure.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.VoidFailure())
         && _module.VoidFailure.IsFailure(this))
     ==> $Is(_module.VoidFailure.PropagateFailure(this), Tclass._module.VoidOutcome()));

// alloc consequence axiom for _module.VoidFailure.PropagateFailure
axiom (forall $Heap: Heap, this: ref :: 
  { $IsAlloc(_module.VoidFailure.PropagateFailure(this), Tclass._module.VoidOutcome(), $Heap) } 
  (_module.VoidFailure.PropagateFailure#canCall(this)
         || (
          this != null
           && $IsAlloc(this, Tclass._module.VoidFailure(), $Heap)
           && _module.VoidFailure.IsFailure(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(_module.VoidFailure.PropagateFailure(this), Tclass._module.VoidOutcome(), $Heap));

function _module.VoidFailure.PropagateFailure#requires(ref) : bool;

// #requires axiom for _module.VoidFailure.PropagateFailure
axiom (forall this: ref :: 
  { _module.VoidFailure.PropagateFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.VoidFailure())
     ==> _module.VoidFailure.PropagateFailure#requires(this)
       == _module.VoidFailure.IsFailure(this));

// definition axiom for _module.VoidFailure.PropagateFailure (revealed)
axiom {:id "id206"} (forall this: ref :: 
  { _module.VoidFailure.PropagateFailure(this) } 
  _module.VoidFailure.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.VoidFailure())
         && _module.VoidFailure.IsFailure(this))
     ==> _module.VoidFailure.PropagateFailure(this) == this);

// definition axiom for _module.VoidFailure.PropagateFailure for all literals (revealed)
axiom {:id "id207"} (forall this: ref :: 
  {:weight 3} { _module.VoidFailure.PropagateFailure(Lit(this)) } 
  _module.VoidFailure.PropagateFailure#canCall(Lit(this))
       || (
        this != null
         && $Is(this, Tclass._module.VoidFailure())
         && Lit(_module.VoidFailure.IsFailure(Lit(this))))
     ==> _module.VoidFailure.PropagateFailure(Lit(this)) == Lit(this));

// override axiom for _module.VoidOutcome.PropagateFailure in class _module.VoidFailure
axiom (forall this: ref :: 
  { _module.VoidOutcome.PropagateFailure(this), $Is(this, Tclass._module.VoidFailure()) } 
    { _module.VoidOutcome.PropagateFailure(this), _module.VoidFailure.PropagateFailure(this) } 
  _module.VoidFailure.PropagateFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.VoidFailure()))
     ==> _module.VoidOutcome.PropagateFailure(this)
       == _module.VoidFailure.PropagateFailure(this));

// $Is axiom for non-null type _module.VoidFailure
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.VoidFailure()) } 
    { $Is(c#0, Tclass._module.VoidFailure?()) } 
  $Is(c#0, Tclass._module.VoidFailure())
     <==> $Is(c#0, Tclass._module.VoidFailure?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.VoidFailure
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.VoidFailure(), $h) } 
    { $IsAlloc(c#0, Tclass._module.VoidFailure?(), $h) } 
  $IsAlloc(c#0, Tclass._module.VoidFailure(), $h)
     <==> $IsAlloc(c#0, Tclass._module.VoidFailure?(), $h));

// Constructor function declaration
function #_module.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
// Constructor literal
axiom #_module.Option.None() == Lit(#_module.Option.None());
}

const unique ##_module.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
}

function _module.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) <==> DatatypeCtorId(d) == ##_module.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) ==> d == #_module.Option.None());

function Tclass._module.Option(Ty) : Ty;

const unique Tagclass._module.Option: TyTag;

// Tclass._module.Option Tag
axiom (forall _module.Option$T: Ty :: 
  { Tclass._module.Option(_module.Option$T) } 
  Tag(Tclass._module.Option(_module.Option$T)) == Tagclass._module.Option
     && TagFamily(Tclass._module.Option(_module.Option$T)) == tytagFamily$Option);

function Tclass._module.Option_0(Ty) : Ty;

// Tclass._module.Option injectivity 0
axiom (forall _module.Option$T: Ty :: 
  { Tclass._module.Option(_module.Option$T) } 
  Tclass._module.Option_0(Tclass._module.Option(_module.Option$T))
     == _module.Option$T);

// Box/unbox axiom for Tclass._module.Option
axiom (forall _module.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Option(_module.Option$T)) } 
  $IsBox(bx, Tclass._module.Option(_module.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Option(_module.Option$T)));

// Constructor $Is
axiom (forall _module.Option$T: Ty :: 
  { $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$T)) } 
  $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$T)));

// Constructor $IsAlloc
axiom (forall _module.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$T), $h));

// Constructor function declaration
function #_module.Option.Some(Box) : DatatypeType;

const unique ##_module.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #_module.Option.Some(a#4#0#0) } 
  DatatypeCtorId(#_module.Option.Some(a#4#0#0)) == ##_module.Option.Some);
}

function _module.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d) <==> DatatypeCtorId(d) == ##_module.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d)
     ==> (exists a#5#0#0: Box :: d == #_module.Option.Some(a#5#0#0)));

// Constructor $Is
axiom (forall _module.Option$T: Ty, a#6#0#0: Box :: 
  { $Is(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T)) } 
  $Is(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T))
     <==> $IsBox(a#6#0#0, _module.Option$T));

// Constructor $IsAlloc
axiom (forall _module.Option$T: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T), $h)
       <==> $IsAllocBox(a#6#0#0, _module.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Option.get(d), _module.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Option.Some_q(d)
       && $IsAlloc(d, Tclass._module.Option(_module.Option$T), $h)
     ==> $IsAllocBox(_module.Option.get(d), _module.Option$T, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #_module.Option.Some(Lit(a#7#0#0)) } 
  #_module.Option.Some(Lit(a#7#0#0)) == Lit(#_module.Option.Some(a#7#0#0)));

function _module.Option.get(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #_module.Option.Some(a#8#0#0) } 
  _module.Option.get(#_module.Option.Some(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #_module.Option.Some(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.Option.Some(a#9#0#0)));

// Depth-one case-split function
function $IsA#_module.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Option(d) } 
  $IsA#_module.Option(d) ==> _module.Option.None_q(d) || _module.Option.Some_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Option$T: Ty, d: DatatypeType :: 
  { _module.Option.Some_q(d), $Is(d, Tclass._module.Option(_module.Option$T)) } 
    { _module.Option.None_q(d), $Is(d, Tclass._module.Option(_module.Option$T)) } 
  $Is(d, Tclass._module.Option(_module.Option$T))
     ==> _module.Option.None_q(d) || _module.Option.Some_q(d));

// Datatype extensional equality declaration
function _module.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.None_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.None_q(b) } 
  _module.Option.None_q(a) && _module.Option.None_q(b)
     ==> _module.Option#Equal(a, b));

// Datatype extensional equality definition: #_module.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.Some_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.Some_q(b) } 
  _module.Option.Some_q(a) && _module.Option.Some_q(b)
     ==> (_module.Option#Equal(a, b) <==> _module.Option.get(a) == _module.Option.get(b)));

// Datatype extensionality axiom: _module.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b) } 
  _module.Option#Equal(a, b) <==> a == b);

const unique class._module.Option: ClassName;

const unique class._module.NatOutcome?: ClassName;

// $Is axiom for trait NatOutcome
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NatOutcome?()) } 
  $Is($o, Tclass._module.NatOutcome?())
     <==> $o == null || implements$_module.NatOutcome(dtype($o)));

// $IsAlloc axiom for trait NatOutcome
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NatOutcome?(), $h) } 
  $IsAlloc($o, Tclass._module.NatOutcome?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.NatOutcome(ty: Ty) : bool;

// function declaration for _module.NatOutcome.IsFailure
function _module.NatOutcome.IsFailure(this: ref) : bool;

function _module.NatOutcome.IsFailure#canCall(this: ref) : bool;

function _module.NatOutcome.IsFailure#requires(ref) : bool;

// #requires axiom for _module.NatOutcome.IsFailure
axiom (forall this: ref :: 
  { _module.NatOutcome.IsFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.IsFailure#requires(this) == true);

// function declaration for _module.NatOutcome.PropagateFailure
function _module.NatOutcome.PropagateFailure(this: ref) : ref;

function _module.NatOutcome.PropagateFailure#canCall(this: ref) : bool;

// consequence axiom for _module.NatOutcome.PropagateFailure
axiom (forall this: ref :: 
  { _module.NatOutcome.PropagateFailure(this) } 
  _module.NatOutcome.PropagateFailure#canCall(this)
       || (3 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass._module.NatOutcome())
         && _module.NatOutcome.IsFailure(this))
     ==> $Is(_module.NatOutcome.PropagateFailure(this), Tclass._module.NatOutcome()));

// alloc consequence axiom for _module.NatOutcome.PropagateFailure
axiom (forall $Heap: Heap, this: ref :: 
  { $IsAlloc(_module.NatOutcome.PropagateFailure(this), Tclass._module.NatOutcome(), $Heap) } 
  (_module.NatOutcome.PropagateFailure#canCall(this)
         || (3 < $FunctionContextHeight
           && 
          this != null
           && $IsAlloc(this, Tclass._module.NatOutcome(), $Heap)
           && _module.NatOutcome.IsFailure(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(_module.NatOutcome.PropagateFailure(this), Tclass._module.NatOutcome(), $Heap));

function _module.NatOutcome.PropagateFailure#requires(ref) : bool;

// #requires axiom for _module.NatOutcome.PropagateFailure
axiom (forall this: ref :: 
  { _module.NatOutcome.PropagateFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.PropagateFailure#requires(this)
       == _module.NatOutcome.IsFailure(this));

// function declaration for _module.NatOutcome.Extract
function _module.NatOutcome.Extract(this: ref) : int;

function _module.NatOutcome.Extract#canCall(this: ref) : bool;

// consequence axiom for _module.NatOutcome.Extract
axiom (forall this: ref :: 
  { _module.NatOutcome.Extract(this) } 
  _module.NatOutcome.Extract#canCall(this)
       || (3 < $FunctionContextHeight
         && 
        this != null
         && $Is(this, Tclass._module.NatOutcome())
         && !_module.NatOutcome.IsFailure(this))
     ==> LitInt(0) <= _module.NatOutcome.Extract(this));

function _module.NatOutcome.Extract#requires(ref) : bool;

// #requires axiom for _module.NatOutcome.Extract
axiom (forall this: ref :: 
  { _module.NatOutcome.Extract#requires(this) } 
  this != null && $Is(this, Tclass._module.NatOutcome())
     ==> _module.NatOutcome.Extract#requires(this) == !_module.NatOutcome.IsFailure(this));

// $Is axiom for non-null type _module.NatOutcome
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NatOutcome()) } 
    { $Is(c#0, Tclass._module.NatOutcome?()) } 
  $Is(c#0, Tclass._module.NatOutcome())
     <==> $Is(c#0, Tclass._module.NatOutcome?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NatOutcome
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NatOutcome(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NatOutcome?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NatOutcome(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NatOutcome?(), $h));

const unique class._module.NatSuccess?: ClassName;

function Tclass._module.NatSuccess?() : Ty
uses {
// Tclass._module.NatSuccess? Tag
axiom Tag(Tclass._module.NatSuccess?()) == Tagclass._module.NatSuccess?
   && TagFamily(Tclass._module.NatSuccess?()) == tytagFamily$NatSuccess;
axiom implements$_module.NatOutcome(Tclass._module.NatSuccess?());
}

const unique Tagclass._module.NatSuccess?: TyTag;

// Box/unbox axiom for Tclass._module.NatSuccess?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatSuccess?()) } 
  $IsBox(bx, Tclass._module.NatSuccess?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NatSuccess?()));

// $Is axiom for class NatSuccess
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NatSuccess?()) } 
  $Is($o, Tclass._module.NatSuccess?())
     <==> $o == null || dtype($o) == Tclass._module.NatSuccess?());

// $IsAlloc axiom for class NatSuccess
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NatSuccess?(), $h) } 
  $IsAlloc($o, Tclass._module.NatSuccess?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.NatSuccess.value(this: ref) : int;

// NatSuccess.value: Type axiom
axiom (forall $o: ref :: 
  { _module.NatSuccess.value($o) } 
  $o != null && dtype($o) == Tclass._module.NatSuccess?()
     ==> $Is(_module.NatSuccess.value($o), Tclass._System.nat()));

// NatSuccess.value: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.NatSuccess.value($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NatSuccess?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.NatSuccess.value($o), Tclass._System.nat(), $h));

// function declaration for _module.NatSuccess.IsFailure
function _module.NatSuccess.IsFailure(this: ref) : bool;

function _module.NatSuccess.IsFailure#canCall(this: ref) : bool;

function Tclass._module.NatSuccess() : Ty
uses {
// Tclass._module.NatSuccess Tag
axiom Tag(Tclass._module.NatSuccess()) == Tagclass._module.NatSuccess
   && TagFamily(Tclass._module.NatSuccess()) == tytagFamily$NatSuccess;
}

const unique Tagclass._module.NatSuccess: TyTag;

// Box/unbox axiom for Tclass._module.NatSuccess
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatSuccess()) } 
  $IsBox(bx, Tclass._module.NatSuccess())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.NatSuccess()));

function _module.NatSuccess.IsFailure#requires(ref) : bool;

// #requires axiom for _module.NatSuccess.IsFailure
axiom (forall this: ref :: 
  { _module.NatSuccess.IsFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.NatSuccess())
     ==> _module.NatSuccess.IsFailure#requires(this) == true);

// definition axiom for _module.NatSuccess.IsFailure (revealed)
axiom {:id "id208"} (forall this: ref :: 
  { _module.NatSuccess.IsFailure(this) } 
  _module.NatSuccess.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatSuccess()))
     ==> _module.NatSuccess.IsFailure(this) == Lit(false));

// definition axiom for _module.NatSuccess.IsFailure for all literals (revealed)
axiom {:id "id209"} (forall this: ref :: 
  {:weight 3} { _module.NatSuccess.IsFailure(Lit(this)) } 
  _module.NatSuccess.IsFailure#canCall(Lit(this))
       || (this != null && $Is(this, Tclass._module.NatSuccess()))
     ==> _module.NatSuccess.IsFailure(Lit(this)) == Lit(false));

// override axiom for _module.NatOutcome.IsFailure in class _module.NatSuccess
axiom (forall this: ref :: 
  { _module.NatOutcome.IsFailure(this), $Is(this, Tclass._module.NatSuccess()) } 
    { _module.NatOutcome.IsFailure(this), _module.NatSuccess.IsFailure(this) } 
  _module.NatSuccess.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatSuccess()))
     ==> _module.NatOutcome.IsFailure(this) == _module.NatSuccess.IsFailure(this));

// function declaration for _module.NatSuccess.PropagateFailure
function _module.NatSuccess.PropagateFailure(this: ref) : ref;

function _module.NatSuccess.PropagateFailure#canCall(this: ref) : bool;

// consequence axiom for _module.NatSuccess.PropagateFailure
axiom (forall this: ref :: 
  { _module.NatSuccess.PropagateFailure(this) } 
  _module.NatSuccess.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatSuccess())
         && _module.NatSuccess.IsFailure(this))
     ==> $Is(_module.NatSuccess.PropagateFailure(this), Tclass._module.NatOutcome()));

// alloc consequence axiom for _module.NatSuccess.PropagateFailure
axiom (forall $Heap: Heap, this: ref :: 
  { $IsAlloc(_module.NatSuccess.PropagateFailure(this), Tclass._module.NatOutcome(), $Heap) } 
  (_module.NatSuccess.PropagateFailure#canCall(this)
         || (
          this != null
           && $IsAlloc(this, Tclass._module.NatSuccess(), $Heap)
           && _module.NatSuccess.IsFailure(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(_module.NatSuccess.PropagateFailure(this), Tclass._module.NatOutcome(), $Heap));

function _module.NatSuccess.PropagateFailure#requires(ref) : bool;

// #requires axiom for _module.NatSuccess.PropagateFailure
axiom (forall this: ref :: 
  { _module.NatSuccess.PropagateFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.NatSuccess())
     ==> _module.NatSuccess.PropagateFailure#requires(this)
       == _module.NatSuccess.IsFailure(this));

// definition axiom for _module.NatSuccess.PropagateFailure (revealed)
axiom {:id "id210"} (forall this: ref :: 
  { _module.NatSuccess.PropagateFailure(this) } 
  _module.NatSuccess.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatSuccess())
         && _module.NatSuccess.IsFailure(this))
     ==> _module.__default.Unreachable#canCall(Tclass._module.NatOutcome())
       && _module.NatSuccess.PropagateFailure(this)
         == Lit($Unbox(_module.__default.Unreachable(Tclass._module.NatOutcome())): ref));

// definition axiom for _module.NatSuccess.PropagateFailure for all literals (revealed)
axiom {:id "id211"} (forall this: ref :: 
  {:weight 3} { _module.NatSuccess.PropagateFailure(Lit(this)) } 
  _module.NatSuccess.PropagateFailure#canCall(Lit(this))
       || (
        this != null
         && $Is(this, Tclass._module.NatSuccess())
         && Lit(_module.NatSuccess.IsFailure(Lit(this))))
     ==> _module.__default.Unreachable#canCall(Tclass._module.NatOutcome())
       && _module.NatSuccess.PropagateFailure(Lit(this))
         == Lit($Unbox(_module.__default.Unreachable(Tclass._module.NatOutcome())): ref));

// override axiom for _module.NatOutcome.PropagateFailure in class _module.NatSuccess
axiom (forall this: ref :: 
  { _module.NatOutcome.PropagateFailure(this), $Is(this, Tclass._module.NatSuccess()) } 
    { _module.NatOutcome.PropagateFailure(this), _module.NatSuccess.PropagateFailure(this) } 
  _module.NatSuccess.PropagateFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatSuccess()))
     ==> _module.NatOutcome.PropagateFailure(this)
       == _module.NatSuccess.PropagateFailure(this));

// function declaration for _module.NatSuccess.Extract
function _module.NatSuccess.Extract(this: ref) : int;

function _module.NatSuccess.Extract#canCall(this: ref) : bool;

// consequence axiom for _module.NatSuccess.Extract
axiom (forall this: ref :: 
  { _module.NatSuccess.Extract(this) } 
  _module.NatSuccess.Extract#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatSuccess())
         && !_module.NatSuccess.IsFailure(this))
     ==> LitInt(0) <= _module.NatSuccess.Extract(this));

function _module.NatSuccess.Extract#requires(ref) : bool;

// #requires axiom for _module.NatSuccess.Extract
axiom (forall this: ref :: 
  { _module.NatSuccess.Extract#requires(this) } 
  this != null && $Is(this, Tclass._module.NatSuccess())
     ==> _module.NatSuccess.Extract#requires(this) == !_module.NatSuccess.IsFailure(this));

// definition axiom for _module.NatSuccess.Extract (revealed)
axiom {:id "id212"} (forall this: ref :: 
  { _module.NatSuccess.Extract(this) } 
  _module.NatSuccess.Extract#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatSuccess())
         && !_module.NatSuccess.IsFailure(this))
     ==> _module.NatSuccess.Extract(this) == _module.NatSuccess.value(this));

// definition axiom for _module.NatSuccess.Extract for all literals (revealed)
axiom {:id "id213"} (forall this: ref :: 
  {:weight 3} { _module.NatSuccess.Extract(Lit(this)) } 
  _module.NatSuccess.Extract#canCall(Lit(this))
       || (
        this != null
         && $Is(this, Tclass._module.NatSuccess())
         && !Lit(_module.NatSuccess.IsFailure(Lit(this))))
     ==> _module.NatSuccess.Extract(Lit(this)) == _module.NatSuccess.value(Lit(this)));

// override axiom for _module.NatOutcome.Extract in class _module.NatSuccess
axiom (forall this: ref :: 
  { _module.NatOutcome.Extract(this), $Is(this, Tclass._module.NatSuccess()) } 
    { _module.NatOutcome.Extract(this), _module.NatSuccess.Extract(this) } 
  _module.NatSuccess.Extract#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatSuccess()))
     ==> _module.NatOutcome.Extract(this) == _module.NatSuccess.Extract(this));

// $Is axiom for non-null type _module.NatSuccess
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NatSuccess()) } 
    { $Is(c#0, Tclass._module.NatSuccess?()) } 
  $Is(c#0, Tclass._module.NatSuccess())
     <==> $Is(c#0, Tclass._module.NatSuccess?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NatSuccess
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NatSuccess(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NatSuccess?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NatSuccess(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NatSuccess?(), $h));

const unique class._module.NatFailure?: ClassName;

function Tclass._module.NatFailure?() : Ty
uses {
// Tclass._module.NatFailure? Tag
axiom Tag(Tclass._module.NatFailure?()) == Tagclass._module.NatFailure?
   && TagFamily(Tclass._module.NatFailure?()) == tytagFamily$NatFailure;
axiom implements$_module.NatOutcome(Tclass._module.NatFailure?());
}

const unique Tagclass._module.NatFailure?: TyTag;

// Box/unbox axiom for Tclass._module.NatFailure?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatFailure?()) } 
  $IsBox(bx, Tclass._module.NatFailure?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NatFailure?()));

// $Is axiom for class NatFailure
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NatFailure?()) } 
  $Is($o, Tclass._module.NatFailure?())
     <==> $o == null || dtype($o) == Tclass._module.NatFailure?());

// $IsAlloc axiom for class NatFailure
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NatFailure?(), $h) } 
  $IsAlloc($o, Tclass._module.NatFailure?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.NatFailure.error(this: ref) : Seq;

// NatFailure.error: Type axiom
axiom (forall $o: ref :: 
  { _module.NatFailure.error($o) } 
  $o != null && dtype($o) == Tclass._module.NatFailure?()
     ==> $Is(_module.NatFailure.error($o), TSeq(TChar)));

// NatFailure.error: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.NatFailure.error($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NatFailure?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.NatFailure.error($o), TSeq(TChar), $h));

// function declaration for _module.NatFailure.IsFailure
function _module.NatFailure.IsFailure(this: ref) : bool;

function _module.NatFailure.IsFailure#canCall(this: ref) : bool;

function Tclass._module.NatFailure() : Ty
uses {
// Tclass._module.NatFailure Tag
axiom Tag(Tclass._module.NatFailure()) == Tagclass._module.NatFailure
   && TagFamily(Tclass._module.NatFailure()) == tytagFamily$NatFailure;
}

const unique Tagclass._module.NatFailure: TyTag;

// Box/unbox axiom for Tclass._module.NatFailure
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatFailure()) } 
  $IsBox(bx, Tclass._module.NatFailure())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.NatFailure()));

function _module.NatFailure.IsFailure#requires(ref) : bool;

// #requires axiom for _module.NatFailure.IsFailure
axiom (forall this: ref :: 
  { _module.NatFailure.IsFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.NatFailure())
     ==> _module.NatFailure.IsFailure#requires(this) == true);

// definition axiom for _module.NatFailure.IsFailure (revealed)
axiom {:id "id214"} (forall this: ref :: 
  { _module.NatFailure.IsFailure(this) } 
  _module.NatFailure.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatFailure()))
     ==> _module.NatFailure.IsFailure(this) == Lit(true));

// definition axiom for _module.NatFailure.IsFailure for all literals (revealed)
axiom {:id "id215"} (forall this: ref :: 
  {:weight 3} { _module.NatFailure.IsFailure(Lit(this)) } 
  _module.NatFailure.IsFailure#canCall(Lit(this))
       || (this != null && $Is(this, Tclass._module.NatFailure()))
     ==> _module.NatFailure.IsFailure(Lit(this)) == Lit(true));

// override axiom for _module.NatOutcome.IsFailure in class _module.NatFailure
axiom (forall this: ref :: 
  { _module.NatOutcome.IsFailure(this), $Is(this, Tclass._module.NatFailure()) } 
    { _module.NatOutcome.IsFailure(this), _module.NatFailure.IsFailure(this) } 
  _module.NatFailure.IsFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatFailure()))
     ==> _module.NatOutcome.IsFailure(this) == _module.NatFailure.IsFailure(this));

// function declaration for _module.NatFailure.PropagateFailure
function _module.NatFailure.PropagateFailure(this: ref) : ref;

function _module.NatFailure.PropagateFailure#canCall(this: ref) : bool;

// consequence axiom for _module.NatFailure.PropagateFailure
axiom (forall this: ref :: 
  { _module.NatFailure.PropagateFailure(this) } 
  _module.NatFailure.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatFailure())
         && _module.NatFailure.IsFailure(this))
     ==> $Is(_module.NatFailure.PropagateFailure(this), Tclass._module.NatOutcome()));

// alloc consequence axiom for _module.NatFailure.PropagateFailure
axiom (forall $Heap: Heap, this: ref :: 
  { $IsAlloc(_module.NatFailure.PropagateFailure(this), Tclass._module.NatOutcome(), $Heap) } 
  (_module.NatFailure.PropagateFailure#canCall(this)
         || (
          this != null
           && $IsAlloc(this, Tclass._module.NatFailure(), $Heap)
           && _module.NatFailure.IsFailure(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(_module.NatFailure.PropagateFailure(this), Tclass._module.NatOutcome(), $Heap));

function _module.NatFailure.PropagateFailure#requires(ref) : bool;

// #requires axiom for _module.NatFailure.PropagateFailure
axiom (forall this: ref :: 
  { _module.NatFailure.PropagateFailure#requires(this) } 
  this != null && $Is(this, Tclass._module.NatFailure())
     ==> _module.NatFailure.PropagateFailure#requires(this)
       == _module.NatFailure.IsFailure(this));

// definition axiom for _module.NatFailure.PropagateFailure (revealed)
axiom {:id "id216"} (forall this: ref :: 
  { _module.NatFailure.PropagateFailure(this) } 
  _module.NatFailure.PropagateFailure#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatFailure())
         && _module.NatFailure.IsFailure(this))
     ==> _module.NatFailure.PropagateFailure(this) == this);

// definition axiom for _module.NatFailure.PropagateFailure for all literals (revealed)
axiom {:id "id217"} (forall this: ref :: 
  {:weight 3} { _module.NatFailure.PropagateFailure(Lit(this)) } 
  _module.NatFailure.PropagateFailure#canCall(Lit(this))
       || (
        this != null
         && $Is(this, Tclass._module.NatFailure())
         && Lit(_module.NatFailure.IsFailure(Lit(this))))
     ==> _module.NatFailure.PropagateFailure(Lit(this)) == Lit(this));

// override axiom for _module.NatOutcome.PropagateFailure in class _module.NatFailure
axiom (forall this: ref :: 
  { _module.NatOutcome.PropagateFailure(this), $Is(this, Tclass._module.NatFailure()) } 
    { _module.NatOutcome.PropagateFailure(this), _module.NatFailure.PropagateFailure(this) } 
  _module.NatFailure.PropagateFailure#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatFailure()))
     ==> _module.NatOutcome.PropagateFailure(this)
       == _module.NatFailure.PropagateFailure(this));

// function declaration for _module.NatFailure.Extract
function _module.NatFailure.Extract(this: ref) : int;

function _module.NatFailure.Extract#canCall(this: ref) : bool;

// consequence axiom for _module.NatFailure.Extract
axiom (forall this: ref :: 
  { _module.NatFailure.Extract(this) } 
  _module.NatFailure.Extract#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatFailure())
         && !_module.NatFailure.IsFailure(this))
     ==> LitInt(0) <= _module.NatFailure.Extract(this));

function _module.NatFailure.Extract#requires(ref) : bool;

// #requires axiom for _module.NatFailure.Extract
axiom (forall this: ref :: 
  { _module.NatFailure.Extract#requires(this) } 
  this != null && $Is(this, Tclass._module.NatFailure())
     ==> _module.NatFailure.Extract#requires(this) == !_module.NatFailure.IsFailure(this));

// definition axiom for _module.NatFailure.Extract (revealed)
axiom {:id "id218"} (forall this: ref :: 
  { _module.NatFailure.Extract(this) } 
  _module.NatFailure.Extract#canCall(this)
       || (
        this != null
         && $Is(this, Tclass._module.NatFailure())
         && !_module.NatFailure.IsFailure(this))
     ==> _module.__default.Unreachable#canCall(Tclass._System.nat())
       && _module.NatFailure.Extract(this)
         == LitInt($Unbox(_module.__default.Unreachable(Tclass._System.nat())): int));

// definition axiom for _module.NatFailure.Extract for all literals (revealed)
axiom {:id "id219"} (forall this: ref :: 
  {:weight 3} { _module.NatFailure.Extract(Lit(this)) } 
  _module.NatFailure.Extract#canCall(Lit(this))
       || (
        this != null
         && $Is(this, Tclass._module.NatFailure())
         && !Lit(_module.NatFailure.IsFailure(Lit(this))))
     ==> _module.__default.Unreachable#canCall(Tclass._System.nat())
       && _module.NatFailure.Extract(Lit(this))
         == LitInt($Unbox(_module.__default.Unreachable(Tclass._System.nat())): int));

// override axiom for _module.NatOutcome.Extract in class _module.NatFailure
axiom (forall this: ref :: 
  { _module.NatOutcome.Extract(this), $Is(this, Tclass._module.NatFailure()) } 
    { _module.NatOutcome.Extract(this), _module.NatFailure.Extract(this) } 
  _module.NatFailure.Extract#canCall(this)
       || (this != null && $Is(this, Tclass._module.NatFailure()))
     ==> _module.NatOutcome.Extract(this) == _module.NatFailure.Extract(this));

// $Is axiom for non-null type _module.NatFailure
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NatFailure()) } 
    { $Is(c#0, Tclass._module.NatFailure?()) } 
  $Is(c#0, Tclass._module.NatFailure())
     <==> $Is(c#0, Tclass._module.NatFailure?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NatFailure
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NatFailure(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NatFailure?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NatFailure(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NatFailure?(), $h));

// type axiom for trait parent: VoidSuccess? extends VoidOutcome?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.VoidSuccess?()) } 
  $Is($o, Tclass._module.VoidSuccess?())
     ==> $Is($o, Tclass._module.VoidOutcome?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidSuccess?()) } 
  $IsBox(bx, Tclass._module.VoidSuccess?())
     ==> $IsBox(bx, Tclass._module.VoidOutcome?()));

// allocation axiom for trait parent: VoidSuccess? extends VoidOutcome?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.VoidSuccess?(), $heap) } 
  $IsAlloc($o, Tclass._module.VoidSuccess?(), $heap)
     ==> $IsAlloc($o, Tclass._module.VoidOutcome?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.VoidSuccess?(), $h) } 
  $IsAllocBox(bx, Tclass._module.VoidSuccess?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.VoidOutcome?(), $h));

// type axiom for trait parent: VoidFailure? extends VoidOutcome?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.VoidFailure?()) } 
  $Is($o, Tclass._module.VoidFailure?())
     ==> $Is($o, Tclass._module.VoidOutcome?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.VoidFailure?()) } 
  $IsBox(bx, Tclass._module.VoidFailure?())
     ==> $IsBox(bx, Tclass._module.VoidOutcome?()));

// allocation axiom for trait parent: VoidFailure? extends VoidOutcome?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.VoidFailure?(), $heap) } 
  $IsAlloc($o, Tclass._module.VoidFailure?(), $heap)
     ==> $IsAlloc($o, Tclass._module.VoidOutcome?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.VoidFailure?(), $h) } 
  $IsAllocBox(bx, Tclass._module.VoidFailure?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.VoidOutcome?(), $h));

// type axiom for trait parent: NatSuccess? extends NatOutcome?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NatSuccess?()) } 
  $Is($o, Tclass._module.NatSuccess?()) ==> $Is($o, Tclass._module.NatOutcome?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatSuccess?()) } 
  $IsBox(bx, Tclass._module.NatSuccess?())
     ==> $IsBox(bx, Tclass._module.NatOutcome?()));

// allocation axiom for trait parent: NatSuccess? extends NatOutcome?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.NatSuccess?(), $heap) } 
  $IsAlloc($o, Tclass._module.NatSuccess?(), $heap)
     ==> $IsAlloc($o, Tclass._module.NatOutcome?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.NatSuccess?(), $h) } 
  $IsAllocBox(bx, Tclass._module.NatSuccess?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.NatOutcome?(), $h));

// type axiom for trait parent: NatFailure? extends NatOutcome?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NatFailure?()) } 
  $Is($o, Tclass._module.NatFailure?()) ==> $Is($o, Tclass._module.NatOutcome?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatFailure?()) } 
  $IsBox(bx, Tclass._module.NatFailure?())
     ==> $IsBox(bx, Tclass._module.NatOutcome?()));

// allocation axiom for trait parent: NatFailure? extends NatOutcome?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.NatFailure?(), $heap) } 
  $IsAlloc($o, Tclass._module.NatFailure?(), $heap)
     ==> $IsAlloc($o, Tclass._module.NatOutcome?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.NatFailure?(), $h) } 
  $IsAllocBox(bx, Tclass._module.NatFailure?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.NatOutcome?(), $h));

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

const unique tytagFamily$NatOutcome: TyTagFamily;

const unique tytagFamily$VoidOutcome: TyTagFamily;

const unique tytagFamily$VoidSuccess: TyTagFamily;

const unique tytagFamily$VoidFailure: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$NatSuccess: TyTagFamily;

const unique tytagFamily$NatFailure: TyTagFamily;
