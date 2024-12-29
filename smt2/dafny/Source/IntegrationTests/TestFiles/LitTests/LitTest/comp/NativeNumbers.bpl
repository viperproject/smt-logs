// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy

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

// Box/unbox axiom for bv16
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(16)) } 
  $IsBox(bx, TBitvector(16))
     ==> $Box($Unbox(bx): bv16) == bx && $Is($Unbox(bx): bv16, TBitvector(16)));

axiom (forall v: bv16 :: { $Is(v, TBitvector(16)) } $Is(v, TBitvector(16)));

axiom (forall v: bv16, heap: Heap :: 
  { $IsAlloc(v, TBitvector(16), heap) } 
  $IsAlloc(v, TBitvector(16), heap));

function {:bvbuiltin "bvand"} and_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvor"} or_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvxor"} xor_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvnot"} not_bv16(bv16) : bv16;

function {:bvbuiltin "bvadd"} add_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvsub"} sub_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvmul"} mul_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvudiv"} div_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvurem"} mod_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvult"} lt_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvule"} le_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvuge"} ge_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvugt"} gt_bv16(bv16, bv16) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "bvlshr"} RightShift_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv16(bv16, bv16) : bv16;

function {:bvbuiltin "(_ int2bv 16)"} nat_to_bv16(int) : bv16;

function {:bvbuiltin "bv2int"} smt_nat_from_bv16(bv16) : int;

function nat_from_bv16(bv16) : int;

axiom (forall b: bv16 :: 
  { nat_from_bv16(b) } 
  0 <= nat_from_bv16(b)
     && nat_from_bv16(b) < 65536
     && nat_from_bv16(b) == smt_nat_from_bv16(b));

// Box/unbox axiom for bv15
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(15)) } 
  $IsBox(bx, TBitvector(15))
     ==> $Box($Unbox(bx): bv15) == bx && $Is($Unbox(bx): bv15, TBitvector(15)));

axiom (forall v: bv15 :: { $Is(v, TBitvector(15)) } $Is(v, TBitvector(15)));

axiom (forall v: bv15, heap: Heap :: 
  { $IsAlloc(v, TBitvector(15), heap) } 
  $IsAlloc(v, TBitvector(15), heap));

function {:bvbuiltin "bvand"} and_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvor"} or_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvxor"} xor_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvnot"} not_bv15(bv15) : bv15;

function {:bvbuiltin "bvadd"} add_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvsub"} sub_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvmul"} mul_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvudiv"} div_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvurem"} mod_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvult"} lt_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvule"} le_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvuge"} ge_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvugt"} gt_bv15(bv15, bv15) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "bvlshr"} RightShift_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv15(bv15, bv15) : bv15;

function {:bvbuiltin "(_ int2bv 15)"} nat_to_bv15(int) : bv15;

function {:bvbuiltin "bv2int"} smt_nat_from_bv15(bv15) : int;

function nat_from_bv15(bv15) : int;

axiom (forall b: bv15 :: 
  { nat_from_bv15(b) } 
  0 <= nat_from_bv15(b)
     && nat_from_bv15(b) < 32768
     && nat_from_bv15(b) == smt_nat_from_bv15(b));

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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(6,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id0"} Call$$_module.__default.CastTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(7,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1"} Call$$_module.__default.DefaultTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(8,11)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id2"} Call$$_module.__default.Int8Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(9,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id3"} Call$$_module.__default.Int16Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(10,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id4"} Call$$_module.__default.BvTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(11,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id5"} Call$$_module.__default.ZeroComparisonTests();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "CastTests (well-formedness)"} CheckWellFormed$$_module.__default.CastTests();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CastTests (call)"} Call$$_module.__default.CastTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CastTests (correctness)"} Impl$$_module.__default.CastTests() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CastTests (correctness)"} Impl$$_module.__default.CastTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var i8#0: int where LitInt(-128) <= i8#0 && i8#0 < 128;
  var newtype$check#16: int;
  var newtype$check#17: int;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var newtype$check#22: int;
  var newtype$check#23: int;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var newtype$check#26: int;
  var newtype$check#27: int;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var newtype$check#32: int;
  var i16#0: int where LitInt(-32768) <= i16#0 && i16#0 < 32768;
  var newtype$check#33: int;
  var newtype$check#34: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var newtype$check#44: int;
  var newtype$check#45: int;
  var newtype$check#46: int;
  var newtype$check#47: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var i32#0: int where LitInt(-2147483648) <= i32#0 && i32#0 < 2147483648;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var newtype$check#52: int;
  var newtype$check#53: int;
  var newtype$check#54: int;
  var newtype$check#55: int;
  var newtype$check#56: int;
  var newtype$check#57: int;
  var newtype$check#58: int;
  var newtype$check#59: int;
  var newtype$check#60: int;
  var newtype$check#61: int;
  var newtype$check#62: int;
  var newtype$check#63: int;
  var newtype$check#64: int;
  var newtype$check#65: int;
  var newtype$check#66: int;
  var i64#0: int where LitInt(-2147483648) <= i64#0 && i64#0 < 9223372036854775808;
  var newtype$check#67: int;
  var newtype$check#68: int;
  var newtype$check#69: int;
  var newtype$check#70: int;
  var newtype$check#71: int;
  var newtype$check#72: int;
  var newtype$check#73: int;
  var newtype$check#74: int;
  var newtype$check#75: int;
  var newtype$check#76: int;
  var newtype$check#77: int;
  var newtype$check#78: int;
  var newtype$check#79: int;
  var newtype$check#80: int;
  var newtype$check#81: int;
  var newtype$check#82: int;
  var newtype$check#83: int;
  var u8#0: int where LitInt(0) <= u8#0 && u8#0 < 256;
  var newtype$check#84: int;
  var newtype$check#85: int;
  var newtype$check#86: int;
  var newtype$check#87: int;
  var newtype$check#88: int;
  var newtype$check#89: int;
  var newtype$check#90: int;
  var newtype$check#91: int;
  var newtype$check#92: int;
  var newtype$check#93: int;
  var newtype$check#94: int;
  var newtype$check#95: int;
  var newtype$check#96: int;
  var newtype$check#97: int;
  var newtype$check#98: int;
  var newtype$check#99: int;
  var newtype$check#100: int;
  var u16#0: int where LitInt(0) <= u16#0 && u16#0 < 65536;
  var newtype$check#101: int;
  var newtype$check#102: int;
  var newtype$check#103: int;
  var newtype$check#104: int;
  var newtype$check#105: int;
  var newtype$check#106: int;
  var newtype$check#107: int;
  var newtype$check#108: int;
  var newtype$check#109: int;
  var newtype$check#110: int;
  var newtype$check#111: int;
  var newtype$check#112: int;
  var newtype$check#113: int;
  var newtype$check#114: int;
  var newtype$check#115: int;
  var newtype$check#116: int;
  var newtype$check#117: int;
  var u32#0: int where LitInt(0) <= u32#0 && u32#0 < 4294967296;
  var newtype$check#118: int;
  var newtype$check#119: int;
  var newtype$check#120: int;
  var newtype$check#121: int;
  var newtype$check#122: int;
  var newtype$check#123: int;
  var newtype$check#124: int;
  var newtype$check#125: int;
  var newtype$check#126: int;
  var newtype$check#127: int;
  var newtype$check#128: int;
  var newtype$check#129: int;
  var newtype$check#130: int;
  var newtype$check#131: int;
  var newtype$check#132: int;
  var newtype$check#133: int;
  var newtype$check#134: int;
  var u64#0: int where LitInt(0) <= u64#0 && u64#0 < 18446744073709551616;
  var newtype$check#135: int;
  var newtype$check#136: int;
  var newtype$check#137: int;
  var newtype$check#138: int;
  var newtype$check#139: int;
  var newtype$check#140: int;
  var newtype$check#141: int;
  var newtype$check#142: int;
  var newtype$check#143: int;
  var newtype$check#144: int;
  var newtype$check#145: int;
  var newtype$check#146: int;
  var newtype$check#147: int;
  var newtype$check#148: int;
  var newtype$check#149: int;
  var newtype$check#150: int;
  var newtype$check#151: int;
  var newtype$check#152: int;
  var newtype$check#153: int;
  var newtype$check#154: int;
  var newtype$check#155: int;
  var newtype$check#156: int;
  var newtype$check#157: int;
  var newtype$check#158: int;
  var newtype$check#159: int;
  var newtype$check#160: int;
  var newtype$check#161: int;
  var newtype$check#162: int;
  var newtype$check#163: int;
  var newtype$check#164: int;
  var newtype$check#165: int;
  var newtype$check#166: int;
  var newtype$check#167: int;
  var newtype$check#168: int;
  var newtype$check#169: int;
  var newtype$check#170: int;
  var newtype$check#171: int;
  var newtype$check#172: int;
  var newtype$check#173: int;
  var newtype$check#174: int;
  var newtype$check#175: int;
  var newtype$check#176: int;
  var newtype$check#177: int;
  var newtype$check#178: int;
  var newtype$check#179: int;
  var newtype$check#180: int;
  var newtype$check#181: int;
  var newtype$check#182: int;
  var newtype$check#183: int;
  var newtype$check#184: int;
  var newtype$check#185: int;
  var newtype$check#186: int;
  var newtype$check#187: int;
  var newtype$check#188: int;
  var newtype$check#189: int;
  var newtype$check#190: int;
  var newtype$check#191: int;
  var newtype$check#192: int;
  var newtype$check#193: int;
  var newtype$check#194: int;
  var newtype$check#195: int;
  var newtype$check#196: int;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var newtype$check#197: int;
  var newtype$check#198: int;
  var newtype$check#199: int;
  var newtype$check#200: int;
  var newtype$check#201: int;
  var newtype$check#202: int;
  var newtype$check#203: int;
  var newtype$check#204: int;
  var newtype$check#205: int;
  var newtype$check#206: int;
  var newtype$check#207: int;
  var newtype$check#208: int;
  var newtype$check#209: int;
  var newtype$check#210: int;
  var newtype$check#211: int;
  var newtype$check#212: int;
  var m#0: MultiSet
     where $Is(m#0, TMultiSet(TInt)) && $IsAlloc(m#0, TMultiSet(TInt), $Heap);
  var newtype$check#213: int;
  var newtype$check#214: int;
  var newtype$check#215: int;
  var newtype$check#216: int;
  var newtype$check#217: int;
  var newtype$check#218: int;
  var newtype$check#219: int;
  var newtype$check#220: int;
  var newtype$check#221: int;
  var newtype$check#222: int;
  var newtype$check#223: int;
  var newtype$check#224: int;
  var newtype$check#225: int;
  var newtype$check#226: int;
  var newtype$check#227: int;
  var newtype$check#228: int;
  var q#0: Seq where $Is(q#0, TSeq(TInt)) && $IsAlloc(q#0, TSeq(TInt), $Heap);
  var newtype$check#229: int;
  var newtype$check#230: int;
  var newtype$check#231: int;
  var newtype$check#232: int;
  var newtype$check#233: int;
  var newtype$check#234: int;
  var newtype$check#235: int;
  var newtype$check#236: int;
  var newtype$check#237: int;
  var newtype$check#238: int;
  var newtype$check#239: int;
  var newtype$check#240: int;
  var newtype$check#241: int;
  var newtype$check#242: int;
  var newtype$check#243: int;
  var newtype$check#244: int;
  var p#0: Map
     where $Is(p#0, TMap(TInt, TSeq(TChar)))
       && $IsAlloc(p#0, TMap(TInt, TSeq(TChar)), $Heap);
  var newtype$check#245: int;
  var newtype$check#246: int;
  var newtype$check#247: int;
  var newtype$check#248: int;
  var newtype$check#249: int;
  var newtype$check#250: int;
  var newtype$check#251: int;
  var newtype$check#252: int;
  var newtype$check#253: int;
  var newtype$check#254: int;
  var newtype$check#255: int;
  var newtype$check#256: int;
  var newtype$check#257: int;
  var newtype$check#258: int;
  var newtype$check#259: int;
  var newtype$check#260: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TInt))
       && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap);
  var $nw: ref;
  var newtype$check#261: int;
  var newtype$check#262: int;
  var newtype$check#263: int;
  var newtype$check#264: int;
  var newtype$check#265: int;
  var newtype$check#266: int;
  var newtype$check#267: int;
  var newtype$check#268: int;
  var newtype$check#269: int;
  var newtype$check#270: int;
  var newtype$check#271: int;
  var newtype$check#272: int;
  var newtype$check#273: int;
  var newtype$check#274: int;
  var newtype$check#275: int;
  var newtype$check#276: int;
  var c#0: char where $Is(c#0, TChar);
  var newtype$check#277: int;
  var newtype$check#278: int;
  var newtype$check#279: int;
  var newtype$check#280: int;
  var newtype$check#281: int;
  var newtype$check#282: int;
  var newtype$check#283: int;
  var newtype$check#284: int;
  var newtype$check#285: int;
  var newtype$check#286: int;
  var newtype$check#287: int;
  var newtype$check#288: int;
  var newtype$check#289: int;
  var newtype$check#290: int;
  var newtype$check#291: int;
  var newtype$check#292: int;
  var newtype$check#293: int;
  var newtype$check#294: int;
  var newtype$check#295: int;
  var newtype$check#296: int;
  var newtype$check#297: int;
  var newtype$check#298: int;
  var newtype$check#299: int;
  var newtype$check#300: int;
  var newtype$check#301: int;
  var newtype$check#302: int;
  var newtype$check#303: int;
  var newtype$check#304: int;
  var newtype$check#305: int;
  var newtype$check#306: int;
  var newtype$check#307: int;
  var newtype$check#308: int;
  var newtype$check#309: int;
  var newtype$check#310: int;
  var newtype$check#311: int;
  var newtype$check#312: int;
  var newtype$check#313: int;
  var newtype$check#314: int;
  var newtype$check#315: int;
  var newtype$check#316: int;
  var newtype$check#317: int;
  var newtype$check#318: int;
  var newtype$check#319: int;
  var newtype$check#320: int;
  var newtype$check#321: int;
  var newtype$check#322: int;
  var newtype$check#323: int;
  var newtype$check#324: int;
  var newtype$check#325: int;

    // AddMethodImpl: CastTests, Impl$$_module.__default.CastTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(25,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(27,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(28,15)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(29,3)
    assume true;
    assume true;
    newtype$check#0 := i#0;
    assert {:id "id7"} LitInt(-128) <= newtype$check#0 && newtype$check#0 < 128;
    newtype$check#1 := i#0;
    assert {:id "id8"} LitInt(-128) <= newtype$check#1 && newtype$check#1 < 128;
    assume true;
    assume true;
    newtype$check#2 := i#0;
    assert {:id "id9"} LitInt(-32768) <= newtype$check#2 && newtype$check#2 < 32768;
    newtype$check#3 := i#0;
    assert {:id "id10"} LitInt(-32768) <= newtype$check#3 && newtype$check#3 < 32768;
    assume true;
    assume true;
    newtype$check#4 := i#0;
    assert {:id "id11"} LitInt(-2147483648) <= newtype$check#4 && newtype$check#4 < 2147483648;
    newtype$check#5 := i#0;
    assert {:id "id12"} LitInt(-2147483648) <= newtype$check#5 && newtype$check#5 < 2147483648;
    assume true;
    assume true;
    newtype$check#6 := i#0;
    assert {:id "id13"} LitInt(-2147483648) <= newtype$check#6 && newtype$check#6 < 9223372036854775808;
    newtype$check#7 := i#0;
    assert {:id "id14"} LitInt(-2147483648) <= newtype$check#7 && newtype$check#7 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#8 := i#0;
    assert {:id "id15"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 256;
    newtype$check#9 := i#0;
    assert {:id "id16"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 256;
    assume true;
    assume true;
    newtype$check#10 := i#0;
    assert {:id "id17"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 65536;
    newtype$check#11 := i#0;
    assert {:id "id18"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 65536;
    assume true;
    assume true;
    newtype$check#12 := i#0;
    assert {:id "id19"} LitInt(0) <= newtype$check#12 && newtype$check#12 < 4294967296;
    newtype$check#13 := i#0;
    assert {:id "id20"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 4294967296;
    assume true;
    assume true;
    newtype$check#14 := i#0;
    assert {:id "id21"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 18446744073709551616;
    newtype$check#15 := i#0;
    assert {:id "id22"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(33,17)
    assume true;
    newtype$check#16 := LitInt(1);
    assert {:id "id23"} LitInt(-128) <= newtype$check#16 && newtype$check#16 < 128;
    assume true;
    i8#0 := LitInt(1);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(34,3)
    assume true;
    assume true;
    newtype$check#17 := i8#0;
    assert {:id "id25"} LitInt(-128) <= newtype$check#17 && newtype$check#17 < 128;
    newtype$check#18 := i8#0;
    assert {:id "id26"} LitInt(-128) <= newtype$check#18 && newtype$check#18 < 128;
    assume true;
    assume true;
    newtype$check#19 := i8#0;
    assert {:id "id27"} LitInt(-32768) <= newtype$check#19 && newtype$check#19 < 32768;
    newtype$check#20 := i8#0;
    assert {:id "id28"} LitInt(-32768) <= newtype$check#20 && newtype$check#20 < 32768;
    assume true;
    assume true;
    newtype$check#21 := i8#0;
    assert {:id "id29"} LitInt(-2147483648) <= newtype$check#21 && newtype$check#21 < 2147483648;
    newtype$check#22 := i8#0;
    assert {:id "id30"} LitInt(-2147483648) <= newtype$check#22 && newtype$check#22 < 2147483648;
    assume true;
    assume true;
    newtype$check#23 := i8#0;
    assert {:id "id31"} LitInt(-2147483648) <= newtype$check#23
       && newtype$check#23 < 9223372036854775808;
    newtype$check#24 := i8#0;
    assert {:id "id32"} LitInt(-2147483648) <= newtype$check#24
       && newtype$check#24 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#25 := i8#0;
    assert {:id "id33"} LitInt(0) <= newtype$check#25 && newtype$check#25 < 256;
    newtype$check#26 := i8#0;
    assert {:id "id34"} LitInt(0) <= newtype$check#26 && newtype$check#26 < 256;
    assume true;
    assume true;
    newtype$check#27 := i8#0;
    assert {:id "id35"} LitInt(0) <= newtype$check#27 && newtype$check#27 < 65536;
    newtype$check#28 := i8#0;
    assert {:id "id36"} LitInt(0) <= newtype$check#28 && newtype$check#28 < 65536;
    assume true;
    assume true;
    newtype$check#29 := i8#0;
    assert {:id "id37"} LitInt(0) <= newtype$check#29 && newtype$check#29 < 4294967296;
    newtype$check#30 := i8#0;
    assert {:id "id38"} LitInt(0) <= newtype$check#30 && newtype$check#30 < 4294967296;
    assume true;
    assume true;
    newtype$check#31 := i8#0;
    assert {:id "id39"} LitInt(0) <= newtype$check#31 && newtype$check#31 < 18446744073709551616;
    newtype$check#32 := i8#0;
    assert {:id "id40"} LitInt(0) <= newtype$check#32 && newtype$check#32 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(38,19)
    assume true;
    newtype$check#33 := LitInt(2);
    assert {:id "id41"} LitInt(-32768) <= newtype$check#33 && newtype$check#33 < 32768;
    assume true;
    i16#0 := LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(39,3)
    assume true;
    assume true;
    newtype$check#34 := i16#0;
    assert {:id "id43"} LitInt(-128) <= newtype$check#34 && newtype$check#34 < 128;
    newtype$check#35 := i16#0;
    assert {:id "id44"} LitInt(-128) <= newtype$check#35 && newtype$check#35 < 128;
    assume true;
    assume true;
    newtype$check#36 := i16#0;
    assert {:id "id45"} LitInt(-32768) <= newtype$check#36 && newtype$check#36 < 32768;
    newtype$check#37 := i16#0;
    assert {:id "id46"} LitInt(-32768) <= newtype$check#37 && newtype$check#37 < 32768;
    assume true;
    assume true;
    newtype$check#38 := i16#0;
    assert {:id "id47"} LitInt(-2147483648) <= newtype$check#38 && newtype$check#38 < 2147483648;
    newtype$check#39 := i16#0;
    assert {:id "id48"} LitInt(-2147483648) <= newtype$check#39 && newtype$check#39 < 2147483648;
    assume true;
    assume true;
    newtype$check#40 := i16#0;
    assert {:id "id49"} LitInt(-2147483648) <= newtype$check#40
       && newtype$check#40 < 9223372036854775808;
    newtype$check#41 := i16#0;
    assert {:id "id50"} LitInt(-2147483648) <= newtype$check#41
       && newtype$check#41 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#42 := i16#0;
    assert {:id "id51"} LitInt(0) <= newtype$check#42 && newtype$check#42 < 256;
    newtype$check#43 := i16#0;
    assert {:id "id52"} LitInt(0) <= newtype$check#43 && newtype$check#43 < 256;
    assume true;
    assume true;
    newtype$check#44 := i16#0;
    assert {:id "id53"} LitInt(0) <= newtype$check#44 && newtype$check#44 < 65536;
    newtype$check#45 := i16#0;
    assert {:id "id54"} LitInt(0) <= newtype$check#45 && newtype$check#45 < 65536;
    assume true;
    assume true;
    newtype$check#46 := i16#0;
    assert {:id "id55"} LitInt(0) <= newtype$check#46 && newtype$check#46 < 4294967296;
    newtype$check#47 := i16#0;
    assert {:id "id56"} LitInt(0) <= newtype$check#47 && newtype$check#47 < 4294967296;
    assume true;
    assume true;
    newtype$check#48 := i16#0;
    assert {:id "id57"} LitInt(0) <= newtype$check#48 && newtype$check#48 < 18446744073709551616;
    newtype$check#49 := i16#0;
    assert {:id "id58"} LitInt(0) <= newtype$check#49 && newtype$check#49 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(43,19)
    assume true;
    newtype$check#50 := LitInt(3);
    assert {:id "id59"} LitInt(-2147483648) <= newtype$check#50 && newtype$check#50 < 2147483648;
    assume true;
    i32#0 := LitInt(3);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(44,3)
    assume true;
    assume true;
    newtype$check#51 := i32#0;
    assert {:id "id61"} LitInt(-128) <= newtype$check#51 && newtype$check#51 < 128;
    newtype$check#52 := i32#0;
    assert {:id "id62"} LitInt(-128) <= newtype$check#52 && newtype$check#52 < 128;
    assume true;
    assume true;
    newtype$check#53 := i32#0;
    assert {:id "id63"} LitInt(-32768) <= newtype$check#53 && newtype$check#53 < 32768;
    newtype$check#54 := i32#0;
    assert {:id "id64"} LitInt(-32768) <= newtype$check#54 && newtype$check#54 < 32768;
    assume true;
    assume true;
    newtype$check#55 := i32#0;
    assert {:id "id65"} LitInt(-2147483648) <= newtype$check#55 && newtype$check#55 < 2147483648;
    newtype$check#56 := i32#0;
    assert {:id "id66"} LitInt(-2147483648) <= newtype$check#56 && newtype$check#56 < 2147483648;
    assume true;
    assume true;
    newtype$check#57 := i32#0;
    assert {:id "id67"} LitInt(-2147483648) <= newtype$check#57
       && newtype$check#57 < 9223372036854775808;
    newtype$check#58 := i32#0;
    assert {:id "id68"} LitInt(-2147483648) <= newtype$check#58
       && newtype$check#58 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#59 := i32#0;
    assert {:id "id69"} LitInt(0) <= newtype$check#59 && newtype$check#59 < 256;
    newtype$check#60 := i32#0;
    assert {:id "id70"} LitInt(0) <= newtype$check#60 && newtype$check#60 < 256;
    assume true;
    assume true;
    newtype$check#61 := i32#0;
    assert {:id "id71"} LitInt(0) <= newtype$check#61 && newtype$check#61 < 65536;
    newtype$check#62 := i32#0;
    assert {:id "id72"} LitInt(0) <= newtype$check#62 && newtype$check#62 < 65536;
    assume true;
    assume true;
    newtype$check#63 := i32#0;
    assert {:id "id73"} LitInt(0) <= newtype$check#63 && newtype$check#63 < 4294967296;
    newtype$check#64 := i32#0;
    assert {:id "id74"} LitInt(0) <= newtype$check#64 && newtype$check#64 < 4294967296;
    assume true;
    assume true;
    newtype$check#65 := i32#0;
    assert {:id "id75"} LitInt(0) <= newtype$check#65 && newtype$check#65 < 18446744073709551616;
    newtype$check#66 := i32#0;
    assert {:id "id76"} LitInt(0) <= newtype$check#66 && newtype$check#66 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(48,19)
    assume true;
    newtype$check#67 := LitInt(4);
    assert {:id "id77"} LitInt(-2147483648) <= newtype$check#67
       && newtype$check#67 < 9223372036854775808;
    assume true;
    i64#0 := LitInt(4);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(49,3)
    assume true;
    assume true;
    newtype$check#68 := i64#0;
    assert {:id "id79"} LitInt(-128) <= newtype$check#68 && newtype$check#68 < 128;
    newtype$check#69 := i64#0;
    assert {:id "id80"} LitInt(-128) <= newtype$check#69 && newtype$check#69 < 128;
    assume true;
    assume true;
    newtype$check#70 := i64#0;
    assert {:id "id81"} LitInt(-32768) <= newtype$check#70 && newtype$check#70 < 32768;
    newtype$check#71 := i64#0;
    assert {:id "id82"} LitInt(-32768) <= newtype$check#71 && newtype$check#71 < 32768;
    assume true;
    assume true;
    newtype$check#72 := i64#0;
    assert {:id "id83"} LitInt(-2147483648) <= newtype$check#72 && newtype$check#72 < 2147483648;
    newtype$check#73 := i64#0;
    assert {:id "id84"} LitInt(-2147483648) <= newtype$check#73 && newtype$check#73 < 2147483648;
    assume true;
    assume true;
    newtype$check#74 := i64#0;
    assert {:id "id85"} LitInt(-2147483648) <= newtype$check#74
       && newtype$check#74 < 9223372036854775808;
    newtype$check#75 := i64#0;
    assert {:id "id86"} LitInt(-2147483648) <= newtype$check#75
       && newtype$check#75 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#76 := i64#0;
    assert {:id "id87"} LitInt(0) <= newtype$check#76 && newtype$check#76 < 256;
    newtype$check#77 := i64#0;
    assert {:id "id88"} LitInt(0) <= newtype$check#77 && newtype$check#77 < 256;
    assume true;
    assume true;
    newtype$check#78 := i64#0;
    assert {:id "id89"} LitInt(0) <= newtype$check#78 && newtype$check#78 < 65536;
    newtype$check#79 := i64#0;
    assert {:id "id90"} LitInt(0) <= newtype$check#79 && newtype$check#79 < 65536;
    assume true;
    assume true;
    newtype$check#80 := i64#0;
    assert {:id "id91"} LitInt(0) <= newtype$check#80 && newtype$check#80 < 4294967296;
    newtype$check#81 := i64#0;
    assert {:id "id92"} LitInt(0) <= newtype$check#81 && newtype$check#81 < 4294967296;
    assume true;
    assume true;
    newtype$check#82 := i64#0;
    assert {:id "id93"} LitInt(0) <= newtype$check#82 && newtype$check#82 < 18446744073709551616;
    newtype$check#83 := i64#0;
    assert {:id "id94"} LitInt(0) <= newtype$check#83 && newtype$check#83 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(53,18)
    assume true;
    newtype$check#84 := LitInt(5);
    assert {:id "id95"} LitInt(0) <= newtype$check#84 && newtype$check#84 < 256;
    assume true;
    u8#0 := LitInt(5);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(54,3)
    assume true;
    assume true;
    newtype$check#85 := u8#0;
    assert {:id "id97"} LitInt(-128) <= newtype$check#85 && newtype$check#85 < 128;
    newtype$check#86 := u8#0;
    assert {:id "id98"} LitInt(-128) <= newtype$check#86 && newtype$check#86 < 128;
    assume true;
    assume true;
    newtype$check#87 := u8#0;
    assert {:id "id99"} LitInt(-32768) <= newtype$check#87 && newtype$check#87 < 32768;
    newtype$check#88 := u8#0;
    assert {:id "id100"} LitInt(-32768) <= newtype$check#88 && newtype$check#88 < 32768;
    assume true;
    assume true;
    newtype$check#89 := u8#0;
    assert {:id "id101"} LitInt(-2147483648) <= newtype$check#89 && newtype$check#89 < 2147483648;
    newtype$check#90 := u8#0;
    assert {:id "id102"} LitInt(-2147483648) <= newtype$check#90 && newtype$check#90 < 2147483648;
    assume true;
    assume true;
    newtype$check#91 := u8#0;
    assert {:id "id103"} LitInt(-2147483648) <= newtype$check#91
       && newtype$check#91 < 9223372036854775808;
    newtype$check#92 := u8#0;
    assert {:id "id104"} LitInt(-2147483648) <= newtype$check#92
       && newtype$check#92 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#93 := u8#0;
    assert {:id "id105"} LitInt(0) <= newtype$check#93 && newtype$check#93 < 256;
    newtype$check#94 := u8#0;
    assert {:id "id106"} LitInt(0) <= newtype$check#94 && newtype$check#94 < 256;
    assume true;
    assume true;
    newtype$check#95 := u8#0;
    assert {:id "id107"} LitInt(0) <= newtype$check#95 && newtype$check#95 < 65536;
    newtype$check#96 := u8#0;
    assert {:id "id108"} LitInt(0) <= newtype$check#96 && newtype$check#96 < 65536;
    assume true;
    assume true;
    newtype$check#97 := u8#0;
    assert {:id "id109"} LitInt(0) <= newtype$check#97 && newtype$check#97 < 4294967296;
    newtype$check#98 := u8#0;
    assert {:id "id110"} LitInt(0) <= newtype$check#98 && newtype$check#98 < 4294967296;
    assume true;
    assume true;
    newtype$check#99 := u8#0;
    assert {:id "id111"} LitInt(0) <= newtype$check#99 && newtype$check#99 < 18446744073709551616;
    newtype$check#100 := u8#0;
    assert {:id "id112"} LitInt(0) <= newtype$check#100 && newtype$check#100 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(58,20)
    assume true;
    newtype$check#101 := LitInt(6);
    assert {:id "id113"} LitInt(0) <= newtype$check#101 && newtype$check#101 < 65536;
    assume true;
    u16#0 := LitInt(6);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(59,3)
    assume true;
    assume true;
    newtype$check#102 := u16#0;
    assert {:id "id115"} LitInt(-128) <= newtype$check#102 && newtype$check#102 < 128;
    newtype$check#103 := u16#0;
    assert {:id "id116"} LitInt(-128) <= newtype$check#103 && newtype$check#103 < 128;
    assume true;
    assume true;
    newtype$check#104 := u16#0;
    assert {:id "id117"} LitInt(-32768) <= newtype$check#104 && newtype$check#104 < 32768;
    newtype$check#105 := u16#0;
    assert {:id "id118"} LitInt(-32768) <= newtype$check#105 && newtype$check#105 < 32768;
    assume true;
    assume true;
    newtype$check#106 := u16#0;
    assert {:id "id119"} LitInt(-2147483648) <= newtype$check#106 && newtype$check#106 < 2147483648;
    newtype$check#107 := u16#0;
    assert {:id "id120"} LitInt(-2147483648) <= newtype$check#107 && newtype$check#107 < 2147483648;
    assume true;
    assume true;
    newtype$check#108 := u16#0;
    assert {:id "id121"} LitInt(-2147483648) <= newtype$check#108
       && newtype$check#108 < 9223372036854775808;
    newtype$check#109 := u16#0;
    assert {:id "id122"} LitInt(-2147483648) <= newtype$check#109
       && newtype$check#109 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#110 := u16#0;
    assert {:id "id123"} LitInt(0) <= newtype$check#110 && newtype$check#110 < 256;
    newtype$check#111 := u16#0;
    assert {:id "id124"} LitInt(0) <= newtype$check#111 && newtype$check#111 < 256;
    assume true;
    assume true;
    newtype$check#112 := u16#0;
    assert {:id "id125"} LitInt(0) <= newtype$check#112 && newtype$check#112 < 65536;
    newtype$check#113 := u16#0;
    assert {:id "id126"} LitInt(0) <= newtype$check#113 && newtype$check#113 < 65536;
    assume true;
    assume true;
    newtype$check#114 := u16#0;
    assert {:id "id127"} LitInt(0) <= newtype$check#114 && newtype$check#114 < 4294967296;
    newtype$check#115 := u16#0;
    assert {:id "id128"} LitInt(0) <= newtype$check#115 && newtype$check#115 < 4294967296;
    assume true;
    assume true;
    newtype$check#116 := u16#0;
    assert {:id "id129"} LitInt(0) <= newtype$check#116 && newtype$check#116 < 18446744073709551616;
    newtype$check#117 := u16#0;
    assert {:id "id130"} LitInt(0) <= newtype$check#117 && newtype$check#117 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(63,20)
    assume true;
    newtype$check#118 := LitInt(7);
    assert {:id "id131"} LitInt(0) <= newtype$check#118 && newtype$check#118 < 4294967296;
    assume true;
    u32#0 := LitInt(7);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(64,3)
    assume true;
    assume true;
    newtype$check#119 := u32#0;
    assert {:id "id133"} LitInt(-128) <= newtype$check#119 && newtype$check#119 < 128;
    newtype$check#120 := u32#0;
    assert {:id "id134"} LitInt(-128) <= newtype$check#120 && newtype$check#120 < 128;
    assume true;
    assume true;
    newtype$check#121 := u32#0;
    assert {:id "id135"} LitInt(-32768) <= newtype$check#121 && newtype$check#121 < 32768;
    newtype$check#122 := u32#0;
    assert {:id "id136"} LitInt(-32768) <= newtype$check#122 && newtype$check#122 < 32768;
    assume true;
    assume true;
    newtype$check#123 := u32#0;
    assert {:id "id137"} LitInt(-2147483648) <= newtype$check#123 && newtype$check#123 < 2147483648;
    newtype$check#124 := u32#0;
    assert {:id "id138"} LitInt(-2147483648) <= newtype$check#124 && newtype$check#124 < 2147483648;
    assume true;
    assume true;
    newtype$check#125 := u32#0;
    assert {:id "id139"} LitInt(-2147483648) <= newtype$check#125
       && newtype$check#125 < 9223372036854775808;
    newtype$check#126 := u32#0;
    assert {:id "id140"} LitInt(-2147483648) <= newtype$check#126
       && newtype$check#126 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#127 := u32#0;
    assert {:id "id141"} LitInt(0) <= newtype$check#127 && newtype$check#127 < 256;
    newtype$check#128 := u32#0;
    assert {:id "id142"} LitInt(0) <= newtype$check#128 && newtype$check#128 < 256;
    assume true;
    assume true;
    newtype$check#129 := u32#0;
    assert {:id "id143"} LitInt(0) <= newtype$check#129 && newtype$check#129 < 65536;
    newtype$check#130 := u32#0;
    assert {:id "id144"} LitInt(0) <= newtype$check#130 && newtype$check#130 < 65536;
    assume true;
    assume true;
    newtype$check#131 := u32#0;
    assert {:id "id145"} LitInt(0) <= newtype$check#131 && newtype$check#131 < 4294967296;
    newtype$check#132 := u32#0;
    assert {:id "id146"} LitInt(0) <= newtype$check#132 && newtype$check#132 < 4294967296;
    assume true;
    assume true;
    newtype$check#133 := u32#0;
    assert {:id "id147"} LitInt(0) <= newtype$check#133 && newtype$check#133 < 18446744073709551616;
    newtype$check#134 := u32#0;
    assert {:id "id148"} LitInt(0) <= newtype$check#134 && newtype$check#134 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(68,20)
    assume true;
    newtype$check#135 := LitInt(8);
    assert {:id "id149"} LitInt(0) <= newtype$check#135 && newtype$check#135 < 18446744073709551616;
    assume true;
    u64#0 := LitInt(8);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(69,3)
    assume true;
    assume true;
    newtype$check#136 := u64#0;
    assert {:id "id151"} LitInt(-128) <= newtype$check#136 && newtype$check#136 < 128;
    newtype$check#137 := u64#0;
    assert {:id "id152"} LitInt(-128) <= newtype$check#137 && newtype$check#137 < 128;
    assume true;
    assume true;
    newtype$check#138 := u64#0;
    assert {:id "id153"} LitInt(-32768) <= newtype$check#138 && newtype$check#138 < 32768;
    newtype$check#139 := u64#0;
    assert {:id "id154"} LitInt(-32768) <= newtype$check#139 && newtype$check#139 < 32768;
    assume true;
    assume true;
    newtype$check#140 := u64#0;
    assert {:id "id155"} LitInt(-2147483648) <= newtype$check#140 && newtype$check#140 < 2147483648;
    newtype$check#141 := u64#0;
    assert {:id "id156"} LitInt(-2147483648) <= newtype$check#141 && newtype$check#141 < 2147483648;
    assume true;
    assume true;
    newtype$check#142 := u64#0;
    assert {:id "id157"} LitInt(-2147483648) <= newtype$check#142
       && newtype$check#142 < 9223372036854775808;
    newtype$check#143 := u64#0;
    assert {:id "id158"} LitInt(-2147483648) <= newtype$check#143
       && newtype$check#143 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#144 := u64#0;
    assert {:id "id159"} LitInt(0) <= newtype$check#144 && newtype$check#144 < 256;
    newtype$check#145 := u64#0;
    assert {:id "id160"} LitInt(0) <= newtype$check#145 && newtype$check#145 < 256;
    assume true;
    assume true;
    newtype$check#146 := u64#0;
    assert {:id "id161"} LitInt(0) <= newtype$check#146 && newtype$check#146 < 65536;
    newtype$check#147 := u64#0;
    assert {:id "id162"} LitInt(0) <= newtype$check#147 && newtype$check#147 < 65536;
    assume true;
    assume true;
    newtype$check#148 := u64#0;
    assert {:id "id163"} LitInt(0) <= newtype$check#148 && newtype$check#148 < 4294967296;
    newtype$check#149 := u64#0;
    assert {:id "id164"} LitInt(0) <= newtype$check#149 && newtype$check#149 < 4294967296;
    assume true;
    assume true;
    newtype$check#150 := u64#0;
    assert {:id "id165"} LitInt(0) <= newtype$check#150 && newtype$check#150 < 18446744073709551616;
    newtype$check#151 := u64#0;
    assert {:id "id166"} LitInt(0) <= newtype$check#151 && newtype$check#151 < 18446744073709551616;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(73,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(74,6)
    assume true;
    newtype$check#152 := LitInt(255);
    assert {:id "id167"} LitInt(0) <= newtype$check#152 && newtype$check#152 < 256;
    assume true;
    u8#0 := LitInt(255);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(75,3)
    assume true;
    assume true;
    newtype$check#153 := u8#0;
    assert {:id "id169"} LitInt(-32768) <= newtype$check#153 && newtype$check#153 < 32768;
    newtype$check#154 := u8#0;
    assert {:id "id170"} LitInt(-32768) <= newtype$check#154 && newtype$check#154 < 32768;
    assume true;
    assume true;
    newtype$check#155 := u8#0;
    assert {:id "id171"} LitInt(-2147483648) <= newtype$check#155 && newtype$check#155 < 2147483648;
    newtype$check#156 := u8#0;
    assert {:id "id172"} LitInt(-2147483648) <= newtype$check#156 && newtype$check#156 < 2147483648;
    assume true;
    assume true;
    newtype$check#157 := u8#0;
    assert {:id "id173"} LitInt(-2147483648) <= newtype$check#157
       && newtype$check#157 < 9223372036854775808;
    newtype$check#158 := u8#0;
    assert {:id "id174"} LitInt(-2147483648) <= newtype$check#158
       && newtype$check#158 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#159 := u8#0;
    assert {:id "id175"} LitInt(0) <= newtype$check#159 && newtype$check#159 < 256;
    newtype$check#160 := u8#0;
    assert {:id "id176"} LitInt(0) <= newtype$check#160 && newtype$check#160 < 256;
    assume true;
    assume true;
    newtype$check#161 := u8#0;
    assert {:id "id177"} LitInt(0) <= newtype$check#161 && newtype$check#161 < 65536;
    newtype$check#162 := u8#0;
    assert {:id "id178"} LitInt(0) <= newtype$check#162 && newtype$check#162 < 65536;
    assume true;
    assume true;
    newtype$check#163 := u8#0;
    assert {:id "id179"} LitInt(0) <= newtype$check#163 && newtype$check#163 < 4294967296;
    newtype$check#164 := u8#0;
    assert {:id "id180"} LitInt(0) <= newtype$check#164 && newtype$check#164 < 4294967296;
    assume true;
    assume true;
    newtype$check#165 := u8#0;
    assert {:id "id181"} LitInt(0) <= newtype$check#165 && newtype$check#165 < 18446744073709551616;
    newtype$check#166 := u8#0;
    assert {:id "id182"} LitInt(0) <= newtype$check#166 && newtype$check#166 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(79,7)
    assume true;
    newtype$check#167 := LitInt(65535);
    assert {:id "id183"} LitInt(0) <= newtype$check#167 && newtype$check#167 < 65536;
    assume true;
    u16#0 := LitInt(65535);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(80,3)
    assume true;
    assume true;
    newtype$check#168 := u16#0;
    assert {:id "id185"} LitInt(-2147483648) <= newtype$check#168 && newtype$check#168 < 2147483648;
    newtype$check#169 := u16#0;
    assert {:id "id186"} LitInt(-2147483648) <= newtype$check#169 && newtype$check#169 < 2147483648;
    assume true;
    assume true;
    newtype$check#170 := u16#0;
    assert {:id "id187"} LitInt(-2147483648) <= newtype$check#170
       && newtype$check#170 < 9223372036854775808;
    newtype$check#171 := u16#0;
    assert {:id "id188"} LitInt(-2147483648) <= newtype$check#171
       && newtype$check#171 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#172 := u16#0;
    assert {:id "id189"} LitInt(0) <= newtype$check#172 && newtype$check#172 < 65536;
    newtype$check#173 := u16#0;
    assert {:id "id190"} LitInt(0) <= newtype$check#173 && newtype$check#173 < 65536;
    assume true;
    assume true;
    newtype$check#174 := u16#0;
    assert {:id "id191"} LitInt(0) <= newtype$check#174 && newtype$check#174 < 4294967296;
    newtype$check#175 := u16#0;
    assert {:id "id192"} LitInt(0) <= newtype$check#175 && newtype$check#175 < 4294967296;
    assume true;
    assume true;
    newtype$check#176 := u16#0;
    assert {:id "id193"} LitInt(0) <= newtype$check#176 && newtype$check#176 < 18446744073709551616;
    newtype$check#177 := u16#0;
    assert {:id "id194"} LitInt(0) <= newtype$check#177 && newtype$check#177 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(84,7)
    assume true;
    newtype$check#178 := LitInt(4294967295);
    assert {:id "id195"} LitInt(0) <= newtype$check#178 && newtype$check#178 < 4294967296;
    assume true;
    u32#0 := LitInt(4294967295);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(85,3)
    assume true;
    assume true;
    newtype$check#179 := u32#0;
    assert {:id "id197"} LitInt(-2147483648) <= newtype$check#179
       && newtype$check#179 < 9223372036854775808;
    newtype$check#180 := u32#0;
    assert {:id "id198"} LitInt(-2147483648) <= newtype$check#180
       && newtype$check#180 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#181 := u32#0;
    assert {:id "id199"} LitInt(0) <= newtype$check#181 && newtype$check#181 < 4294967296;
    newtype$check#182 := u32#0;
    assert {:id "id200"} LitInt(0) <= newtype$check#182 && newtype$check#182 < 4294967296;
    assume true;
    assume true;
    newtype$check#183 := u32#0;
    assert {:id "id201"} LitInt(0) <= newtype$check#183 && newtype$check#183 < 18446744073709551616;
    newtype$check#184 := u32#0;
    assert {:id "id202"} LitInt(0) <= newtype$check#184 && newtype$check#184 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(89,7)
    assume true;
    newtype$check#185 := LitInt(18446744073709551615);
    assert {:id "id203"} LitInt(0) <= newtype$check#185 && newtype$check#185 < 18446744073709551616;
    newtype$check#186 := LitInt(18446744073709551615);
    assert {:id "id204"} LitInt(0) <= newtype$check#186 && newtype$check#186 < 18446744073709551616;
    assume true;
    u64#0 := LitInt(18446744073709551615);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(90,3)
    assume true;
    assume true;
    newtype$check#187 := u64#0;
    assert {:id "id206"} LitInt(0) <= newtype$check#187 && newtype$check#187 < 18446744073709551616;
    newtype$check#188 := u64#0;
    assert {:id "id207"} LitInt(0) <= newtype$check#188 && newtype$check#188 < 18446744073709551616;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(93,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(94,5)
    assume true;
    assume true;
    i#0 := LitInt(255);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(95,3)
    newtype$check#189 := i#0;
    assert {:id "id209"} LitInt(0) <= newtype$check#189 && newtype$check#189 < 256;
    newtype$check#190 := i#0;
    assert {:id "id210"} LitInt(0) <= newtype$check#190 && newtype$check#190 < 256;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(97,5)
    assume true;
    assume true;
    i#0 := LitInt(65535);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(98,3)
    newtype$check#191 := i#0;
    assert {:id "id212"} LitInt(0) <= newtype$check#191 && newtype$check#191 < 65536;
    newtype$check#192 := i#0;
    assert {:id "id213"} LitInt(0) <= newtype$check#192 && newtype$check#192 < 65536;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(100,5)
    assume true;
    assume true;
    i#0 := LitInt(4294967295);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(101,3)
    newtype$check#193 := i#0;
    assert {:id "id215"} LitInt(0) <= newtype$check#193 && newtype$check#193 < 4294967296;
    newtype$check#194 := i#0;
    assert {:id "id216"} LitInt(0) <= newtype$check#194 && newtype$check#194 < 4294967296;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(103,5)
    assume true;
    assume true;
    i#0 := LitInt(18446744073709551615);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(104,3)
    newtype$check#195 := i#0;
    assert {:id "id218"} LitInt(0) <= newtype$check#195 && newtype$check#195 < 18446744073709551616;
    newtype$check#196 := i#0;
    assert {:id "id219"} LitInt(0) <= newtype$check#196 && newtype$check#196 < 18446744073709551616;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(106,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(107,20)
    assume true;
    assume true;
    s#0 := Lit(Set#Empty(): Set);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(108,3)
    assume true;
    assume true;
    newtype$check#197 := Set#Card(s#0);
    assert {:id "id221"} LitInt(-128) <= newtype$check#197 && newtype$check#197 < 128;
    newtype$check#198 := Set#Card(s#0);
    assert {:id "id222"} LitInt(-128) <= newtype$check#198 && newtype$check#198 < 128;
    assume true;
    assume true;
    newtype$check#199 := Set#Card(s#0);
    assert {:id "id223"} LitInt(-32768) <= newtype$check#199 && newtype$check#199 < 32768;
    newtype$check#200 := Set#Card(s#0);
    assert {:id "id224"} LitInt(-32768) <= newtype$check#200 && newtype$check#200 < 32768;
    assume true;
    assume true;
    newtype$check#201 := Set#Card(s#0);
    assert {:id "id225"} LitInt(-2147483648) <= newtype$check#201 && newtype$check#201 < 2147483648;
    newtype$check#202 := Set#Card(s#0);
    assert {:id "id226"} LitInt(-2147483648) <= newtype$check#202 && newtype$check#202 < 2147483648;
    assume true;
    assume true;
    newtype$check#203 := Set#Card(s#0);
    assert {:id "id227"} LitInt(-2147483648) <= newtype$check#203
       && newtype$check#203 < 9223372036854775808;
    newtype$check#204 := Set#Card(s#0);
    assert {:id "id228"} LitInt(-2147483648) <= newtype$check#204
       && newtype$check#204 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#205 := Set#Card(s#0);
    assert {:id "id229"} LitInt(0) <= newtype$check#205 && newtype$check#205 < 256;
    newtype$check#206 := Set#Card(s#0);
    assert {:id "id230"} LitInt(0) <= newtype$check#206 && newtype$check#206 < 256;
    assume true;
    assume true;
    newtype$check#207 := Set#Card(s#0);
    assert {:id "id231"} LitInt(0) <= newtype$check#207 && newtype$check#207 < 65536;
    newtype$check#208 := Set#Card(s#0);
    assert {:id "id232"} LitInt(0) <= newtype$check#208 && newtype$check#208 < 65536;
    assume true;
    assume true;
    newtype$check#209 := Set#Card(s#0);
    assert {:id "id233"} LitInt(0) <= newtype$check#209 && newtype$check#209 < 4294967296;
    newtype$check#210 := Set#Card(s#0);
    assert {:id "id234"} LitInt(0) <= newtype$check#210 && newtype$check#210 < 4294967296;
    assume true;
    assume true;
    newtype$check#211 := Set#Card(s#0);
    assert {:id "id235"} LitInt(0) <= newtype$check#211 && newtype$check#211 < 18446744073709551616;
    newtype$check#212 := Set#Card(s#0);
    assert {:id "id236"} LitInt(0) <= newtype$check#212 && newtype$check#212 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(112,25)
    assume true;
    assume true;
    m#0 := Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(113,3)
    assume true;
    assume true;
    newtype$check#213 := MultiSet#Card(m#0);
    assert {:id "id238"} LitInt(-128) <= newtype$check#213 && newtype$check#213 < 128;
    newtype$check#214 := MultiSet#Card(m#0);
    assert {:id "id239"} LitInt(-128) <= newtype$check#214 && newtype$check#214 < 128;
    assume true;
    assume true;
    newtype$check#215 := MultiSet#Card(m#0);
    assert {:id "id240"} LitInt(-32768) <= newtype$check#215 && newtype$check#215 < 32768;
    newtype$check#216 := MultiSet#Card(m#0);
    assert {:id "id241"} LitInt(-32768) <= newtype$check#216 && newtype$check#216 < 32768;
    assume true;
    assume true;
    newtype$check#217 := MultiSet#Card(m#0);
    assert {:id "id242"} LitInt(-2147483648) <= newtype$check#217 && newtype$check#217 < 2147483648;
    newtype$check#218 := MultiSet#Card(m#0);
    assert {:id "id243"} LitInt(-2147483648) <= newtype$check#218 && newtype$check#218 < 2147483648;
    assume true;
    assume true;
    newtype$check#219 := MultiSet#Card(m#0);
    assert {:id "id244"} LitInt(-2147483648) <= newtype$check#219
       && newtype$check#219 < 9223372036854775808;
    newtype$check#220 := MultiSet#Card(m#0);
    assert {:id "id245"} LitInt(-2147483648) <= newtype$check#220
       && newtype$check#220 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#221 := MultiSet#Card(m#0);
    assert {:id "id246"} LitInt(0) <= newtype$check#221 && newtype$check#221 < 256;
    newtype$check#222 := MultiSet#Card(m#0);
    assert {:id "id247"} LitInt(0) <= newtype$check#222 && newtype$check#222 < 256;
    assume true;
    assume true;
    newtype$check#223 := MultiSet#Card(m#0);
    assert {:id "id248"} LitInt(0) <= newtype$check#223 && newtype$check#223 < 65536;
    newtype$check#224 := MultiSet#Card(m#0);
    assert {:id "id249"} LitInt(0) <= newtype$check#224 && newtype$check#224 < 65536;
    assume true;
    assume true;
    newtype$check#225 := MultiSet#Card(m#0);
    assert {:id "id250"} LitInt(0) <= newtype$check#225 && newtype$check#225 < 4294967296;
    newtype$check#226 := MultiSet#Card(m#0);
    assert {:id "id251"} LitInt(0) <= newtype$check#226 && newtype$check#226 < 4294967296;
    assume true;
    assume true;
    newtype$check#227 := MultiSet#Card(m#0);
    assert {:id "id252"} LitInt(0) <= newtype$check#227 && newtype$check#227 < 18446744073709551616;
    newtype$check#228 := MultiSet#Card(m#0);
    assert {:id "id253"} LitInt(0) <= newtype$check#228 && newtype$check#228 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(117,20)
    assume true;
    assume true;
    q#0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(118,3)
    assume true;
    assume true;
    newtype$check#229 := Seq#Length(q#0);
    assert {:id "id255"} LitInt(-128) <= newtype$check#229 && newtype$check#229 < 128;
    newtype$check#230 := Seq#Length(q#0);
    assert {:id "id256"} LitInt(-128) <= newtype$check#230 && newtype$check#230 < 128;
    assume true;
    assume true;
    newtype$check#231 := Seq#Length(q#0);
    assert {:id "id257"} LitInt(-32768) <= newtype$check#231 && newtype$check#231 < 32768;
    newtype$check#232 := Seq#Length(q#0);
    assert {:id "id258"} LitInt(-32768) <= newtype$check#232 && newtype$check#232 < 32768;
    assume true;
    assume true;
    newtype$check#233 := Seq#Length(q#0);
    assert {:id "id259"} LitInt(-2147483648) <= newtype$check#233 && newtype$check#233 < 2147483648;
    newtype$check#234 := Seq#Length(q#0);
    assert {:id "id260"} LitInt(-2147483648) <= newtype$check#234 && newtype$check#234 < 2147483648;
    assume true;
    assume true;
    newtype$check#235 := Seq#Length(q#0);
    assert {:id "id261"} LitInt(-2147483648) <= newtype$check#235
       && newtype$check#235 < 9223372036854775808;
    newtype$check#236 := Seq#Length(q#0);
    assert {:id "id262"} LitInt(-2147483648) <= newtype$check#236
       && newtype$check#236 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#237 := Seq#Length(q#0);
    assert {:id "id263"} LitInt(0) <= newtype$check#237 && newtype$check#237 < 256;
    newtype$check#238 := Seq#Length(q#0);
    assert {:id "id264"} LitInt(0) <= newtype$check#238 && newtype$check#238 < 256;
    assume true;
    assume true;
    newtype$check#239 := Seq#Length(q#0);
    assert {:id "id265"} LitInt(0) <= newtype$check#239 && newtype$check#239 < 65536;
    newtype$check#240 := Seq#Length(q#0);
    assert {:id "id266"} LitInt(0) <= newtype$check#240 && newtype$check#240 < 65536;
    assume true;
    assume true;
    newtype$check#241 := Seq#Length(q#0);
    assert {:id "id267"} LitInt(0) <= newtype$check#241 && newtype$check#241 < 4294967296;
    newtype$check#242 := Seq#Length(q#0);
    assert {:id "id268"} LitInt(0) <= newtype$check#242 && newtype$check#242 < 4294967296;
    assume true;
    assume true;
    newtype$check#243 := Seq#Length(q#0);
    assert {:id "id269"} LitInt(0) <= newtype$check#243 && newtype$check#243 < 18446744073709551616;
    newtype$check#244 := Seq#Length(q#0);
    assert {:id "id270"} LitInt(0) <= newtype$check#244 && newtype$check#244 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(122,28)
    assume true;
    assume true;
    p#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, 
            $Box(LitInt(1)), 
            $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(111))), $Box(char#FromInt(110))), 
                  $Box(char#FromInt(101)))))), 
          $Box(LitInt(2)), 
          $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(116))), $Box(char#FromInt(119))), 
                $Box(char#FromInt(111)))))), 
        $Box(LitInt(3)), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(116))), $Box(char#FromInt(104))), 
                  $Box(char#FromInt(114))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(101)))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(123,3)
    assume true;
    assume true;
    newtype$check#245 := Map#Card(p#0);
    assert {:id "id272"} LitInt(-128) <= newtype$check#245 && newtype$check#245 < 128;
    newtype$check#246 := Map#Card(p#0);
    assert {:id "id273"} LitInt(-128) <= newtype$check#246 && newtype$check#246 < 128;
    assume true;
    assume true;
    newtype$check#247 := Map#Card(p#0);
    assert {:id "id274"} LitInt(-32768) <= newtype$check#247 && newtype$check#247 < 32768;
    newtype$check#248 := Map#Card(p#0);
    assert {:id "id275"} LitInt(-32768) <= newtype$check#248 && newtype$check#248 < 32768;
    assume true;
    assume true;
    newtype$check#249 := Map#Card(p#0);
    assert {:id "id276"} LitInt(-2147483648) <= newtype$check#249 && newtype$check#249 < 2147483648;
    newtype$check#250 := Map#Card(p#0);
    assert {:id "id277"} LitInt(-2147483648) <= newtype$check#250 && newtype$check#250 < 2147483648;
    assume true;
    assume true;
    newtype$check#251 := Map#Card(p#0);
    assert {:id "id278"} LitInt(-2147483648) <= newtype$check#251
       && newtype$check#251 < 9223372036854775808;
    newtype$check#252 := Map#Card(p#0);
    assert {:id "id279"} LitInt(-2147483648) <= newtype$check#252
       && newtype$check#252 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#253 := Map#Card(p#0);
    assert {:id "id280"} LitInt(0) <= newtype$check#253 && newtype$check#253 < 256;
    newtype$check#254 := Map#Card(p#0);
    assert {:id "id281"} LitInt(0) <= newtype$check#254 && newtype$check#254 < 256;
    assume true;
    assume true;
    newtype$check#255 := Map#Card(p#0);
    assert {:id "id282"} LitInt(0) <= newtype$check#255 && newtype$check#255 < 65536;
    newtype$check#256 := Map#Card(p#0);
    assert {:id "id283"} LitInt(0) <= newtype$check#256 && newtype$check#256 < 65536;
    assume true;
    assume true;
    newtype$check#257 := Map#Card(p#0);
    assert {:id "id284"} LitInt(0) <= newtype$check#257 && newtype$check#257 < 4294967296;
    newtype$check#258 := Map#Card(p#0);
    assert {:id "id285"} LitInt(0) <= newtype$check#258 && newtype$check#258 < 4294967296;
    assume true;
    assume true;
    newtype$check#259 := Map#Card(p#0);
    assert {:id "id286"} LitInt(0) <= newtype$check#259 && newtype$check#259 < 18446744073709551616;
    newtype$check#260 := Map#Card(p#0);
    assert {:id "id287"} LitInt(0) <= newtype$check#260 && newtype$check#260 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(127,22)
    assume true;
    assert {:id "id288"} 0 <= LitInt(4);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(4);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(128,3)
    assert {:id "id290"} {:subsumption 0} a#0 != null;
    assume true;
    assume true;
    assert {:id "id291"} {:subsumption 0} a#0 != null;
    newtype$check#261 := _System.array.Length(a#0);
    assert {:id "id292"} LitInt(-128) <= newtype$check#261 && newtype$check#261 < 128;
    newtype$check#262 := _System.array.Length(a#0);
    assert {:id "id293"} LitInt(-128) <= newtype$check#262 && newtype$check#262 < 128;
    assume true;
    assume true;
    assert {:id "id294"} {:subsumption 0} a#0 != null;
    newtype$check#263 := _System.array.Length(a#0);
    assert {:id "id295"} LitInt(-32768) <= newtype$check#263 && newtype$check#263 < 32768;
    newtype$check#264 := _System.array.Length(a#0);
    assert {:id "id296"} LitInt(-32768) <= newtype$check#264 && newtype$check#264 < 32768;
    assume true;
    assume true;
    assert {:id "id297"} {:subsumption 0} a#0 != null;
    newtype$check#265 := _System.array.Length(a#0);
    assert {:id "id298"} LitInt(-2147483648) <= newtype$check#265 && newtype$check#265 < 2147483648;
    newtype$check#266 := _System.array.Length(a#0);
    assert {:id "id299"} LitInt(-2147483648) <= newtype$check#266 && newtype$check#266 < 2147483648;
    assume true;
    assume true;
    assert {:id "id300"} {:subsumption 0} a#0 != null;
    newtype$check#267 := _System.array.Length(a#0);
    assert {:id "id301"} LitInt(-2147483648) <= newtype$check#267
       && newtype$check#267 < 9223372036854775808;
    newtype$check#268 := _System.array.Length(a#0);
    assert {:id "id302"} LitInt(-2147483648) <= newtype$check#268
       && newtype$check#268 < 9223372036854775808;
    assume true;
    assume true;
    assert {:id "id303"} {:subsumption 0} a#0 != null;
    newtype$check#269 := _System.array.Length(a#0);
    assert {:id "id304"} LitInt(0) <= newtype$check#269 && newtype$check#269 < 256;
    newtype$check#270 := _System.array.Length(a#0);
    assert {:id "id305"} LitInt(0) <= newtype$check#270 && newtype$check#270 < 256;
    assume true;
    assume true;
    assert {:id "id306"} {:subsumption 0} a#0 != null;
    newtype$check#271 := _System.array.Length(a#0);
    assert {:id "id307"} LitInt(0) <= newtype$check#271 && newtype$check#271 < 65536;
    newtype$check#272 := _System.array.Length(a#0);
    assert {:id "id308"} LitInt(0) <= newtype$check#272 && newtype$check#272 < 65536;
    assume true;
    assume true;
    assert {:id "id309"} {:subsumption 0} a#0 != null;
    newtype$check#273 := _System.array.Length(a#0);
    assert {:id "id310"} LitInt(0) <= newtype$check#273 && newtype$check#273 < 4294967296;
    newtype$check#274 := _System.array.Length(a#0);
    assert {:id "id311"} LitInt(0) <= newtype$check#274 && newtype$check#274 < 4294967296;
    assume true;
    assume true;
    assert {:id "id312"} {:subsumption 0} a#0 != null;
    newtype$check#275 := _System.array.Length(a#0);
    assert {:id "id313"} LitInt(0) <= newtype$check#275 && newtype$check#275 < 18446744073709551616;
    newtype$check#276 := _System.array.Length(a#0);
    assert {:id "id314"} LitInt(0) <= newtype$check#276 && newtype$check#276 < 18446744073709551616;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(132,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(133,16)
    assume true;
    assume true;
    c#0 := Lit(char#FromInt(67));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(134,3)
    assume true;
    assume true;
    assume true;
    assume true;
    newtype$check#277 := char#ToInt(c#0);
    assert {:id "id316"} LitInt(-128) <= newtype$check#277 && newtype$check#277 < 128;
    newtype$check#278 := char#ToInt(c#0);
    assert {:id "id317"} LitInt(-128) <= newtype$check#278 && newtype$check#278 < 128;
    assume true;
    assume true;
    newtype$check#279 := char#ToInt(c#0);
    assert {:id "id318"} LitInt(-32768) <= newtype$check#279 && newtype$check#279 < 32768;
    newtype$check#280 := char#ToInt(c#0);
    assert {:id "id319"} LitInt(-32768) <= newtype$check#280 && newtype$check#280 < 32768;
    assume true;
    assume true;
    newtype$check#281 := char#ToInt(c#0);
    assert {:id "id320"} LitInt(-2147483648) <= newtype$check#281 && newtype$check#281 < 2147483648;
    newtype$check#282 := char#ToInt(c#0);
    assert {:id "id321"} LitInt(-2147483648) <= newtype$check#282 && newtype$check#282 < 2147483648;
    assume true;
    assume true;
    newtype$check#283 := char#ToInt(c#0);
    assert {:id "id322"} LitInt(-2147483648) <= newtype$check#283
       && newtype$check#283 < 9223372036854775808;
    newtype$check#284 := char#ToInt(c#0);
    assert {:id "id323"} LitInt(-2147483648) <= newtype$check#284
       && newtype$check#284 < 9223372036854775808;
    assume true;
    assume true;
    newtype$check#285 := char#ToInt(c#0);
    assert {:id "id324"} LitInt(0) <= newtype$check#285 && newtype$check#285 < 256;
    newtype$check#286 := char#ToInt(c#0);
    assert {:id "id325"} LitInt(0) <= newtype$check#286 && newtype$check#286 < 256;
    assume true;
    assume true;
    newtype$check#287 := char#ToInt(c#0);
    assert {:id "id326"} LitInt(0) <= newtype$check#287 && newtype$check#287 < 65536;
    newtype$check#288 := char#ToInt(c#0);
    assert {:id "id327"} LitInt(0) <= newtype$check#288 && newtype$check#288 < 65536;
    assume true;
    assume true;
    newtype$check#289 := char#ToInt(c#0);
    assert {:id "id328"} LitInt(0) <= newtype$check#289 && newtype$check#289 < 4294967296;
    newtype$check#290 := char#ToInt(c#0);
    assert {:id "id329"} LitInt(0) <= newtype$check#290 && newtype$check#290 < 4294967296;
    assume true;
    assume true;
    newtype$check#291 := char#ToInt(c#0);
    assert {:id "id330"} LitInt(0) <= newtype$check#291 && newtype$check#291 < 18446744073709551616;
    newtype$check#292 := char#ToInt(c#0);
    assert {:id "id331"} LitInt(0) <= newtype$check#292 && newtype$check#292 < 18446744073709551616;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(138,5)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(138,13)
    assume true;
    newtype$check#293 := i#0;
    assert {:id "id333"} char#IsChar(newtype$check#293);
    assume true;
    c#0 := char#FromInt(i#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(138,29)
    assume true;
    assume true;
    i#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(139,6)
    assume true;
    newtype$check#294 := LitInt(127);
    assert {:id "id336"} LitInt(-128) <= newtype$check#294 && newtype$check#294 < 128;
    assume true;
    i8#0 := LitInt(127);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(139,17)
    assume true;
    newtype$check#295 := i8#0;
    assert {:id "id338"} char#IsChar(newtype$check#295);
    assume true;
    c#0 := char#FromInt(i8#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(139,35)
    assume true;
    newtype$check#296 := char#ToInt(c#0);
    assert {:id "id340"} LitInt(-128) <= newtype$check#296 && newtype$check#296 < 128;
    newtype$check#297 := char#ToInt(c#0);
    assert {:id "id341"} LitInt(-128) <= newtype$check#297 && newtype$check#297 < 128;
    assume true;
    i8#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(140,6)
    assume true;
    newtype$check#298 := LitInt(255);
    assert {:id "id343"} LitInt(0) <= newtype$check#298 && newtype$check#298 < 256;
    assume true;
    u8#0 := LitInt(255);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(140,17)
    assume true;
    newtype$check#299 := u8#0;
    assert {:id "id345"} char#IsChar(newtype$check#299);
    assume true;
    c#0 := char#FromInt(u8#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(140,35)
    assume true;
    newtype$check#300 := char#ToInt(c#0);
    assert {:id "id347"} LitInt(0) <= newtype$check#300 && newtype$check#300 < 256;
    newtype$check#301 := char#ToInt(c#0);
    assert {:id "id348"} LitInt(0) <= newtype$check#301 && newtype$check#301 < 256;
    assume true;
    u8#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(141,7)
    assume true;
    newtype$check#302 := LitInt(32767);
    assert {:id "id350"} LitInt(-32768) <= newtype$check#302 && newtype$check#302 < 32768;
    assume true;
    i16#0 := LitInt(32767);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(141,20)
    assume true;
    newtype$check#303 := i16#0;
    assert {:id "id352"} char#IsChar(newtype$check#303);
    assume true;
    c#0 := char#FromInt(i16#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(141,40)
    assume true;
    newtype$check#304 := char#ToInt(c#0);
    assert {:id "id354"} LitInt(-32768) <= newtype$check#304 && newtype$check#304 < 32768;
    newtype$check#305 := char#ToInt(c#0);
    assert {:id "id355"} LitInt(-32768) <= newtype$check#305 && newtype$check#305 < 32768;
    assume true;
    i16#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(142,7)
    assume true;
    newtype$check#306 := LitInt(65535);
    assert {:id "id357"} LitInt(0) <= newtype$check#306 && newtype$check#306 < 65536;
    assume true;
    u16#0 := LitInt(65535);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(142,20)
    assume true;
    newtype$check#307 := u16#0;
    assert {:id "id359"} char#IsChar(newtype$check#307);
    assume true;
    c#0 := char#FromInt(u16#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(142,40)
    assume true;
    newtype$check#308 := char#ToInt(c#0);
    assert {:id "id361"} LitInt(0) <= newtype$check#308 && newtype$check#308 < 65536;
    newtype$check#309 := char#ToInt(c#0);
    assert {:id "id362"} LitInt(0) <= newtype$check#309 && newtype$check#309 < 65536;
    assume true;
    u16#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(143,7)
    assume true;
    newtype$check#310 := LitInt(65535);
    assert {:id "id364"} LitInt(-2147483648) <= newtype$check#310 && newtype$check#310 < 2147483648;
    assume true;
    i32#0 := LitInt(65535);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(143,20)
    assume true;
    newtype$check#311 := i32#0;
    assert {:id "id366"} char#IsChar(newtype$check#311);
    assume true;
    c#0 := char#FromInt(i32#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(143,40)
    assume true;
    newtype$check#312 := char#ToInt(c#0);
    assert {:id "id368"} LitInt(-2147483648) <= newtype$check#312 && newtype$check#312 < 2147483648;
    newtype$check#313 := char#ToInt(c#0);
    assert {:id "id369"} LitInt(-2147483648) <= newtype$check#313 && newtype$check#313 < 2147483648;
    assume true;
    i32#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(144,7)
    assume true;
    newtype$check#314 := LitInt(65535);
    assert {:id "id371"} LitInt(0) <= newtype$check#314 && newtype$check#314 < 4294967296;
    assume true;
    u32#0 := LitInt(65535);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(144,20)
    assume true;
    newtype$check#315 := u32#0;
    assert {:id "id373"} char#IsChar(newtype$check#315);
    assume true;
    c#0 := char#FromInt(u32#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(144,40)
    assume true;
    newtype$check#316 := char#ToInt(c#0);
    assert {:id "id375"} LitInt(0) <= newtype$check#316 && newtype$check#316 < 4294967296;
    newtype$check#317 := char#ToInt(c#0);
    assert {:id "id376"} LitInt(0) <= newtype$check#317 && newtype$check#317 < 4294967296;
    assume true;
    u32#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(145,7)
    assume true;
    newtype$check#318 := LitInt(65535);
    assert {:id "id378"} LitInt(-2147483648) <= newtype$check#318
       && newtype$check#318 < 9223372036854775808;
    assume true;
    i64#0 := LitInt(65535);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(145,20)
    assume true;
    newtype$check#319 := i64#0;
    assert {:id "id380"} char#IsChar(newtype$check#319);
    assume true;
    c#0 := char#FromInt(i64#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(145,40)
    assume true;
    newtype$check#320 := char#ToInt(c#0);
    assert {:id "id382"} LitInt(-2147483648) <= newtype$check#320
       && newtype$check#320 < 9223372036854775808;
    newtype$check#321 := char#ToInt(c#0);
    assert {:id "id383"} LitInt(-2147483648) <= newtype$check#321
       && newtype$check#321 < 9223372036854775808;
    assume true;
    i64#0 := char#ToInt(c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(146,7)
    assume true;
    newtype$check#322 := LitInt(65535);
    assert {:id "id385"} LitInt(0) <= newtype$check#322 && newtype$check#322 < 18446744073709551616;
    assume true;
    u64#0 := LitInt(65535);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(146,20)
    assume true;
    newtype$check#323 := u64#0;
    assert {:id "id387"} char#IsChar(newtype$check#323);
    assume true;
    c#0 := char#FromInt(u64#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(146,40)
    assume true;
    newtype$check#324 := char#ToInt(c#0);
    assert {:id "id389"} LitInt(0) <= newtype$check#324 && newtype$check#324 < 18446744073709551616;
    newtype$check#325 := char#ToInt(c#0);
    assert {:id "id390"} LitInt(0) <= newtype$check#325 && newtype$check#325 < 18446744073709551616;
    assume true;
    u64#0 := char#ToInt(c#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(147,3)
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
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(150,3)
    assume true;
}



procedure {:verboseName "Gimmie (well-formedness)"} CheckWellFormed$$_module.__default.Gimmie(_module._default.Gimmie$T: Ty)
   returns (ans#0: Box
       where $IsBox(ans#0, _module._default.Gimmie$T)
         && $IsAllocBox(ans#0, _module._default.Gimmie$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Gimmie (call)"} Call$$_module.__default.Gimmie(_module._default.Gimmie$T: Ty)
   returns (ans#0: Box
       where $IsBox(ans#0, _module._default.Gimmie$T)
         && $IsAllocBox(ans#0, _module._default.Gimmie$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Gimmie (correctness)"} Impl$$_module.__default.Gimmie(_module._default.Gimmie$T: Ty)
   returns (ans#0: Box
       where $IsBox(ans#0, _module._default.Gimmie$T)
         && $IsAllocBox(ans#0, _module._default.Gimmie$T, $Heap), 
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



procedure {:verboseName "DefaultTests (well-formedness)"} CheckWellFormed$$_module.__default.DefaultTests();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DefaultTests (call)"} Call$$_module.__default.DefaultTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DefaultTests (correctness)"} Impl$$_module.__default.DefaultTests() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.int8() : Ty
uses {
// Tclass._module.int8 Tag
axiom Tag(Tclass._module.int8()) == Tagclass._module.int8
   && TagFamily(Tclass._module.int8()) == tytagFamily$int8;
}

const unique Tagclass._module.int8: TyTag;

// Box/unbox axiom for Tclass._module.int8
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int8()) } 
  $IsBox(bx, Tclass._module.int8())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int8()));

function Tclass._module.int16() : Ty
uses {
// Tclass._module.int16 Tag
axiom Tag(Tclass._module.int16()) == Tagclass._module.int16
   && TagFamily(Tclass._module.int16()) == tytagFamily$int16;
}

const unique Tagclass._module.int16: TyTag;

// Box/unbox axiom for Tclass._module.int16
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int16()) } 
  $IsBox(bx, Tclass._module.int16())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int16()));

function Tclass._module.int32() : Ty
uses {
// Tclass._module.int32 Tag
axiom Tag(Tclass._module.int32()) == Tagclass._module.int32
   && TagFamily(Tclass._module.int32()) == tytagFamily$int32;
}

const unique Tagclass._module.int32: TyTag;

// Box/unbox axiom for Tclass._module.int32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int32()) } 
  $IsBox(bx, Tclass._module.int32())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int32()));

function Tclass._module.int64() : Ty
uses {
// Tclass._module.int64 Tag
axiom Tag(Tclass._module.int64()) == Tagclass._module.int64
   && TagFamily(Tclass._module.int64()) == tytagFamily$int64;
}

const unique Tagclass._module.int64: TyTag;

// Box/unbox axiom for Tclass._module.int64
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int64()) } 
  $IsBox(bx, Tclass._module.int64())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int64()));

function Tclass._module.uint8() : Ty
uses {
// Tclass._module.uint8 Tag
axiom Tag(Tclass._module.uint8()) == Tagclass._module.uint8
   && TagFamily(Tclass._module.uint8()) == tytagFamily$uint8;
}

const unique Tagclass._module.uint8: TyTag;

// Box/unbox axiom for Tclass._module.uint8
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint8()) } 
  $IsBox(bx, Tclass._module.uint8())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint8()));

function Tclass._module.uint16() : Ty
uses {
// Tclass._module.uint16 Tag
axiom Tag(Tclass._module.uint16()) == Tagclass._module.uint16
   && TagFamily(Tclass._module.uint16()) == tytagFamily$uint16;
}

const unique Tagclass._module.uint16: TyTag;

// Box/unbox axiom for Tclass._module.uint16
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint16()) } 
  $IsBox(bx, Tclass._module.uint16())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint16()));

function Tclass._module.uint32() : Ty
uses {
// Tclass._module.uint32 Tag
axiom Tag(Tclass._module.uint32()) == Tagclass._module.uint32
   && TagFamily(Tclass._module.uint32()) == tytagFamily$uint32;
}

const unique Tagclass._module.uint32: TyTag;

// Box/unbox axiom for Tclass._module.uint32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint32()) } 
  $IsBox(bx, Tclass._module.uint32())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint32()));

function Tclass._module.uint64() : Ty
uses {
// Tclass._module.uint64 Tag
axiom Tag(Tclass._module.uint64()) == Tagclass._module.uint64
   && TagFamily(Tclass._module.uint64()) == tytagFamily$uint64;
}

const unique Tagclass._module.uint64: TyTag;

// Box/unbox axiom for Tclass._module.uint64
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint64()) } 
  $IsBox(bx, Tclass._module.uint64())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.uint64()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultTests (correctness)"} Impl$$_module.__default.DefaultTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $rhs##0: int;
  var $tmp##0: Box;
  var i8#0: int where LitInt(-128) <= i8#0 && i8#0 < 128;
  var $rhs##1: int;
  var $tmp##1: Box;
  var i16#0: int where LitInt(-32768) <= i16#0 && i16#0 < 32768;
  var $rhs##2: int;
  var $tmp##2: Box;
  var i32#0: int where LitInt(-2147483648) <= i32#0 && i32#0 < 2147483648;
  var $rhs##3: int;
  var $tmp##3: Box;
  var i64#0: int where LitInt(-2147483648) <= i64#0 && i64#0 < 9223372036854775808;
  var $rhs##4: int;
  var $tmp##4: Box;
  var u8#0: int where LitInt(0) <= u8#0 && u8#0 < 256;
  var $rhs##5: int;
  var $tmp##5: Box;
  var u16#0: int where LitInt(0) <= u16#0 && u16#0 < 65536;
  var $rhs##6: int;
  var $tmp##6: Box;
  var u32#0: int where LitInt(0) <= u32#0 && u32#0 < 4294967296;
  var $rhs##7: int;
  var $tmp##7: Box;
  var u64#0: int where LitInt(0) <= u64#0 && u64#0 < 18446744073709551616;
  var $rhs##8: int;
  var $tmp##8: Box;

    // AddMethodImpl: DefaultTests, Impl$$_module.__default.DefaultTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(156,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(158,24)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id392"} $tmp##0 := Call$$_module.__default.Gimmie(TInt);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    i#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(159,26)
    assume true;
    // TrCallStmt: Adding lhs with type int8
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id394"} $tmp##1 := Call$$_module.__default.Gimmie(Tclass._module.int8());
    havoc $rhs##1;
    assume $rhs##1 == $Unbox($tmp##1): int;
    // TrCallStmt: After ProcessCallStmt
    i8#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(160,28)
    assume true;
    // TrCallStmt: Adding lhs with type int16
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id396"} $tmp##2 := Call$$_module.__default.Gimmie(Tclass._module.int16());
    havoc $rhs##2;
    assume $rhs##2 == $Unbox($tmp##2): int;
    // TrCallStmt: After ProcessCallStmt
    i16#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(161,28)
    assume true;
    // TrCallStmt: Adding lhs with type int32
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id398"} $tmp##3 := Call$$_module.__default.Gimmie(Tclass._module.int32());
    havoc $rhs##3;
    assume $rhs##3 == $Unbox($tmp##3): int;
    // TrCallStmt: After ProcessCallStmt
    i32#0 := $rhs##3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(162,28)
    assume true;
    // TrCallStmt: Adding lhs with type int64
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id400"} $tmp##4 := Call$$_module.__default.Gimmie(Tclass._module.int64());
    havoc $rhs##4;
    assume $rhs##4 == $Unbox($tmp##4): int;
    // TrCallStmt: After ProcessCallStmt
    i64#0 := $rhs##4;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(163,27)
    assume true;
    // TrCallStmt: Adding lhs with type uint8
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id402"} $tmp##5 := Call$$_module.__default.Gimmie(Tclass._module.uint8());
    havoc $rhs##5;
    assume $rhs##5 == $Unbox($tmp##5): int;
    // TrCallStmt: After ProcessCallStmt
    u8#0 := $rhs##5;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(164,29)
    assume true;
    // TrCallStmt: Adding lhs with type uint16
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id404"} $tmp##6 := Call$$_module.__default.Gimmie(Tclass._module.uint16());
    havoc $rhs##6;
    assume $rhs##6 == $Unbox($tmp##6): int;
    // TrCallStmt: After ProcessCallStmt
    u16#0 := $rhs##6;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(165,29)
    assume true;
    // TrCallStmt: Adding lhs with type uint32
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id406"} $tmp##7 := Call$$_module.__default.Gimmie(Tclass._module.uint32());
    havoc $rhs##7;
    assume $rhs##7 == $Unbox($tmp##7): int;
    // TrCallStmt: After ProcessCallStmt
    u32#0 := $rhs##7;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(166,29)
    assume true;
    // TrCallStmt: Adding lhs with type uint64
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id408"} $tmp##8 := Call$$_module.__default.Gimmie(Tclass._module.uint64());
    havoc $rhs##8;
    assume $rhs##8 == $Unbox($tmp##8): int;
    // TrCallStmt: After ProcessCallStmt
    u64#0 := $rhs##8;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(168,3)
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
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(171,3)
    assume true;
}



procedure {:verboseName "Int8Test (well-formedness)"} CheckWellFormed$$_module.__default.Int8Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Int8Test (call)"} Call$$_module.__default.Int8Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Int8Test (correctness)"} Impl$$_module.__default.Int8Test() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Int8Test (correctness)"} Impl$$_module.__default.Int8Test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int where LitInt(-128) <= a#0 && a#0 < 128;
  var b#0: int where LitInt(-128) <= b#0 && b#0 < 128;
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var r0#0: int where LitInt(-128) <= r0#0 && r0#0 < 128;
  var $rhs##0: int;
  var m##0: int;
  var n##0: int;
  var r1#0: int where LitInt(-128) <= r1#0 && r1#0 < 128;
  var $rhs##1: int;
  var m##1: int;
  var n##1: int;
  var r2#0: int where LitInt(-128) <= r2#0 && r2#0 < 128;
  var $rhs##2: int;
  var m##2: int;
  var newtype$check#2: int;
  var n##2: int;

    // AddMethodImpl: Int8Test, Impl$$_module.__default.Int8Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(176,3)
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(178,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(20);
    assert {:id "id410"} LitInt(-128) <= newtype$check#0 && newtype$check#0 < 128;
    assume true;
    $rhs#0 := LitInt(20);
    newtype$check#1 := LitInt(30);
    assert {:id "id412"} LitInt(-128) <= newtype$check#1 && newtype$check#1 < 128;
    assume true;
    $rhs#1 := LitInt(30);
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(179,18)
    assume true;
    // TrCallStmt: Adding lhs with type int8
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := b#0;
    call {:id "id416"} $rhs##0 := Call$$_module.__default.MInt8(m##0, n##0);
    // TrCallStmt: After ProcessCallStmt
    r0#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(180,18)
    assume true;
    // TrCallStmt: Adding lhs with type int8
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##1 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := a#0;
    call {:id "id418"} $rhs##1 := Call$$_module.__default.MInt8(m##1, n##1);
    // TrCallStmt: After ProcessCallStmt
    r1#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(181,18)
    assume true;
    // TrCallStmt: Adding lhs with type int8
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#2 := LitInt(-2);
    assert {:id "id420"} LitInt(-128) <= newtype$check#2 && newtype$check#2 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##2 := LitInt(-2);
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := b#0;
    call {:id "id421"} $rhs##2 := Call$$_module.__default.MInt8(m##2, n##2);
    // TrCallStmt: After ProcessCallStmt
    r2#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(182,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(183,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(185,3)
    assume true;
}



procedure {:verboseName "MInt8 (well-formedness)"} CheckWellFormed$$_module.__default.MInt8(m#0: int where LitInt(-128) <= m#0 && m#0 < 128, 
    n#0: int where LitInt(-128) <= n#0 && n#0 < 128)
   returns (r#0: int where LitInt(-128) <= r#0 && r#0 < 128);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MInt8 (call)"} Call$$_module.__default.MInt8(m#0: int where LitInt(-128) <= m#0 && m#0 < 128, 
    n#0: int where LitInt(-128) <= n#0 && n#0 < 128)
   returns (r#0: int where LitInt(-128) <= r#0 && r#0 < 128);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MInt8 (correctness)"} Impl$$_module.__default.MInt8(m#0: int where LitInt(-128) <= m#0 && m#0 < 128, 
    n#0: int where LitInt(-128) <= n#0 && n#0 < 128)
   returns (r#0: int where LitInt(-128) <= r#0 && r#0 < 128, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MInt8 (correctness)"} Impl$$_module.__default.MInt8(m#0: int, n#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#0_0: int;
  var newtype$check#1_0_0: int;
  var newtype$check#1_1_0: int;

    // AddMethodImpl: MInt8, Impl$$_module.__default.MInt8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(189,3)
    newtype$check#0 := LitInt(0);
    assert {:id "id423"} LitInt(-128) <= newtype$check#0 && newtype$check#0 < 128;
    if (0 <= m#0)
    {
        newtype$check#1 := LitInt(0);
        assert {:id "id424"} LitInt(-128) <= newtype$check#1 && newtype$check#1 < 128;
    }

    assume true;
    if (m#0 < 0 || n#0 < 0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(190,7)
        assume true;
        newtype$check#0_0 := LitInt(18);
        assert {:id "id425"} LitInt(-128) <= newtype$check#0_0 && newtype$check#0_0 < 128;
        assume true;
        r#0 := LitInt(18);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(191,10)
        assume true;
        if (m#0 < n#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(192,7)
            assume true;
            newtype$check#1_0_0 := n#0 - m#0;
            assert {:id "id427"} LitInt(-128) <= newtype$check#1_0_0 && newtype$check#1_0_0 < 128;
            assume true;
            r#0 := n#0 - m#0;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(194,7)
            assume true;
            newtype$check#1_1_0 := m#0 - n#0;
            assert {:id "id429"} LitInt(-128) <= newtype$check#1_1_0 && newtype$check#1_1_0 < 128;
            assume true;
            r#0 := m#0 - n#0;
        }
    }
}



procedure {:verboseName "Int16Test (well-formedness)"} CheckWellFormed$$_module.__default.Int16Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Int16Test (call)"} Call$$_module.__default.Int16Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Int16Test (correctness)"} Impl$$_module.__default.Int16Test() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Int16Test (correctness)"} Impl$$_module.__default.Int16Test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int where LitInt(-32768) <= a#0 && a#0 < 32768;
  var b#0: int where LitInt(-32768) <= b#0 && b#0 < 32768;
  var $rhs#0: int;
  var newtype$check#0: int;
  var $rhs#1: int;
  var newtype$check#1: int;
  var r0#0: int where LitInt(-32768) <= r0#0 && r0#0 < 32768;
  var $rhs##0: int;
  var m##0: int;
  var n##0: int;
  var r1#0: int where LitInt(-32768) <= r1#0 && r1#0 < 32768;
  var $rhs##1: int;
  var m##1: int;
  var n##1: int;
  var r2#0: int where LitInt(-32768) <= r2#0 && r2#0 < 32768;
  var $rhs##2: int;
  var m##2: int;
  var newtype$check#2: int;
  var n##2: int;

    // AddMethodImpl: Int16Test, Impl$$_module.__default.Int16Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(199,3)
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(200,12)
    assume true;
    assume true;
    newtype$check#0 := LitInt(20);
    assert {:id "id431"} LitInt(-32768) <= newtype$check#0 && newtype$check#0 < 32768;
    assume true;
    $rhs#0 := LitInt(20);
    newtype$check#1 := LitInt(30);
    assert {:id "id433"} LitInt(-32768) <= newtype$check#1 && newtype$check#1 < 32768;
    assume true;
    $rhs#1 := LitInt(30);
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(201,19)
    assume true;
    // TrCallStmt: Adding lhs with type int16
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := b#0;
    call {:id "id437"} $rhs##0 := Call$$_module.__default.MInt16(m##0, n##0);
    // TrCallStmt: After ProcessCallStmt
    r0#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(202,19)
    assume true;
    // TrCallStmt: Adding lhs with type int16
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##1 := b#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := a#0;
    call {:id "id439"} $rhs##1 := Call$$_module.__default.MInt16(m##1, n##1);
    // TrCallStmt: After ProcessCallStmt
    r1#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(203,19)
    assume true;
    // TrCallStmt: Adding lhs with type int16
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#2 := LitInt(-2);
    assert {:id "id441"} LitInt(-32768) <= newtype$check#2 && newtype$check#2 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##2 := LitInt(-2);
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := b#0;
    call {:id "id442"} $rhs##2 := Call$$_module.__default.MInt16(m##2, n##2);
    // TrCallStmt: After ProcessCallStmt
    r2#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(204,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(205,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(207,3)
    assume true;
}



procedure {:verboseName "MInt16 (well-formedness)"} CheckWellFormed$$_module.__default.MInt16(m#0: int where LitInt(-32768) <= m#0 && m#0 < 32768, 
    n#0: int where LitInt(-32768) <= n#0 && n#0 < 32768)
   returns (r#0: int where LitInt(-32768) <= r#0 && r#0 < 32768);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MInt16 (call)"} Call$$_module.__default.MInt16(m#0: int where LitInt(-32768) <= m#0 && m#0 < 32768, 
    n#0: int where LitInt(-32768) <= n#0 && n#0 < 32768)
   returns (r#0: int where LitInt(-32768) <= r#0 && r#0 < 32768);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MInt16 (correctness)"} Impl$$_module.__default.MInt16(m#0: int where LitInt(-32768) <= m#0 && m#0 < 32768, 
    n#0: int where LitInt(-32768) <= n#0 && n#0 < 32768)
   returns (r#0: int where LitInt(-32768) <= r#0 && r#0 < 32768, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MInt16 (correctness)"} Impl$$_module.__default.MInt16(m#0: int, n#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#0_0: int;
  var newtype$check#1_0_0: int;
  var newtype$check#1_1_0: int;

    // AddMethodImpl: MInt16, Impl$$_module.__default.MInt16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(211,3)
    newtype$check#0 := LitInt(0);
    assert {:id "id444"} LitInt(-32768) <= newtype$check#0 && newtype$check#0 < 32768;
    if (0 <= m#0)
    {
        newtype$check#1 := LitInt(0);
        assert {:id "id445"} LitInt(-32768) <= newtype$check#1 && newtype$check#1 < 32768;
    }

    assume true;
    if (m#0 < 0 || n#0 < 0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(212,7)
        assume true;
        newtype$check#0_0 := LitInt(18);
        assert {:id "id446"} LitInt(-32768) <= newtype$check#0_0 && newtype$check#0_0 < 32768;
        assume true;
        r#0 := LitInt(18);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(213,10)
        assume true;
        if (m#0 < n#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(214,7)
            assume true;
            newtype$check#1_0_0 := n#0 - m#0;
            assert {:id "id448"} LitInt(-32768) <= newtype$check#1_0_0 && newtype$check#1_0_0 < 32768;
            assume true;
            r#0 := n#0 - m#0;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(216,7)
            assume true;
            newtype$check#1_1_0 := m#0 - n#0;
            assert {:id "id450"} LitInt(-32768) <= newtype$check#1_1_0 && newtype$check#1_1_0 < 32768;
            assume true;
            r#0 := m#0 - n#0;
        }
    }
}



procedure {:verboseName "BvTests (well-formedness)"} CheckWellFormed$$_module.__default.BvTests();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BvTests (call)"} Call$$_module.__default.BvTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BvTests (correctness)"} Impl$$_module.__default.BvTests() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BvTests (correctness)"} Impl$$_module.__default.BvTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: bv8;
  var b#0: bv7;
  var c#0: bv16;
  var d#0: bv15;

    // AddMethodImpl: BvTests, Impl$$_module.__default.BvTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(222,3)
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(224,14)
    assume true;
    assume true;
    a#0 := Lit(250bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(225,5)
    assume true;
    assert {:id "id453"} Lit(2bv8) != 0bv8;
    assume true;
    a#0 := div_bv8(a#0, 2bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(226,5)
    assume true;
    assume true;
    a#0 := mul_bv8(a#0, 2bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(227,5)
    assume true;
    assume true;
    a#0 := add_bv8(a#0, 6bv8);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(228,3)
    assume true;
    assert {:id "id457"} a#0 == Lit(0bv8);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(230,14)
    assume true;
    assume true;
    b#0 := Lit(126bv7);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(231,5)
    assume true;
    assume true;
    b#0 := add_bv7(b#0, 5bv7);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(232,3)
    assume true;
    assert {:id "id460"} b#0 == Lit(3bv7);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(234,15)
    assume true;
    assume true;
    c#0 := Lit(65530bv16);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(235,5)
    assume true;
    assert {:id "id462"} Lit(2bv16) != 0bv16;
    assume true;
    c#0 := div_bv16(c#0, 2bv16);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(236,5)
    assume true;
    assume true;
    c#0 := mul_bv16(c#0, 2bv16);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(237,5)
    assume true;
    assume true;
    c#0 := add_bv16(c#0, 10bv16);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(238,3)
    assume true;
    assert {:id "id466"} c#0 == Lit(4bv16);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(240,15)
    assume true;
    assume true;
    d#0 := Lit(32763bv15);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(241,5)
    assume true;
    assume true;
    d#0 := add_bv15(d#0, 6bv15);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(242,3)
    assume true;
    assert {:id "id469"} d#0 == Lit(1bv15);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(244,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(246,3)
    assume true;
}



procedure {:verboseName "ZeroComparisonTests (well-formedness)"} CheckWellFormed$$_module.__default.ZeroComparisonTests();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZeroComparisonTests (call)"} Call$$_module.__default.ZeroComparisonTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZeroComparisonTests (correctness)"} Impl$$_module.__default.ZeroComparisonTests() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZeroComparisonTests (correctness)"} Impl$$_module.__default.ZeroComparisonTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n##0: int;
  var newtype$check#0: int;
  var n##1: int;
  var newtype$check#1: int;
  var n##2: int;
  var newtype$check#2: int;
  var n##3: int;
  var newtype$check#3: int;
  var n##4: int;
  var newtype$check#4: int;
  var n##5: int;
  var newtype$check#5: int;
  var n##6: int;
  var newtype$check#6: int;
  var n##7: int;
  var newtype$check#7: int;
  var n##8: int;
  var newtype$check#8: int;
  var n##9: int;
  var newtype$check#9: int;
  var n##10: int;
  var newtype$check#10: int;
  var n##11: int;
  var newtype$check#11: int;
  var n##12: int;
  var newtype$check#12: int;
  var n##13: int;
  var newtype$check#13: int;
  var n##14: int;
  var newtype$check#14: int;
  var n##15: int;
  var newtype$check#15: int;
  var n##16: int;
  var newtype$check#16: int;
  var n##17: int;
  var newtype$check#17: int;
  var n##18: int;
  var newtype$check#18: int;
  var n##19: int;
  var newtype$check#19: int;

    // AddMethodImpl: ZeroComparisonTests, Impl$$_module.__default.ZeroComparisonTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(251,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(253,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(254,14)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := LitInt(-42);
    assert {:id "id470"} LitInt(-128) <= newtype$check#0 && newtype$check#0 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := LitInt(-42);
    call {:id "id471"} Call$$_module.__default.ZCInt8Tests(n##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(255,14)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#1 := LitInt(0);
    assert {:id "id472"} LitInt(-128) <= newtype$check#1 && newtype$check#1 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##1 := LitInt(0);
    call {:id "id473"} Call$$_module.__default.ZCInt8Tests(n##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(256,14)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#2 := LitInt(23);
    assert {:id "id474"} LitInt(-128) <= newtype$check#2 && newtype$check#2 < 128;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := LitInt(23);
    call {:id "id475"} Call$$_module.__default.ZCInt8Tests(n##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(258,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(259,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#3 := LitInt(-42);
    assert {:id "id476"} LitInt(-32768) <= newtype$check#3 && newtype$check#3 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##3 := LitInt(-42);
    call {:id "id477"} Call$$_module.__default.ZCInt16Tests(n##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(260,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#4 := LitInt(0);
    assert {:id "id478"} LitInt(-32768) <= newtype$check#4 && newtype$check#4 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##4 := LitInt(0);
    call {:id "id479"} Call$$_module.__default.ZCInt16Tests(n##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(261,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#5 := LitInt(23);
    assert {:id "id480"} LitInt(-32768) <= newtype$check#5 && newtype$check#5 < 32768;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##5 := LitInt(23);
    call {:id "id481"} Call$$_module.__default.ZCInt16Tests(n##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(263,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(264,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#6 := LitInt(-42);
    assert {:id "id482"} LitInt(-2147483648) <= newtype$check#6 && newtype$check#6 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##6 := LitInt(-42);
    call {:id "id483"} Call$$_module.__default.ZCInt32Tests(n##6);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(265,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#7 := LitInt(0);
    assert {:id "id484"} LitInt(-2147483648) <= newtype$check#7 && newtype$check#7 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##7 := LitInt(0);
    call {:id "id485"} Call$$_module.__default.ZCInt32Tests(n##7);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(266,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#8 := LitInt(23);
    assert {:id "id486"} LitInt(-2147483648) <= newtype$check#8 && newtype$check#8 < 2147483648;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##8 := LitInt(23);
    call {:id "id487"} Call$$_module.__default.ZCInt32Tests(n##8);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(268,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(269,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#9 := LitInt(-42);
    assert {:id "id488"} LitInt(-2147483648) <= newtype$check#9 && newtype$check#9 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##9 := LitInt(-42);
    call {:id "id489"} Call$$_module.__default.ZCInt64Tests(n##9);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(270,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#10 := LitInt(0);
    assert {:id "id490"} LitInt(-2147483648) <= newtype$check#10
       && newtype$check#10 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##10 := LitInt(0);
    call {:id "id491"} Call$$_module.__default.ZCInt64Tests(n##10);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(271,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#11 := LitInt(23);
    assert {:id "id492"} LitInt(-2147483648) <= newtype$check#11
       && newtype$check#11 < 9223372036854775808;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##11 := LitInt(23);
    call {:id "id493"} Call$$_module.__default.ZCInt64Tests(n##11);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(273,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(274,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#12 := LitInt(0);
    assert {:id "id494"} LitInt(0) <= newtype$check#12 && newtype$check#12 < 256;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##12 := LitInt(0);
    call {:id "id495"} Call$$_module.__default.ZCUint8Tests(n##12);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(275,15)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#13 := LitInt(23);
    assert {:id "id496"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 256;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##13 := LitInt(23);
    call {:id "id497"} Call$$_module.__default.ZCUint8Tests(n##13);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(277,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(278,16)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#14 := LitInt(0);
    assert {:id "id498"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 65536;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##14 := LitInt(0);
    call {:id "id499"} Call$$_module.__default.ZCUint16Tests(n##14);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(279,16)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#15 := LitInt(23);
    assert {:id "id500"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 65536;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##15 := LitInt(23);
    call {:id "id501"} Call$$_module.__default.ZCUint16Tests(n##15);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(281,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(282,16)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#16 := LitInt(0);
    assert {:id "id502"} LitInt(0) <= newtype$check#16 && newtype$check#16 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##16 := LitInt(0);
    call {:id "id503"} Call$$_module.__default.ZCUint32Tests(n##16);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(283,16)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#17 := LitInt(23);
    assert {:id "id504"} LitInt(0) <= newtype$check#17 && newtype$check#17 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##17 := LitInt(23);
    call {:id "id505"} Call$$_module.__default.ZCUint32Tests(n##17);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(285,3)
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(286,16)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#18 := LitInt(0);
    assert {:id "id506"} LitInt(0) <= newtype$check#18 && newtype$check#18 < 18446744073709551616;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##18 := LitInt(0);
    call {:id "id507"} Call$$_module.__default.ZCUint64Tests(n##18);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(287,16)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#19 := LitInt(23);
    assert {:id "id508"} LitInt(0) <= newtype$check#19 && newtype$check#19 < 18446744073709551616;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##19 := LitInt(23);
    call {:id "id509"} Call$$_module.__default.ZCUint64Tests(n##19);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(289,3)
    assume true;
}



// function declaration for _module._default.YN
function _module.__default.YN(b#0: bool) : Seq
uses {
// consequence axiom for _module.__default.YN
axiom 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.YN(b#0) } 
    _module.__default.YN#canCall(b#0) || 0 < $FunctionContextHeight
       ==> $Is(_module.__default.YN(b#0), TSeq(TChar)));
// definition axiom for _module.__default.YN (revealed)
axiom {:id "id510"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.YN(b#0) } 
    _module.__default.YN#canCall(b#0) || 0 < $FunctionContextHeight
       ==> _module.__default.YN(b#0)
         == (if b#0
           then Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(89)))
           else Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(78)))));
// definition axiom for _module.__default.YN for all literals (revealed)
axiom {:id "id511"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    {:weight 3} { _module.__default.YN(Lit(b#0)) } 
    _module.__default.YN#canCall(Lit(b#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.YN(Lit(b#0))
         == (if b#0
           then Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(89)))
           else Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(78)))));
}

function _module.__default.YN#canCall(b#0: bool) : bool;

function _module.__default.YN#requires(bool) : bool;

// #requires axiom for _module.__default.YN
axiom (forall b#0: bool :: 
  { _module.__default.YN#requires(b#0) } 
  _module.__default.YN#requires(b#0) == true);

procedure {:verboseName "YN (well-formedness)"} CheckWellformed$$_module.__default.YN(b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCInt8Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCInt8Tests(n#0: int where LitInt(-128) <= n#0 && n#0 < 128);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCInt8Tests (call)"} Call$$_module.__default.ZCInt8Tests(n#0: int where LitInt(-128) <= n#0 && n#0 < 128);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCInt8Tests (correctness)"} Impl$$_module.__default.ZCInt8Tests(n#0: int where LitInt(-128) <= n#0 && n#0 < 128) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCInt8Tests (correctness)"} Impl$$_module.__default.ZCInt8Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCInt8Tests, Impl$$_module.__default.ZCInt8Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(297,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id514"} LitInt(-128) <= newtype$check#0 && newtype$check#0 < 128;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id515"} LitInt(-128) <= newtype$check#1 && newtype$check#1 < 128;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id516"} LitInt(-128) <= newtype$check#2 && newtype$check#2 < 128;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id517"} LitInt(-128) <= newtype$check#3 && newtype$check#3 < 128;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id518"} LitInt(-128) <= newtype$check#4 && newtype$check#4 < 128;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id519"} LitInt(-128) <= newtype$check#5 && newtype$check#5 < 128;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id520"} LitInt(-128) <= newtype$check#6 && newtype$check#6 < 128;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id521"} LitInt(-128) <= newtype$check#7 && newtype$check#7 < 128;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id522"} LitInt(-128) <= newtype$check#8 && newtype$check#8 < 128;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id523"} LitInt(-128) <= newtype$check#9 && newtype$check#9 < 128;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id524"} LitInt(-128) <= newtype$check#10 && newtype$check#10 < 128;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id525"} LitInt(-128) <= newtype$check#11 && newtype$check#11 < 128;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "ZCInt16Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCInt16Tests(n#0: int where LitInt(-32768) <= n#0 && n#0 < 32768);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCInt16Tests (call)"} Call$$_module.__default.ZCInt16Tests(n#0: int where LitInt(-32768) <= n#0 && n#0 < 32768);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCInt16Tests (correctness)"} Impl$$_module.__default.ZCInt16Tests(n#0: int where LitInt(-32768) <= n#0 && n#0 < 32768)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCInt16Tests (correctness)"} Impl$$_module.__default.ZCInt16Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCInt16Tests, Impl$$_module.__default.ZCInt16Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(308,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id526"} LitInt(-32768) <= newtype$check#0 && newtype$check#0 < 32768;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id527"} LitInt(-32768) <= newtype$check#1 && newtype$check#1 < 32768;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id528"} LitInt(-32768) <= newtype$check#2 && newtype$check#2 < 32768;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id529"} LitInt(-32768) <= newtype$check#3 && newtype$check#3 < 32768;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id530"} LitInt(-32768) <= newtype$check#4 && newtype$check#4 < 32768;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id531"} LitInt(-32768) <= newtype$check#5 && newtype$check#5 < 32768;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id532"} LitInt(-32768) <= newtype$check#6 && newtype$check#6 < 32768;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id533"} LitInt(-32768) <= newtype$check#7 && newtype$check#7 < 32768;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id534"} LitInt(-32768) <= newtype$check#8 && newtype$check#8 < 32768;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id535"} LitInt(-32768) <= newtype$check#9 && newtype$check#9 < 32768;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id536"} LitInt(-32768) <= newtype$check#10 && newtype$check#10 < 32768;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id537"} LitInt(-32768) <= newtype$check#11 && newtype$check#11 < 32768;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "ZCInt32Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCInt32Tests(n#0: int where LitInt(-2147483648) <= n#0 && n#0 < 2147483648);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCInt32Tests (call)"} Call$$_module.__default.ZCInt32Tests(n#0: int where LitInt(-2147483648) <= n#0 && n#0 < 2147483648);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCInt32Tests (correctness)"} Impl$$_module.__default.ZCInt32Tests(n#0: int where LitInt(-2147483648) <= n#0 && n#0 < 2147483648)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCInt32Tests (correctness)"} Impl$$_module.__default.ZCInt32Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCInt32Tests, Impl$$_module.__default.ZCInt32Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(319,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id538"} LitInt(-2147483648) <= newtype$check#0 && newtype$check#0 < 2147483648;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id539"} LitInt(-2147483648) <= newtype$check#1 && newtype$check#1 < 2147483648;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id540"} LitInt(-2147483648) <= newtype$check#2 && newtype$check#2 < 2147483648;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id541"} LitInt(-2147483648) <= newtype$check#3 && newtype$check#3 < 2147483648;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id542"} LitInt(-2147483648) <= newtype$check#4 && newtype$check#4 < 2147483648;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id543"} LitInt(-2147483648) <= newtype$check#5 && newtype$check#5 < 2147483648;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id544"} LitInt(-2147483648) <= newtype$check#6 && newtype$check#6 < 2147483648;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id545"} LitInt(-2147483648) <= newtype$check#7 && newtype$check#7 < 2147483648;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id546"} LitInt(-2147483648) <= newtype$check#8 && newtype$check#8 < 2147483648;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id547"} LitInt(-2147483648) <= newtype$check#9 && newtype$check#9 < 2147483648;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id548"} LitInt(-2147483648) <= newtype$check#10 && newtype$check#10 < 2147483648;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id549"} LitInt(-2147483648) <= newtype$check#11 && newtype$check#11 < 2147483648;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "ZCInt64Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCInt64Tests(n#0: int where LitInt(-2147483648) <= n#0 && n#0 < 9223372036854775808);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCInt64Tests (call)"} Call$$_module.__default.ZCInt64Tests(n#0: int where LitInt(-2147483648) <= n#0 && n#0 < 9223372036854775808);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCInt64Tests (correctness)"} Impl$$_module.__default.ZCInt64Tests(n#0: int where LitInt(-2147483648) <= n#0 && n#0 < 9223372036854775808)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCInt64Tests (correctness)"} Impl$$_module.__default.ZCInt64Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCInt64Tests, Impl$$_module.__default.ZCInt64Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(330,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id550"} LitInt(-2147483648) <= newtype$check#0 && newtype$check#0 < 9223372036854775808;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id551"} LitInt(-2147483648) <= newtype$check#1 && newtype$check#1 < 9223372036854775808;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id552"} LitInt(-2147483648) <= newtype$check#2 && newtype$check#2 < 9223372036854775808;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id553"} LitInt(-2147483648) <= newtype$check#3 && newtype$check#3 < 9223372036854775808;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id554"} LitInt(-2147483648) <= newtype$check#4 && newtype$check#4 < 9223372036854775808;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id555"} LitInt(-2147483648) <= newtype$check#5 && newtype$check#5 < 9223372036854775808;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id556"} LitInt(-2147483648) <= newtype$check#6 && newtype$check#6 < 9223372036854775808;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id557"} LitInt(-2147483648) <= newtype$check#7 && newtype$check#7 < 9223372036854775808;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id558"} LitInt(-2147483648) <= newtype$check#8 && newtype$check#8 < 9223372036854775808;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id559"} LitInt(-2147483648) <= newtype$check#9 && newtype$check#9 < 9223372036854775808;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id560"} LitInt(-2147483648) <= newtype$check#10
       && newtype$check#10 < 9223372036854775808;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id561"} LitInt(-2147483648) <= newtype$check#11
       && newtype$check#11 < 9223372036854775808;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "ZCUint8Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCUint8Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 256);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCUint8Tests (call)"} Call$$_module.__default.ZCUint8Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 256);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCUint8Tests (correctness)"} Impl$$_module.__default.ZCUint8Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 256) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCUint8Tests (correctness)"} Impl$$_module.__default.ZCUint8Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCUint8Tests, Impl$$_module.__default.ZCUint8Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(341,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id562"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 256;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id563"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 256;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id564"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 256;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id565"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 256;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id566"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 256;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id567"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 256;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id568"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 256;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id569"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 256;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id570"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 256;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id571"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 256;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id572"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 256;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id573"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 256;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "ZCUint16Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCUint16Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 65536);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCUint16Tests (call)"} Call$$_module.__default.ZCUint16Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 65536);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCUint16Tests (correctness)"} Impl$$_module.__default.ZCUint16Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 65536) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCUint16Tests (correctness)"} Impl$$_module.__default.ZCUint16Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCUint16Tests, Impl$$_module.__default.ZCUint16Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(352,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id574"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 65536;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id575"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 65536;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id576"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 65536;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id577"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 65536;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id578"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 65536;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id579"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 65536;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id580"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 65536;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id581"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 65536;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id582"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 65536;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id583"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 65536;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id584"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 65536;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id585"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 65536;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "ZCUint32Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCUint32Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 4294967296);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCUint32Tests (call)"} Call$$_module.__default.ZCUint32Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 4294967296);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCUint32Tests (correctness)"} Impl$$_module.__default.ZCUint32Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 4294967296)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCUint32Tests (correctness)"} Impl$$_module.__default.ZCUint32Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCUint32Tests, Impl$$_module.__default.ZCUint32Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(363,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id586"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id587"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id588"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 4294967296;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id589"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id590"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id591"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 4294967296;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id592"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id593"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id594"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 4294967296;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id595"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 4294967296;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id596"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 4294967296;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id597"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 4294967296;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "ZCUint64Tests (well-formedness)"} CheckWellFormed$$_module.__default.ZCUint64Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 18446744073709551616);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ZCUint64Tests (call)"} Call$$_module.__default.ZCUint64Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 18446744073709551616);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ZCUint64Tests (correctness)"} Impl$$_module.__default.ZCUint64Tests(n#0: int where LitInt(0) <= n#0 && n#0 < 18446744073709551616)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ZCUint64Tests (correctness)"} Impl$$_module.__default.ZCUint64Tests(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0: bool;
  var newtype$check#0: int;
  var ##b#1: bool;
  var newtype$check#1: int;
  var ##b#2: bool;
  var newtype$check#2: int;
  var ##b#3: bool;
  var newtype$check#3: int;
  var ##b#4: bool;
  var newtype$check#4: int;
  var ##b#5: bool;
  var newtype$check#5: int;
  var ##b#6: bool;
  var newtype$check#6: int;
  var ##b#7: bool;
  var newtype$check#7: int;
  var ##b#8: bool;
  var newtype$check#8: int;
  var ##b#9: bool;
  var newtype$check#9: int;
  var ##b#10: bool;
  var newtype$check#10: int;
  var ##b#11: bool;
  var newtype$check#11: int;

    // AddMethodImpl: ZCUint64Tests, Impl$$_module.__default.ZCUint64Tests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/NativeNumbers.dfy(374,3)
    assume true;
    assume true;
    assume true;
    newtype$check#0 := LitInt(0);
    assert {:id "id598"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 18446744073709551616;
    ##b#0 := n#0 < 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume _module.__default.YN#canCall(n#0 < 0);
    assume true;
    newtype$check#1 := LitInt(0);
    assert {:id "id599"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 18446744073709551616;
    ##b#1 := n#0 <= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#1, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume _module.__default.YN#canCall(n#0 <= LitInt(0));
    assume true;
    newtype$check#2 := LitInt(0);
    assert {:id "id600"} LitInt(0) <= newtype$check#2 && newtype$check#2 < 18446744073709551616;
    ##b#2 := n#0 == LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#2, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume _module.__default.YN#canCall(n#0 == LitInt(0));
    assume true;
    newtype$check#3 := LitInt(0);
    assert {:id "id601"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 18446744073709551616;
    ##b#3 := n#0 != 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#3, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume _module.__default.YN#canCall(n#0 != 0);
    assume true;
    newtype$check#4 := LitInt(0);
    assert {:id "id602"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 18446744073709551616;
    ##b#4 := n#0 > 0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#4, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume _module.__default.YN#canCall(n#0 > 0);
    assume true;
    newtype$check#5 := LitInt(0);
    assert {:id "id603"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 18446744073709551616;
    ##b#5 := n#0 >= LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#5, TBool, $Heap);
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume _module.__default.YN#canCall(n#0 >= LitInt(0));
    assume true;
    newtype$check#6 := LitInt(0);
    assert {:id "id604"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 18446744073709551616;
    ##b#6 := 0 < n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#6, TBool, $Heap);
    assume _module.__default.YN#canCall(0 < n#0);
    assume _module.__default.YN#canCall(0 < n#0);
    assume true;
    newtype$check#7 := LitInt(0);
    assert {:id "id605"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 18446744073709551616;
    ##b#7 := LitInt(0) <= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#7, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume _module.__default.YN#canCall(LitInt(0) <= n#0);
    assume true;
    newtype$check#8 := LitInt(0);
    assert {:id "id606"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 18446744073709551616;
    ##b#8 := LitInt(0) == n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#8, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume _module.__default.YN#canCall(LitInt(0) == n#0);
    assume true;
    newtype$check#9 := LitInt(0);
    assert {:id "id607"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 18446744073709551616;
    ##b#9 := 0 != n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#9, TBool, $Heap);
    assume _module.__default.YN#canCall(0 != n#0);
    assume _module.__default.YN#canCall(0 != n#0);
    assume true;
    newtype$check#10 := LitInt(0);
    assert {:id "id608"} LitInt(0) <= newtype$check#10 && newtype$check#10 < 18446744073709551616;
    ##b#10 := 0 > n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#10, TBool, $Heap);
    assume _module.__default.YN#canCall(0 > n#0);
    assume _module.__default.YN#canCall(0 > n#0);
    assume true;
    newtype$check#11 := LitInt(0);
    assert {:id "id609"} LitInt(0) <= newtype$check#11 && newtype$check#11 < 18446744073709551616;
    ##b#11 := LitInt(0) >= n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#11, TBool, $Heap);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume _module.__default.YN#canCall(LitInt(0) >= n#0);
    assume true;
}



procedure {:verboseName "int8 (well-formedness)"} CheckWellFormed$$_module.int8(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int8 (well-formedness)"} CheckWellFormed$$_module.int8(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int8
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-128) <= x#0)
        {
        }

        assume {:id "id610"} LitInt(-128) <= x#0 && x#0 < 128;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id611"} {:subsumption 0} LitInt(-128) <= LitInt(0);
        assert {:id "id612"} {:subsumption 0} Lit(0 < 128);
        assume false;
    }
}



// $Is axiom for newtype _module.int8
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int8()) } 
  $Is(x#0, Tclass._module.int8()) <==> LitInt(-128) <= x#0 && x#0 < 128);

// $IsAlloc axiom for newtype _module.int8
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int8(), $h) } 
  $IsAlloc(x#0, Tclass._module.int8(), $h));

const unique class._module.int8: ClassName;

procedure {:verboseName "int16 (well-formedness)"} CheckWellFormed$$_module.int16(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int16 (well-formedness)"} CheckWellFormed$$_module.int16(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int16
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-32768) <= x#0)
        {
        }

        assume {:id "id613"} LitInt(-32768) <= x#0 && x#0 < 32768;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id614"} {:subsumption 0} LitInt(-32768) <= LitInt(0);
        assert {:id "id615"} {:subsumption 0} Lit(0 < 32768);
        assume false;
    }
}



// $Is axiom for newtype _module.int16
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int16()) } 
  $Is(x#0, Tclass._module.int16()) <==> LitInt(-32768) <= x#0 && x#0 < 32768);

// $IsAlloc axiom for newtype _module.int16
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int16(), $h) } 
  $IsAlloc(x#0, Tclass._module.int16(), $h));

const unique class._module.int16: ClassName;

procedure {:verboseName "int32 (well-formedness)"} CheckWellFormed$$_module.int32(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int32 (well-formedness)"} CheckWellFormed$$_module.int32(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int32
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-2147483648) <= x#0)
        {
        }

        assume {:id "id616"} LitInt(-2147483648) <= x#0 && x#0 < 2147483648;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id617"} {:subsumption 0} LitInt(-2147483648) <= LitInt(0);
        assert {:id "id618"} {:subsumption 0} Lit(0 < 2147483648);
        assume false;
    }
}



// $Is axiom for newtype _module.int32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int32()) } 
  $Is(x#0, Tclass._module.int32())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 2147483648);

// $IsAlloc axiom for newtype _module.int32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int32(), $h) } 
  $IsAlloc(x#0, Tclass._module.int32(), $h));

const unique class._module.int32: ClassName;

procedure {:verboseName "int64 (well-formedness)"} CheckWellFormed$$_module.int64(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int64 (well-formedness)"} CheckWellFormed$$_module.int64(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int64
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-2147483648) <= x#0)
        {
        }

        assume {:id "id619"} LitInt(-2147483648) <= x#0 && x#0 < 9223372036854775808;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id620"} {:subsumption 0} LitInt(-2147483648) <= LitInt(0);
        assert {:id "id621"} {:subsumption 0} Lit(0 < 9223372036854775808);
        assume false;
    }
}



// $Is axiom for newtype _module.int64
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int64()) } 
  $Is(x#0, Tclass._module.int64())
     <==> LitInt(-2147483648) <= x#0 && x#0 < 9223372036854775808);

// $IsAlloc axiom for newtype _module.int64
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int64(), $h) } 
  $IsAlloc(x#0, Tclass._module.int64(), $h));

const unique class._module.int64: ClassName;

procedure {:verboseName "uint8 (well-formedness)"} CheckWellFormed$$_module.uint8(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint8 (well-formedness)"} CheckWellFormed$$_module.uint8(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint8
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id622"} LitInt(0) <= x#0 && x#0 < 256;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id623"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id624"} {:subsumption 0} Lit(0 < 256);
        assume false;
    }
}



// $Is axiom for newtype _module.uint8
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint8()) } 
  $Is(x#0, Tclass._module.uint8()) <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype _module.uint8
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint8(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint8(), $h));

const unique class._module.uint8: ClassName;

procedure {:verboseName "uint16 (well-formedness)"} CheckWellFormed$$_module.uint16(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint16 (well-formedness)"} CheckWellFormed$$_module.uint16(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint16
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id625"} LitInt(0) <= x#0 && x#0 < 65536;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id626"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id627"} {:subsumption 0} Lit(0 < 65536);
        assume false;
    }
}



// $Is axiom for newtype _module.uint16
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint16()) } 
  $Is(x#0, Tclass._module.uint16()) <==> LitInt(0) <= x#0 && x#0 < 65536);

// $IsAlloc axiom for newtype _module.uint16
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint16(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint16(), $h));

const unique class._module.uint16: ClassName;

procedure {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32 (well-formedness)"} CheckWellFormed$$_module.uint32(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint32
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id628"} LitInt(0) <= x#0 && x#0 < 4294967296;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id629"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id630"} {:subsumption 0} Lit(0 < 4294967296);
        assume false;
    }
}



// $Is axiom for newtype _module.uint32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint32()) } 
  $Is(x#0, Tclass._module.uint32()) <==> LitInt(0) <= x#0 && x#0 < 4294967296);

// $IsAlloc axiom for newtype _module.uint32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint32(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint32(), $h));

const unique class._module.uint32: ClassName;

procedure {:verboseName "uint64 (well-formedness)"} CheckWellFormed$$_module.uint64(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint64 (well-formedness)"} CheckWellFormed$$_module.uint64(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint64
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id631"} LitInt(0) <= x#0 && x#0 < 18446744073709551616;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id632"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id633"} {:subsumption 0} Lit(0 < 18446744073709551616);
        assume false;
    }
}



// $Is axiom for newtype _module.uint64
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint64()) } 
  $Is(x#0, Tclass._module.uint64())
     <==> LitInt(0) <= x#0 && x#0 < 18446744073709551616);

// $IsAlloc axiom for newtype _module.uint64
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint64(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint64(), $h));

const unique class._module.uint64: ClassName;

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

const unique tytagFamily$int8: TyTagFamily;

const unique tytagFamily$int16: TyTagFamily;

const unique tytagFamily$int32: TyTagFamily;

const unique tytagFamily$int64: TyTagFamily;

const unique tytagFamily$uint8: TyTagFamily;

const unique tytagFamily$uint16: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;

const unique tytagFamily$uint64: TyTagFamily;
