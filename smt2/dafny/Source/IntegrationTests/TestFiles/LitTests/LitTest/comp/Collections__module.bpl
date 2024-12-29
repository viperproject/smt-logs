// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 5 == $FunctionContextHeight;
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
  free requires 5 == $FunctionContextHeight;
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
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(5,7)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id254"} Call$$_module.__default.Sets();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(6,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id255"} Call$$_module.__default.SubSets();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(7,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id256"} Call$$_module.__default.MultiSets();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(8,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id257"} Call$$_module.__default.Sequences();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(9,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id258"} Call$$_module.__default.Strings();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(10,7)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id259"} Call$$_module.__default.Maps();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(11,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id260"} Call$$_module.__default.MultiSetForming();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(12,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id261"} Call$$_module.__default.TestExplosiveUnion();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(13,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id262"} Call$$Regressions.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Sets (well-formedness)"} CheckWellFormed$$_module.__default.Sets();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sets (call)"} Call$$_module.__default.Sets();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sets (correctness)"} Impl$$_module.__default.Sets() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Class() : Ty
uses {
// Tclass._module.Class Tag
axiom Tag(Tclass._module.Class()) == Tagclass._module.Class
   && TagFamily(Tclass._module.Class()) == tytagFamily$Class;
}

const unique Tagclass._module.Class: TyTag;

// Box/unbox axiom for Tclass._module.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Class()) } 
  $IsBox(bx, Tclass._module.Class())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Class()));

function Tclass._module.Class?() : Ty
uses {
// Tclass._module.Class? Tag
axiom Tag(Tclass._module.Class?()) == Tagclass._module.Class?
   && TagFamily(Tclass._module.Class?()) == tytagFamily$Class;
axiom implements$_module.Trait(Tclass._module.Class?());
}

const unique Tagclass._module.Class?: TyTag;

// Box/unbox axiom for Tclass._module.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Class?()) } 
  $IsBox(bx, Tclass._module.Class?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Class?()));

function Tclass._module.Trait() : Ty
uses {
// Tclass._module.Trait Tag
axiom Tag(Tclass._module.Trait()) == Tagclass._module.Trait
   && TagFamily(Tclass._module.Trait()) == tytagFamily$Trait;
}

const unique Tagclass._module.Trait: TyTag;

// Box/unbox axiom for Tclass._module.Trait
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Trait()) } 
  $IsBox(bx, Tclass._module.Trait())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Trait()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sets (correctness)"} Impl$$_module.__default.Sets() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Set where $Is(a#0, TSet(TInt)) && $IsAlloc(a#0, TSet(TInt), $Heap);
  var b#0: Set where $Is(b#0, TSet(TInt)) && $IsAlloc(b#0, TSet(TInt), $Heap);
  var c#0: Set where $Is(c#0, TSet(TInt)) && $IsAlloc(c#0, TSet(TInt), $Heap);
  var defass#cl#0: bool;
  var cl#0: ref
     where defass#cl#0
       ==> $Is(cl#0, Tclass._module.Class())
         && $IsAlloc(cl#0, Tclass._module.Class(), $Heap);
  var $nw: ref;
  var defass#tr#0: bool;
  var tr#0: ref
     where defass#tr#0
       ==> $Is(tr#0, Tclass._module.Trait())
         && $IsAlloc(tr#0, Tclass._module.Trait(), $Heap);
  var xtrait#0: Set
     where $Is(xtrait#0, TSet(Tclass._module.Trait()))
       && $IsAlloc(xtrait#0, TSet(Tclass._module.Trait()), $Heap);
  var xclass#0: Set
     where $Is(xclass#0, TSet(Tclass._module.Class()))
       && $IsAlloc(xclass#0, TSet(Tclass._module.Class()), $Heap);

    // AddMethodImpl: Sets, Impl$$_module.__default.Sets
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(24,9)
    assume true;
    assume true;
    a#0 := Lit(Set#Empty(): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(25,18)
    assume true;
    assume true;
    b#0 := Lit(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(17))), $Box(LitInt(82))), 
          $Box(LitInt(17))), 
        $Box(LitInt(82))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(26,9)
    assume true;
    assume true;
    c#0 := Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(12))), $Box(LitInt(17))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(27,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(28,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(29,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(30,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(31,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(32,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(33,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(34,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(35,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(36,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(37,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(39,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Class?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    cl#0 := $nw;
    defass#cl#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(40,17)
    assume true;
    assert {:id "id267"} defass#cl#0;
    assume true;
    tr#0 := cl#0;
    defass#tr#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(41,26)
    assume true;
    assert {:id "id269"} defass#cl#0;
    assert {:id "id270"} defass#tr#0;
    assume true;
    xtrait#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(cl#0)), $Box(tr#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(42,26)
    assume true;
    assert {:id "id272"} defass#cl#0;
    assert {:id "id273"} defass#cl#0;
    assume true;
    xclass#0 := Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(cl#0)), $Box(cl#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(43,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "SubSets (well-formedness)"} CheckWellFormed$$_module.__default.SubSets();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SubSets (call)"} Call$$_module.__default.SubSets();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SubSets (correctness)"} Impl$$_module.__default.SubSets() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SubSets (correctness)"} Impl$$_module.__default.SubSets() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TChar)) && $IsAlloc(s#0, TSet(TChar), $Heap);
  var b0#0: bool;
  var r#1: Set;
  var b1#0: bool;
  var r#3: Set;
  var S#0: Set
     where $Is(S#0, TSet(TSet(TChar))) && $IsAlloc(S#0, TSet(TSet(TChar)), $Heap);
  var r#4: Set;
  var ##r#0: Set;
  var s##0: Set;

    // AddMethodImpl: SubSets, Impl$$_module.__default.SubSets
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(143,20)
    assume true;
    assume true;
    s#0 := Lit(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(Lit(char#FromInt(97)))), 
            $Box(Lit(char#FromInt(98)))), 
          $Box(Lit(char#FromInt(99)))), 
        $Box(Lit(char#FromInt(100)))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(144,10)
    assume true;
    // Begin Comprehension WF check
    havoc r#1;
    if ($Is(r#1, TSet(TChar)) && $IsAlloc(r#1, TSet(TChar), $Heap))
    {
        if (Set#Subset(r#1, s#0))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    b0#0 := (forall r#0: Set :: 
      { Set#Card(r#0) } { Set#Subset(r#0, s#0) } 
      $Is(r#0, TSet(TChar)) && Set#Subset(r#0, s#0) ==> Set#Card(r#0) == LitInt(2));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(145,10)
    assume true;
    // Begin Comprehension WF check
    havoc r#3;
    if ($Is(r#3, TSet(TChar)) && $IsAlloc(r#3, TSet(TChar), $Heap))
    {
        if (Set#Subset(r#3, s#0))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    b1#0 := (exists r#2: Set :: 
      { Set#Card(r#2) } { Set#Subset(r#2, s#0) } 
      $Is(r#2, TSet(TChar)) && Set#Subset(r#2, s#0) && Set#Card(r#2) == LitInt(2));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(146,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(147,9)
    assume true;
    // Begin Comprehension WF check
    havoc r#4;
    if ($Is(r#4, TSet(TChar)) && $IsAlloc(r#4, TSet(TChar), $Heap))
    {
        if (Set#Subset(r#4, s#0))
        {
            ##r#0 := r#4;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0, TSet(TChar), $Heap);
            assume _module.__default.P#canCall(r#4);
        }

        if (Set#Subset(r#4, s#0) && _module.__default.P(r#4))
        {
        }
    }

    // End Comprehension WF check
    assume (forall r#5: Set :: 
      { _module.__default.P(r#5) } { Set#Subset(r#5, s#0) } 
      $Is(r#5, TSet(TChar))
         ==> 
        Set#Subset(r#5, s#0)
         ==> _module.__default.P#canCall(r#5));
    S#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, TSet(TChar))
           && 
          Set#Subset($Unbox($y#0): Set, s#0)
           && _module.__default.P($Unbox($y#0): Set)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(148,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(149,26)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := S#0;
    call {:id "id279"} Call$$CharSetSetPrinter.__default.Print(s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(150,3)
    assume true;
}



// function declaration for _module._default.P
function _module.__default.P(r#0: Set) : bool
uses {
// definition axiom for _module.__default.P (revealed)
axiom {:id "id280"} 0 <= $FunctionContextHeight
   ==> (forall r#0: Set :: 
    { _module.__default.P(r#0) } 
    _module.__default.P#canCall(r#0)
         || (0 < $FunctionContextHeight && $Is(r#0, TSet(TChar)))
       ==> _module.__default.P(r#0) == Lit(true));
// definition axiom for _module.__default.P for all literals (revealed)
axiom {:id "id281"} 0 <= $FunctionContextHeight
   ==> (forall r#0: Set :: 
    {:weight 3} { _module.__default.P(Lit(r#0)) } 
    _module.__default.P#canCall(Lit(r#0))
         || (0 < $FunctionContextHeight && $Is(r#0, TSet(TChar)))
       ==> _module.__default.P(Lit(r#0)) == Lit(true));
}

function _module.__default.P#canCall(r#0: Set) : bool;

function _module.__default.P#requires(Set) : bool;

// #requires axiom for _module.__default.P
axiom (forall r#0: Set :: 
  { _module.__default.P#requires(r#0) } 
  $Is(r#0, TSet(TChar)) ==> _module.__default.P#requires(r#0) == true);

procedure {:verboseName "P (well-formedness)"} CheckWellformed$$_module.__default.P(r#0: Set where $Is(r#0, TSet(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultiSets (well-formedness)"} CheckWellFormed$$_module.__default.MultiSets();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultiSets (call)"} Call$$_module.__default.MultiSets();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultiSets (correctness)"} Impl$$_module.__default.MultiSets() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultiSets (correctness)"} Impl$$_module.__default.MultiSets() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: MultiSet
     where $Is(a#0, TMultiSet(TInt)) && $IsAlloc(a#0, TMultiSet(TInt), $Heap);
  var b#0: MultiSet
     where $Is(b#0, TMultiSet(TInt)) && $IsAlloc(b#0, TMultiSet(TInt), $Heap);
  var c#0: MultiSet
     where $Is(c#0, TMultiSet(TInt)) && $IsAlloc(c#0, TMultiSet(TInt), $Heap);
  var d#0: MultiSet
     where $Is(d#0, TMultiSet(TInt)) && $IsAlloc(d#0, TMultiSet(TInt), $Heap);

    // AddMethodImpl: MultiSets, Impl$$_module.__default.MultiSets
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(160,9)
    assume true;
    assume true;
    a#0 := Lit(MultiSet#Empty(): MultiSet);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(161,23)
    assume true;
    assume true;
    b#0 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(17))), 
            $Box(LitInt(82))), 
          $Box(LitInt(17))), 
        $Box(LitInt(82))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(162,9)
    assume true;
    assume true;
    c#0 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(12))), 
        $Box(LitInt(17))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(163,9)
    assume true;
    assume true;
    d#0 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(12))), 
          $Box(LitInt(12))), 
        $Box(LitInt(17))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(164,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(165,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(166,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(167,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(168,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(169,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(170,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(171,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(172,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(173,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(174,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(175,3)
    assume true;
    assert {:id "id287"} {:subsumption 0} 0 <= LitInt(2);
    assume true;
    assume true;
    assert {:id "id288"} {:subsumption 0} 0 <= LitInt(2);
    assume true;
    assume true;
    assert {:id "id289"} {:subsumption 0} 0 <= LitInt(2);
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(176,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(178,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id290"} Call$$_module.__default.zeroMultiplicity();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "zeroMultiplicity (well-formedness)"} CheckWellFormed$$_module.__default.zeroMultiplicity();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "zeroMultiplicity (call)"} Call$$_module.__default.zeroMultiplicity();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "zeroMultiplicity (correctness)"} Impl$$_module.__default.zeroMultiplicity() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "zeroMultiplicity (correctness)"} Impl$$_module.__default.zeroMultiplicity() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: MultiSet
     where $Is(a#0, TMultiSet(TInt)) && $IsAlloc(a#0, TMultiSet(TInt), $Heap);
  var b#0: MultiSet
     where $Is(b#0, TMultiSet(TInt)) && $IsAlloc(b#0, TMultiSet(TInt), $Heap);
  var c#0: MultiSet
     where $Is(c#0, TMultiSet(TInt)) && $IsAlloc(c#0, TMultiSet(TInt), $Heap);
  var d#0: MultiSet
     where $Is(d#0, TMultiSet(TInt)) && $IsAlloc(d#0, TMultiSet(TInt), $Heap);
  var e#0: MultiSet
     where $Is(e#0, TMultiSet(Tclass._System.object?()))
       && $IsAlloc(e#0, TMultiSet(Tclass._System.object?()), $Heap);
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var f#0: MultiSet
     where $Is(f#0, TMultiSet(Tclass._System.object?()))
       && $IsAlloc(f#0, TMultiSet(Tclass._System.object?()), $Heap);
  var newtype$check#2: ref;
  var newtype$check#3: ref;

    // AddMethodImpl: zeroMultiplicity, Impl$$_module.__default.zeroMultiplicity
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(182,9)
    assume true;
    assert {:id "id291"} 0 <= LitInt(0);
    assume true;
    a#0 := MultiSet#UpdateMultiplicity(Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(12)))), 
      $Box(LitInt(12)), 
      LitInt(0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(183,9)
    assume true;
    assume true;
    b#0 := Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(42))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(184,9)
    assume true;
    assert {:id "id294"} 0 <= LitInt(0);
    assert {:id "id295"} 0 <= LitInt(0);
    assume true;
    c#0 := MultiSet#UpdateMultiplicity(MultiSet#UpdateMultiplicity(Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))), $Box(LitInt(2)))), 
        $Box(LitInt(1)), 
        LitInt(0)), 
      $Box(LitInt(2)), 
      LitInt(0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(185,9)
    assume true;
    assume true;
    d#0 := Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(12))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(186,9)
    assume true;
    newtype$check#0 := null;
    newtype$check#1 := null;
    assert {:id "id298"} 0 <= LitInt(0);
    assume true;
    e#0 := MultiSet#UpdateMultiplicity(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(null)), $Box(null), LitInt(0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(187,9)
    assume true;
    newtype$check#2 := null;
    assume true;
    f#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(null));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(188,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(189,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(190,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(191,3)
    assume true;
    assume true;
    assume true;
    newtype$check#3 := null;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(192,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(193,3)
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
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(194,3)
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
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(195,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "Sequences (well-formedness)"} CheckWellFormed$$_module.__default.Sequences();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences (call)"} Call$$_module.__default.Sequences();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences (correctness)"} Impl$$_module.__default.Sequences() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences (correctness)"} Impl$$_module.__default.Sequences() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap);
  var b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap);
  var c#0: Seq where $Is(c#0, TSeq(TInt)) && $IsAlloc(c#0, TSeq(TInt), $Heap);
  var defass#cl#0: bool;
  var cl#0: ref
     where defass#cl#0
       ==> $Is(cl#0, Tclass._module.Class())
         && $IsAlloc(cl#0, Tclass._module.Class(), $Heap);
  var $nw: ref;
  var defass#tr#0: bool;
  var tr#0: ref
     where defass#tr#0
       ==> $Is(tr#0, Tclass._module.Trait())
         && $IsAlloc(tr#0, Tclass._module.Trait(), $Heap);
  var xtrait#0: Seq
     where $Is(xtrait#0, TSeq(Tclass._module.Trait()))
       && $IsAlloc(xtrait#0, TSeq(Tclass._module.Trait()), $Heap);
  var xclass#0: Seq
     where $Is(xclass#0, TSeq(Tclass._module.Class()))
       && $IsAlloc(xclass#0, TSeq(Tclass._module.Class()), $Heap);

    // AddMethodImpl: Sequences, Impl$$_module.__default.Sequences
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(203,9)
    assume true;
    assume true;
    a#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(204,18)
    assume true;
    assume true;
    b#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(17))), $Box(LitInt(82))), 
          $Box(LitInt(17))), 
        $Box(LitInt(82))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(205,9)
    assume true;
    assume true;
    c#0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(12))), $Box(LitInt(17))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(206,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(207,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(208,3)
    assume true;
    assert {:id "id304"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
    assume true;
    assume true;
    assert {:id "id305"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(c#0);
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(209,3)
    assume true;
    assert {:id "id306"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
    assume true;
    assume true;
    assert {:id "id307"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < Seq#Length(c#0);
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(210,3)
    assume true;
    assert {:id "id308"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
    assert {:id "id309"} {:subsumption 0} LitInt(1) <= LitInt(3) && LitInt(3) <= Seq#Length(b#0);
    assume true;
    assume true;
    assert {:id "id310"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(c#0);
    assert {:id "id311"} {:subsumption 0} LitInt(1) <= LitInt(2) && LitInt(2) <= Seq#Length(c#0);
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(211,3)
    assume true;
    assert {:id "id312"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(b#0);
    assume true;
    assume true;
    assert {:id "id313"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(c#0);
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(212,3)
    assume true;
    assert {:id "id314"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) <= Seq#Length(b#0);
    assume true;
    assert {:id "id315"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(c#0);
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(213,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(214,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(215,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(216,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(217,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(218,32)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id316"} Call$$BoundedIntegerParameters.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(219,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id317"} Call$$_module.__default.SeqUpdate();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(220,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id318"} Call$$_module.__default.SeqPrefix();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(222,10)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Class?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    cl#0 := $nw;
    defass#cl#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(223,17)
    assume true;
    assert {:id "id320"} defass#cl#0;
    assume true;
    tr#0 := cl#0;
    defass#tr#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(224,26)
    assume true;
    assert {:id "id322"} defass#cl#0;
    assert {:id "id323"} defass#tr#0;
    assume true;
    xtrait#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(cl#0)), $Box(tr#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(225,26)
    assume true;
    assert {:id "id325"} defass#cl#0;
    assert {:id "id326"} defass#cl#0;
    assume true;
    xclass#0 := Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(cl#0)), $Box(cl#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(226,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "SeqUpdate (well-formedness)"} CheckWellFormed$$_module.__default.SeqUpdate();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SeqUpdate (call)"} Call$$_module.__default.SeqUpdate();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SeqUpdate (correctness)"} Impl$$_module.__default.SeqUpdate() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqUpdate (correctness)"} Impl$$_module.__default.SeqUpdate() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap);
  var ch#0: char where $Is(ch#0, TChar);
  var newtype$check#0: int;
  var t#0: Seq where $Is(t#0, TSeq(TInt)) && $IsAlloc(t#0, TSeq(TInt), $Heap);

    // AddMethodImpl: SeqUpdate, Impl$$_module.__default.SeqUpdate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(231,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(111))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(232,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(233,16)
    assume true;
    newtype$check#0 := LitInt(69);
    assert {:id "id329"} char#IsChar(newtype$check#0);
    assume true;
    ch#0 := char#FromInt(LitInt(69));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(234,5)
    assume true;
    assert {:id "id331"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(s#0);
    assume true;
    s#0 := Seq#Update(s#0, LitInt(1), $Box(ch#0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(235,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(237,9)
    assume true;
    assume true;
    t#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(4))), 
            $Box(LitInt(6))), 
          $Box(LitInt(8))), 
        $Box(LitInt(10))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(238,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(239,5)
    assume true;
    assert {:id "id334"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(t#0);
    assume true;
    t#0 := Seq#Update(t#0, LitInt(1), $Box(LitInt(0)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(240,3)
    assume true;
    assume true;
}



procedure {:verboseName "SeqPrefix (well-formedness)"} CheckWellFormed$$_module.__default.SeqPrefix();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SeqPrefix (call)"} Call$$_module.__default.SeqPrefix();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SeqPrefix (correctness)"} Impl$$_module.__default.SeqPrefix() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Cell() : Ty
uses {
// Tclass._module.Cell Tag
axiom Tag(Tclass._module.Cell()) == Tagclass._module.Cell
   && TagFamily(Tclass._module.Cell()) == tytagFamily$Cell;
}

const unique Tagclass._module.Cell: TyTag;

// Box/unbox axiom for Tclass._module.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Cell()) } 
  $IsBox(bx, Tclass._module.Cell())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Cell()));

procedure {:verboseName "Strings (well-formedness)"} CheckWellFormed$$_module.__default.Strings();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Strings (call)"} Call$$_module.__default.Strings();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Strings (correctness)"} Impl$$_module.__default.Strings() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Strings (correctness)"} Impl$$_module.__default.Strings() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Seq where $Is(a#0, TSeq(TChar)) && $IsAlloc(a#0, TSeq(TChar), $Heap);
  var b#0: Seq where $Is(b#0, TSeq(TChar)) && $IsAlloc(b#0, TSeq(TChar), $Heap);
  var c#0: Seq where $Is(c#0, TSeq(TChar)) && $IsAlloc(c#0, TSeq(TChar), $Heap);
  var d#0: Seq where $Is(d#0, TSeq(TChar)) && $IsAlloc(d#0, TSeq(TChar), $Heap);
  var x#0: Seq where $Is(x#0, TSeq(TChar)) && $IsAlloc(x#0, TSeq(TChar), $Heap);
  var y#0: Seq where $Is(y#0, TSeq(TChar)) && $IsAlloc(y#0, TSeq(TChar), $Heap);
  var $rhs##0: Seq;
  var $rhs##1: Seq;
  var g##0: char;

    // AddMethodImpl: Strings, Impl$$_module.__default.Strings
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(300,9)
    assume true;
    assume true;
    a#0 := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(301,9)
    assume true;
    assume true;
    b#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(117))), $Box(char#FromInt(82))), 
          $Box(char#FromInt(117))), 
        $Box(char#FromInt(82))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(302,9)
    assume true;
    assume true;
    c#0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(103))), $Box(char#FromInt(117))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(303,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(304,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(305,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(306,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(307,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(308,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(310,9)
    assume true;
    assume true;
    d#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(Lit(char#FromInt(103)))), 
            $Box(Lit(char#FromInt(117)))), 
          $Box(Lit(char#FromInt(114)))), 
        $Box(Lit(char#FromInt(117)))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(311,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(313,47)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type seq<char>
    // TrCallStmt: Adding lhs with type seq<char>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := Lit(char#FromInt(100));
    call {:id "id349"} $rhs##0, $rhs##1 := Call$$_module.__default.InterplayBetweenSeqCharAndString(TChar, $Box(g##0));
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##0;
    y#0 := $rhs##1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(318,5)
    assume true;
    assume true;
    x#0 := Seq#Append(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(111))), 
        $Box(char#FromInt(45))), 
      x#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(319,5)
    assume true;
    assume true;
    y#0 := Seq#Append(y#0, 
      Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(45))), $Box(char#FromInt(104))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(111))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(320,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "InterplayBetweenSeqCharAndString (well-formedness)"} CheckWellFormed$$_module.__default.InterplayBetweenSeqCharAndString(_module._default.InterplayBetweenSeqCharAndString$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.InterplayBetweenSeqCharAndString$G)
         && $IsAllocBox(g#0, _module._default.InterplayBetweenSeqCharAndString$G, $Heap))
   returns (a#0: Seq
       where $Is(a#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G))
         && $IsAlloc(a#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G), $Heap), 
    b#0: Seq
       where $Is(b#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G))
         && $IsAlloc(b#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "InterplayBetweenSeqCharAndString (call)"} Call$$_module.__default.InterplayBetweenSeqCharAndString(_module._default.InterplayBetweenSeqCharAndString$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.InterplayBetweenSeqCharAndString$G)
         && $IsAllocBox(g#0, _module._default.InterplayBetweenSeqCharAndString$G, $Heap))
   returns (a#0: Seq
       where $Is(a#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G))
         && $IsAlloc(a#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G), $Heap), 
    b#0: Seq
       where $Is(b#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G))
         && $IsAlloc(b#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "InterplayBetweenSeqCharAndString (correctness)"} Impl$$_module.__default.InterplayBetweenSeqCharAndString(_module._default.InterplayBetweenSeqCharAndString$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.InterplayBetweenSeqCharAndString$G)
         && $IsAllocBox(g#0, _module._default.InterplayBetweenSeqCharAndString$G, $Heap))
   returns (a#0: Seq
       where $Is(a#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G))
         && $IsAlloc(a#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G), $Heap), 
    b#0: Seq
       where $Is(b#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G))
         && $IsAlloc(b#0, TSeq(_module._default.InterplayBetweenSeqCharAndString$G), $Heap), 
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



procedure {:verboseName "Maps (well-formedness)"} CheckWellFormed$$_module.__default.Maps();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Maps (call)"} Call$$_module.__default.Maps();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Maps (correctness)"} Impl$$_module.__default.Maps() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Color() : Ty
uses {
// Tclass._module.Color Tag
axiom Tag(Tclass._module.Color()) == Tagclass._module.Color
   && TagFamily(Tclass._module.Color()) == tytagFamily$Color;
}

const unique Tagclass._module.Color: TyTag;

// Box/unbox axiom for Tclass._module.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Color()) } 
  $IsBox(bx, Tclass._module.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Color()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Maps (correctness)"} Impl$$_module.__default.Maps() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);
  var b#0: Map
     where $Is(b#0, TMap(TInt, TInt)) && $IsAlloc(b#0, TMap(TInt, TInt), $Heap);
  var c#0: Map
     where $Is(c#0, TMap(TInt, TInt)) && $IsAlloc(c#0, TMap(TInt, TInt), $Heap);
  var a'#0: Map
     where $Is(a'#0, TMap(TInt, TInt)) && $IsAlloc(a'#0, TMap(TInt, TInt), $Heap);
  var b'#0: Map
     where $Is(b'#0, TMap(TInt, TInt)) && $IsAlloc(b'#0, TMap(TInt, TInt), $Heap);
  var c'#0: Map
     where $Is(c'#0, TMap(TInt, TInt)) && $IsAlloc(c'#0, TMap(TInt, TInt), $Heap);
  var $rhs#0: Map;
  var $rhs#1: Map;
  var $rhs#2: Map;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.Color(), TInt))
       && $IsAlloc(m#0, TMap(Tclass._module.Color(), TInt), $Heap);
  var keys#0: Set
     where $Is(keys#0, TSet(Tclass._module.Color()))
       && $IsAlloc(keys#0, TSet(Tclass._module.Color()), $Heap);
  var values#0: Set
     where $Is(values#0, TSet(TInt)) && $IsAlloc(values#0, TSet(TInt), $Heap);
  var items#0: Set
     where $Is(items#0, TSet(Tclass._System.Tuple2(Tclass._module.Color(), TInt)))
       && $IsAlloc(items#0, TSet(Tclass._System.Tuple2(Tclass._module.Color(), TInt)), $Heap);

    // AddMethodImpl: Maps, Impl$$_module.__default.Maps
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(336,9)
    assume true;
    assume true;
    a#0 := Lit(Map#Empty(): Map);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(337,17)
    assume true;
    assume true;
    b#0 := Lit(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(17)), $Box(LitInt(2))), 
        $Box(LitInt(82)), 
        $Box(LitInt(2))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(338,9)
    assume true;
    assume true;
    c#0 := Lit(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(17)), $Box(LitInt(0))), 
        $Box(LitInt(12)), 
        $Box(LitInt(26))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(339,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(340,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(341,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(342,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(343,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(344,18)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Map#Build(a#0, $Box(LitInt(17)), $Box(LitInt(6)));
    assume true;
    $rhs#1 := Map#Build(b#0, $Box(LitInt(17)), $Box(LitInt(6)));
    assume true;
    $rhs#2 := Map#Build(c#0, $Box(LitInt(17)), $Box(LitInt(6)));
    a'#0 := $rhs#0;
    b'#0 := $rhs#1;
    c'#0 := $rhs#2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(345,3)
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(346,3)
    assert {:id "id366"} {:subsumption 0} Set#IsMember(Map#Domain(a'#0), $Box(LitInt(17)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(347,3)
    assert {:id "id367"} {:subsumption 0} Set#IsMember(Map#Domain(b'#0), $Box(LitInt(17)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assert {:id "id368"} {:subsumption 0} Set#IsMember(Map#Domain(b#0), $Box(LitInt(17)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(348,3)
    assert {:id "id369"} {:subsumption 0} Set#IsMember(Map#Domain(c'#0), $Box(LitInt(17)));
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assert {:id "id370"} {:subsumption 0} Set#IsMember(Map#Domain(c#0), $Box(LitInt(17)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(349,3)
    assume true;
    assume true;
    assume true;
    assert {:id "id371"} {:subsumption 0} Set#IsMember(Map#Domain(b#0), $Box(LitInt(17)));
    assume true;
    assume true;
    assert {:id "id372"} {:subsumption 0} Set#IsMember(Map#Domain(c#0), $Box(LitInt(17)));
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(352,9)
    assume true;
    assume true;
    m#0 := Lit(Map#Build(Map#Build(Map#Empty(): Map, $Box(Lit(#_module.Color.Blue())), $Box(LitInt(30))), 
        $Box(Lit(#_module.Color.Yellow())), 
        $Box(LitInt(21))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(353,3)
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(354,12)
    assume true;
    assume true;
    keys#0 := Map#Domain(m#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(355,3)
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(356,14)
    assume true;
    assume true;
    values#0 := Map#Values(m#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(357,3)
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(358,13)
    assume true;
    assume true;
    items#0 := Map#Items(m#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(359,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(361,26)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id377"} Call$$_module.__default.TestMapMergeSubtraction();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(362,26)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id378"} Call$$_module.__default.TestMapMultiOccurrences();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestMapMergeSubtraction (well-formedness)"} CheckWellFormed$$_module.__default.TestMapMergeSubtraction();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapMergeSubtraction (call)"} Call$$_module.__default.TestMapMergeSubtraction();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapMergeSubtraction (correctness)"} Impl$$_module.__default.TestMapMergeSubtraction() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapMergeSubtraction (correctness)"} Impl$$_module.__default.TestMapMergeSubtraction() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TestMapMergeSubtraction, Impl$$_module.__default.TestMapMergeSubtraction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(366,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id379"} Call$$_module.__default.TestMapMerge();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(367,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id380"} Call$$_module.__default.TestMapSubtraction();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(368,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id381"} Call$$_module.__default.TestNullsAmongKeys();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(369,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id382"} Call$$_module.__default.TestNullsAmongValues();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestMapMerge (well-formedness)"} CheckWellFormed$$_module.__default.TestMapMerge();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapMerge (call)"} Call$$_module.__default.TestMapMerge();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapMerge (correctness)"} Impl$$_module.__default.TestMapMerge() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapMerge (correctness)"} Impl$$_module.__default.TestMapMerge() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(a#0, TMap(TSeq(TChar), TInt), $Heap);
  var b#0: Map
     where $Is(b#0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(b#0, TMap(TSeq(TChar), TInt), $Heap);
  var ages#0: Map
     where $Is(ages#0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(ages#0, TMap(TSeq(TChar), TInt), $Heap);

    // AddMethodImpl: TestMapMerge, Impl$$_module.__default.TestMapMerge
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(373,9)
    assume true;
    assume true;
    a#0 := Lit(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, 
            $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
                        $Box(char#FromInt(110))), 
                      $Box(char#FromInt(97))), 
                    $Box(char#FromInt(108))), 
                  $Box(char#FromInt(100))))), 
            $Box(LitInt(66))), 
          $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
                  $Box(char#FromInt(99))), 
                $Box(char#FromInt(107))))), 
          $Box(LitInt(70))), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))), 
        $Box(LitInt(8))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(374,9)
    assume true;
    assume true;
    b#0 := Lit(Map#Build(Map#Build(Map#Empty(): Map, 
          $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
                    $Box(char#FromInt(110))), 
                  $Box(char#FromInt(100))), 
                $Box(char#FromInt(121))))), 
          $Box(LitInt(52))), 
        $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))), 
        $Box(LitInt(67))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(375,12)
    assume true;
    assume true;
    ages#0 := Map#Merge(a#0, b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(376,3)
    assert {:id "id386"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(107))))));
    assume true;
    assert {:id "id387"} $Unbox(Map#Elements(ages#0)[$Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
                $Box(char#FromInt(99))), 
              $Box(char#FromInt(107)))))]): int
       == LitInt(70);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(377,3)
    assert {:id "id388"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    assume true;
    assert {:id "id389"} $Unbox(Map#Elements(ages#0)[$Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107)))))]): int
       == LitInt(67);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(378,3)
    assume true;
    assert {:id "id390"} !Set#IsMember(Map#Domain(ages#0), 
      $Box(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(97))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(100))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(114))), 
          $Box(char#FromInt(115)))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(379,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(380,3)
    assert {:id "id391"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
              $Box(char#FromInt(99))), 
            $Box(char#FromInt(107))))));
    assume true;
    assume true;
    assert {:id "id392"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(100))), 
            $Box(char#FromInt(121))))));
    assume true;
    assume true;
    assert {:id "id393"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
                  $Box(char#FromInt(110))), 
                $Box(char#FromInt(97))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(100))))));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(381,3)
    assert {:id "id394"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    assume true;
    assume true;
    assert {:id "id395"} {:subsumption 0} Set#IsMember(Map#Domain(b#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    assume true;
    assume true;
    assert {:id "id396"} {:subsumption 0} Set#IsMember(Map#Domain(ages#0), 
      $Box(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(107))))));
    assume true;
    assume true;
}



procedure {:verboseName "TestMapSubtraction (well-formedness)"} CheckWellFormed$$_module.__default.TestMapSubtraction();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapSubtraction (call)"} Call$$_module.__default.TestMapSubtraction();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapSubtraction (correctness)"} Impl$$_module.__default.TestMapSubtraction() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNullsAmongKeys (well-formedness)"} CheckWellFormed$$_module.__default.TestNullsAmongKeys();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestNullsAmongKeys (call)"} Call$$_module.__default.TestNullsAmongKeys();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNullsAmongKeys (correctness)"} Impl$$_module.__default.TestNullsAmongKeys() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.MyClass() : Ty
uses {
// Tclass._module.MyClass Tag
axiom Tag(Tclass._module.MyClass()) == Tagclass._module.MyClass
   && TagFamily(Tclass._module.MyClass()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass: TyTag;

// Box/unbox axiom for Tclass._module.MyClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass()) } 
  $IsBox(bx, Tclass._module.MyClass())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass()));

function Tclass._module.MyClass?() : Ty
uses {
// Tclass._module.MyClass? Tag
axiom Tag(Tclass._module.MyClass?()) == Tagclass._module.MyClass?
   && TagFamily(Tclass._module.MyClass?()) == tytagFamily$MyClass;
}

const unique Tagclass._module.MyClass?: TyTag;

// Box/unbox axiom for Tclass._module.MyClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?()) } 
  $IsBox(bx, Tclass._module.MyClass?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyClass?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestNullsAmongKeys (correctness)"} Impl$$_module.__default.TestNullsAmongKeys() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.MyClass())
         && $IsAlloc(a#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;
  var name##0: Seq;
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.MyClass())
         && $IsAlloc(b#0, Tclass._module.MyClass(), $Heap);
  var name##1: Seq;
  var c#0: ref
     where $Is(c#0, Tclass._module.MyClass?())
       && $IsAlloc(c#0, Tclass._module.MyClass?(), $Heap);
  var newtype$check#0: ref;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.MyClass())
         && $IsAlloc(d#0, Tclass._module.MyClass(), $Heap);
  var name##2: Seq;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.MyClass())
         && $IsAlloc(e#0, Tclass._module.MyClass(), $Heap);
  var name##3: Seq;
  var m#0: Map
     where $Is(m#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(m#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var n#0: Map
     where $Is(n#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(n#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var o#0: Map
     where $Is(o#0, TMap(Tclass._module.MyClass(), TInt))
       && $IsAlloc(o#0, TMap(Tclass._module.MyClass(), TInt), $Heap);
  var o'#0: Map
     where $Is(o'#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(o'#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var o''#0: Map
     where $Is(o''#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(o''#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var o3#0: Map
     where $Is(o3#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(o3#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var x0#0: bool;
  var x1#0: bool;
  var x2#0: bool;
  var $rhs#0: bool;
  var $rhs#1: bool;
  var $rhs#2: bool;
  var p#0: Map
     where $Is(p#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(p#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var q#0: Map
     where $Is(q#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(q#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var r#0: Map
     where $Is(r#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(r#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var s#0: Map
     where $Is(s#0, TMap(Tclass._module.MyClass?(), TInt))
       && $IsAlloc(s#0, TMap(Tclass._module.MyClass?(), TInt), $Heap);
  var y0#0: bool;
  var y1#0: bool;
  var y2#0: bool;
  var y3#0: bool;
  var $rhs#3: bool;
  var $rhs#4: bool;
  var $rhs#5: bool;
  var $rhs#6: bool;
  var $rhs##0: Map;
  var $rhs##1: Map;
  var $rhs##2: Map;
  var m##0: Map;
  var n##0: Map;
  var o##0: Map;
  var a##0: ref;
  var b##0: ref;

    // AddMethodImpl: TestNullsAmongKeys, Impl$$_module.__default.TestNullsAmongKeys
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(401,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(401,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
              $Box(char#FromInt(110))), 
            $Box(char#FromInt(97))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(100))));
    call {:id "id400"} $nw := Call$$_module.MyClass.__ctor(name##0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $nw;
    defass#a#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(402,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(402,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(100))), 
        $Box(char#FromInt(121))));
    call {:id "id402"} $nw := Call$$_module.MyClass.__ctor(name##1);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $nw;
    defass#b#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(403,19)
    assume true;
    newtype$check#0 := null;
    assume true;
    c#0 := null;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(404,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(404,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
          $Box(char#FromInt(99))), 
        $Box(char#FromInt(107))));
    call {:id "id405"} $nw := Call$$_module.MyClass.__ctor(name##2);
    // TrCallStmt: After ProcessCallStmt
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(405,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(405,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(105))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(121))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(97))));
    call {:id "id407"} $nw := Call$$_module.MyClass.__ctor(name##3);
    // TrCallStmt: After ProcessCallStmt
    e#0 := $nw;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(407,9)
    assume true;
    assert {:id "id409"} defass#a#0;
    assert {:id "id410"} defass#b#0;
    assert {:id "id411"} defass#d#0;
    assume true;
    m#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(a#0), $Box(LitInt(0))), 
          $Box(b#0), 
          $Box(LitInt(1))), 
        $Box(c#0), 
        $Box(LitInt(2))), 
      $Box(d#0), 
      $Box(LitInt(3)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(408,9)
    assume true;
    assert {:id "id413"} defass#a#0;
    assert {:id "id414"} defass#b#0;
    assert {:id "id415"} defass#e#0;
    assume true;
    n#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(a#0), $Box(LitInt(0))), 
          $Box(b#0), 
          $Box(LitInt(10))), 
        $Box(c#0), 
        $Box(LitInt(20))), 
      $Box(e#0), 
      $Box(LitInt(4)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(409,9)
    assume true;
    assert {:id "id417"} defass#b#0;
    assert {:id "id418"} defass#a#0;
    assume true;
    o#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(b#0), $Box(LitInt(199))), 
      $Box(a#0), 
      $Box(LitInt(198)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(411,10)
    assume true;
    assert {:id "id420"} defass#b#0;
    assert {:id "id421"} defass#a#0;
    assume true;
    o'#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(b#0), $Box(LitInt(199))), 
        $Box(c#0), 
        $Box(LitInt(55))), 
      $Box(a#0), 
      $Box(LitInt(198)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(412,11)
    assume true;
    assert {:id "id423"} defass#b#0;
    assert {:id "id424"} defass#a#0;
    assume true;
    o''#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(b#0), $Box(LitInt(199))), 
        $Box(c#0), 
        $Box(LitInt(56))), 
      $Box(a#0), 
      $Box(LitInt(198)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(413,10)
    assume true;
    assert {:id "id426"} defass#d#0;
    assume true;
    o3#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(c#0), $Box(LitInt(3))), 
      $Box(d#0), 
      $Box(LitInt(16)));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(414,18)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Map#Equal(o#0, o'#0);
    assume true;
    $rhs#1 := Map#Equal(o'#0, o''#0);
    assume true;
    $rhs#2 := Map#Equal(o'#0, o'#0);
    x0#0 := $rhs#0;
    x1#0 := $rhs#1;
    x2#0 := $rhs#2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(415,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(417,9)
    assume true;
    assume true;
    p#0 := Map#Merge(m#0, n#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(418,9)
    assume true;
    assume true;
    q#0 := Map#Merge(n#0, o#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(419,9)
    assume true;
    assume true;
    r#0 := Map#Merge(o#0, m#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(420,9)
    assume true;
    assume true;
    s#0 := Map#Merge(o3#0, o#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(421,22)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#3 := Map#Equal(p#0, Map#Merge(n#0, m#0));
    assume true;
    $rhs#4 := Map#Equal(q#0, Map#Merge(o#0, n#0));
    assume true;
    $rhs#5 := Map#Equal(r#0, Map#Merge(m#0, o#0));
    assume true;
    $rhs#6 := Map#Equal(s#0, Map#Merge(o#0, o3#0));
    y0#0 := $rhs#3;
    y1#0 := $rhs#4;
    y2#0 := $rhs#5;
    y3#0 := $rhs#6;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(422,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(424,3)
    assert {:id "id446"} defass#a#0;
    assert {:id "id447"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id448"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id449"} defass#e#0;
    assert {:id "id450"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(425,3)
    assert {:id "id451"} defass#a#0;
    assert {:id "id452"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id453"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id454"} defass#e#0;
    assert {:id "id455"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(426,3)
    assert {:id "id456"} defass#a#0;
    assert {:id "id457"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id458"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id459"} defass#e#0;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(428,24)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type map<MyClass?, int>
    // TrCallStmt: Adding lhs with type map<MyClass?, int>
    // TrCallStmt: Adding lhs with type map<MyClass?, int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := m#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := o#0;
    assert {:id "id460"} defass#a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assert {:id "id461"} defass#e#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := e#0;
    call {:id "id462"} $rhs##0, $rhs##1, $rhs##2 := Call$$_module.__default.GenericMap(Tclass._module.MyClass?(), TInt, m##0, n##0, o##0, $Box(a##0), $Box(b##0));
    // TrCallStmt: After ProcessCallStmt
    p#0 := $rhs##0;
    q#0 := $rhs##1;
    r#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(429,3)
    assert {:id "id466"} defass#a#0;
    assert {:id "id467"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id468"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id469"} defass#e#0;
    assert {:id "id470"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(430,3)
    assert {:id "id471"} defass#a#0;
    assert {:id "id472"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id473"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id474"} defass#e#0;
    assert {:id "id475"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(e#0));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(431,3)
    assert {:id "id476"} defass#a#0;
    assert {:id "id477"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(a#0));
    assume true;
    assume true;
    assert {:id "id478"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(c#0));
    assume true;
    assume true;
    assert {:id "id479"} defass#e#0;
    assume true;
    assume true;
}



procedure {:verboseName "GenericMap (well-formedness)"} CheckWellFormed$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    o#0: Map
       where $Is(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.GenericMap$K)
         && $IsAllocBox(a#0, _module._default.GenericMap$K, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.GenericMap$K)
         && $IsAllocBox(b#0, _module._default.GenericMap$K, $Heap))
   returns (p#0: Map
       where $Is(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    q#0: Map
       where $Is(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    r#0: Map
       where $Is(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GenericMap (call)"} Call$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    o#0: Map
       where $Is(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.GenericMap$K)
         && $IsAllocBox(a#0, _module._default.GenericMap$K, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.GenericMap$K)
         && $IsAllocBox(b#0, _module._default.GenericMap$K, $Heap))
   returns (p#0: Map
       where $Is(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    q#0: Map
       where $Is(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    r#0: Map
       where $Is(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap));
  // user-defined preconditions
  requires {:id "id487"} Set#IsMember(Map#Domain(m#0), a#0);
  requires {:id "id488"} Set#IsMember(Map#Domain(n#0), a#0);
  requires {:id "id489"} !Set#IsMember(Map#Domain(m#0), b#0);
  requires {:id "id490"} !Set#IsMember(Map#Domain(o#0), b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id491"} Map#Equal(p#0, Map#Merge(m#0, n#0));
  ensures {:id "id492"} Map#Equal(q#0, Map#Merge(n#0, o#0));
  ensures {:id "id493"} Map#Equal(r#0, Map#Merge(o#0, m#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GenericMap (correctness)"} Impl$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map
       where $Is(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(m#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    n#0: Map
       where $Is(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(n#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    o#0: Map
       where $Is(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(o#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.GenericMap$K)
         && $IsAllocBox(a#0, _module._default.GenericMap$K, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.GenericMap$K)
         && $IsAllocBox(b#0, _module._default.GenericMap$K, $Heap))
   returns (p#0: Map
       where $Is(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(p#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    q#0: Map
       where $Is(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(q#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    r#0: Map
       where $Is(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V))
         && $IsAlloc(r#0, TMap(_module._default.GenericMap$K, _module._default.GenericMap$V), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id494"} Set#IsMember(Map#Domain(m#0), a#0);
  requires {:id "id495"} Set#IsMember(Map#Domain(n#0), a#0);
  requires {:id "id496"} !Set#IsMember(Map#Domain(m#0), b#0);
  requires {:id "id497"} !Set#IsMember(Map#Domain(o#0), b#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id498"} Map#Equal(p#0, Map#Merge(m#0, n#0));
  ensures {:id "id499"} Map#Equal(q#0, Map#Merge(n#0, o#0));
  ensures {:id "id500"} Map#Equal(r#0, Map#Merge(o#0, m#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GenericMap (correctness)"} Impl$$_module.__default.GenericMap(_module._default.GenericMap$K: Ty, 
    _module._default.GenericMap$V: Ty, 
    m#0: Map, 
    n#0: Map, 
    o#0: Map, 
    a#0: Box, 
    b#0: Box)
   returns (p#0: Map, q#0: Map, r#0: Map, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: GenericMap, Impl$$_module.__default.GenericMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(440,5)
    assume true;
    assume true;
    p#0 := Map#Merge(m#0, n#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(441,5)
    assume true;
    assume true;
    q#0 := Map#Merge(n#0, o#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(442,5)
    assume true;
    assume true;
    r#0 := Map#Merge(o#0, m#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(443,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(445,3)
    assume true;
    assert {:id "id504"} Set#Equal(Map#Domain(p#0), Set#Union(Map#Domain(m#0), Map#Domain(n#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(446,3)
    assume true;
    assert {:id "id505"} Set#Equal(Map#Domain(q#0), Set#Union(Map#Domain(o#0), Map#Domain(n#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(447,3)
    assume true;
    assert {:id "id506"} Set#Equal(Map#Domain(r#0), Set#Union(Map#Domain(m#0), Map#Domain(o#0)));
}



procedure {:verboseName "TestNullsAmongValues (well-formedness)"} CheckWellFormed$$_module.__default.TestNullsAmongValues();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestNullsAmongValues (call)"} Call$$_module.__default.TestNullsAmongValues();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNullsAmongValues (correctness)"} Impl$$_module.__default.TestNullsAmongValues() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestNullsAmongValues (correctness)"} Impl$$_module.__default.TestNullsAmongValues() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.MyClass())
         && $IsAlloc(a#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;
  var name##0: Seq;
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.MyClass())
         && $IsAlloc(b#0, Tclass._module.MyClass(), $Heap);
  var name##1: Seq;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.MyClass())
         && $IsAlloc(d#0, Tclass._module.MyClass(), $Heap);
  var name##2: Seq;
  var defass#e#0: bool;
  var e#0: ref
     where defass#e#0
       ==> $Is(e#0, Tclass._module.MyClass())
         && $IsAlloc(e#0, Tclass._module.MyClass(), $Heap);
  var name##3: Seq;
  var m#0: Map
     where $Is(m#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(m#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var n#0: Map
     where $Is(n#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(n#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var newtype$check#2: ref;
  var o#0: Map
     where $Is(o#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(o#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var newtype$check#3: ref;
  var o'#0: Map
     where $Is(o'#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(o'#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var newtype$check#4: ref;
  var o''#0: Map
     where $Is(o''#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(o''#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var newtype$check#5: ref;
  var o3#0: Map
     where $Is(o3#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(o3#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var newtype$check#6: ref;
  var x0#0: bool;
  var x1#0: bool;
  var x2#0: bool;
  var $rhs#0: bool;
  var $rhs#1: bool;
  var $rhs#2: bool;
  var p#0: Map
     where $Is(p#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(p#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var q#0: Map
     where $Is(q#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(q#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var r#0: Map
     where $Is(r#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(r#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var s#0: Map
     where $Is(s#0, TMap(TInt, Tclass._module.MyClass?()))
       && $IsAlloc(s#0, TMap(TInt, Tclass._module.MyClass?()), $Heap);
  var y0#0: bool;
  var y1#0: bool;
  var y2#0: bool;
  var y3#0: bool;
  var $rhs#3: bool;
  var $rhs#4: bool;
  var $rhs#5: bool;
  var $rhs#6: bool;
  var $rhs##0: Map;
  var $rhs##1: Map;
  var $rhs##2: Map;
  var m##0: Map;
  var n##0: Map;
  var o##0: Map;
  var a##0: int;
  var b##0: int;

    // AddMethodImpl: TestNullsAmongValues, Impl$$_module.__default.TestNullsAmongValues
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(451,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(451,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(111))), 
              $Box(char#FromInt(110))), 
            $Box(char#FromInt(97))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(100))));
    call {:id "id507"} $nw := Call$$_module.MyClass.__ctor(name##0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $nw;
    defass#a#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(452,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(452,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(119))), $Box(char#FromInt(101))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(100))), 
        $Box(char#FromInt(121))));
    call {:id "id509"} $nw := Call$$_module.MyClass.__ctor(name##1);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $nw;
    defass#b#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(453,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(453,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(106))), $Box(char#FromInt(97))), 
          $Box(char#FromInt(99))), 
        $Box(char#FromInt(107))));
    call {:id "id511"} $nw := Call$$_module.MyClass.__ctor(name##2);
    // TrCallStmt: After ProcessCallStmt
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(454,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(454,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    name##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(105))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(121))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(97))));
    call {:id "id513"} $nw := Call$$_module.MyClass.__ctor(name##3);
    // TrCallStmt: After ProcessCallStmt
    e#0 := $nw;
    defass#e#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(456,29)
    assume true;
    assert {:id "id515"} defass#a#0;
    assert {:id "id516"} defass#b#0;
    newtype$check#0 := null;
    newtype$check#1 := null;
    assume true;
    m#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(0)), $Box(a#0)), 
          $Box(LitInt(1)), 
          $Box(b#0)), 
        $Box(LitInt(2)), 
        $Box(null)), 
      $Box(LitInt(3)), 
      $Box(null));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(457,29)
    assume true;
    assert {:id "id518"} defass#d#0;
    assert {:id "id519"} defass#b#0;
    newtype$check#2 := null;
    assert {:id "id520"} defass#e#0;
    assume true;
    n#0 := Map#Build(Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(0)), $Box(d#0)), 
          $Box(LitInt(10)), 
          $Box(b#0)), 
        $Box(LitInt(20)), 
        $Box(null)), 
      $Box(LitInt(4)), 
      $Box(e#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(458,29)
    assume true;
    newtype$check#3 := null;
    assert {:id "id522"} defass#a#0;
    assume true;
    o#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(199)), $Box(null)), 
      $Box(LitInt(198)), 
      $Box(a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(460,30)
    assume true;
    assert {:id "id524"} defass#b#0;
    newtype$check#4 := null;
    assert {:id "id525"} defass#a#0;
    assume true;
    o'#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(199)), $Box(b#0)), 
        $Box(LitInt(55)), 
        $Box(null)), 
      $Box(LitInt(198)), 
      $Box(a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(461,31)
    assume true;
    assert {:id "id527"} defass#b#0;
    newtype$check#5 := null;
    assert {:id "id528"} defass#a#0;
    assume true;
    o''#0 := Map#Build(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(199)), $Box(b#0)), 
        $Box(LitInt(56)), 
        $Box(null)), 
      $Box(LitInt(198)), 
      $Box(a#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(462,30)
    assume true;
    newtype$check#6 := null;
    assert {:id "id530"} defass#d#0;
    assume true;
    o3#0 := Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(3)), $Box(null)), 
      $Box(LitInt(16)), 
      $Box(d#0));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(463,18)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := Map#Equal(o#0, o'#0);
    assume true;
    $rhs#1 := Map#Equal(o'#0, o''#0);
    assume true;
    $rhs#2 := Map#Equal(o'#0, o'#0);
    x0#0 := $rhs#0;
    x1#0 := $rhs#1;
    x2#0 := $rhs#2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(464,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(466,9)
    assume true;
    assume true;
    p#0 := Map#Merge(m#0, n#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(467,9)
    assume true;
    assume true;
    q#0 := Map#Merge(n#0, o#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(468,9)
    assume true;
    assume true;
    r#0 := Map#Merge(o#0, m#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(469,9)
    assume true;
    assume true;
    s#0 := Map#Merge(o3#0, o#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(470,22)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#3 := Map#Equal(p#0, Map#Merge(n#0, m#0));
    assume true;
    $rhs#4 := Map#Equal(q#0, Map#Merge(o#0, n#0));
    assume true;
    $rhs#5 := Map#Equal(r#0, Map#Merge(m#0, o#0));
    assume true;
    $rhs#6 := Map#Equal(s#0, Map#Merge(o#0, o3#0));
    y0#0 := $rhs#3;
    y1#0 := $rhs#4;
    y2#0 := $rhs#5;
    y3#0 := $rhs#6;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(471,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(473,3)
    assert {:id "id550"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(0)));
    assert {:id "id551"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    assert {:id "id552"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(1)));
    assert {:id "id553"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(1))]): ref != null;
    assume true;
    assume true;
    assert {:id "id554"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(474,3)
    assert {:id "id555"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(0)));
    assert {:id "id556"} {:subsumption 0} $Unbox(Map#Elements(q#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    assert {:id "id557"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(199)));
    assume true;
    assume true;
    assert {:id "id558"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(475,3)
    assert {:id "id559"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(0)));
    assert {:id "id560"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    assert {:id "id561"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(198)));
    assert {:id "id562"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(198))]): ref != null;
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(477,24)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type map<int, MyClass?>
    // TrCallStmt: Adding lhs with type map<int, MyClass?>
    // TrCallStmt: Adding lhs with type map<int, MyClass?>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := m#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    o##0 := o#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := LitInt(321);
    call {:id "id563"} $rhs##0, $rhs##1, $rhs##2 := Call$$_module.__default.GenericMap(TInt, Tclass._module.MyClass?(), m##0, n##0, o##0, $Box(a##0), $Box(b##0));
    // TrCallStmt: After ProcessCallStmt
    p#0 := $rhs##0;
    q#0 := $rhs##1;
    r#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(478,3)
    assert {:id "id567"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(0)));
    assert {:id "id568"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    assert {:id "id569"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(1)));
    assert {:id "id570"} {:subsumption 0} $Unbox(Map#Elements(p#0)[$Box(LitInt(1))]): ref != null;
    assume true;
    assume true;
    assert {:id "id571"} {:subsumption 0} Set#IsMember(Map#Domain(p#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(479,3)
    assert {:id "id572"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(0)));
    assert {:id "id573"} {:subsumption 0} $Unbox(Map#Elements(q#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    assert {:id "id574"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(199)));
    assume true;
    assume true;
    assert {:id "id575"} {:subsumption 0} Set#IsMember(Map#Domain(q#0), $Box(LitInt(20)));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(480,3)
    assert {:id "id576"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(0)));
    assert {:id "id577"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(0))]): ref != null;
    assume true;
    assume true;
    assert {:id "id578"} {:subsumption 0} Set#IsMember(Map#Domain(r#0), $Box(LitInt(198)));
    assert {:id "id579"} {:subsumption 0} $Unbox(Map#Elements(r#0)[$Box(LitInt(198))]): ref != null;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "TestMapMultiOccurrences (well-formedness)"} CheckWellFormed$$_module.__default.TestMapMultiOccurrences();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMapMultiOccurrences (call)"} Call$$_module.__default.TestMapMultiOccurrences();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMapMultiOccurrences (correctness)"} Impl$$_module.__default.TestMapMultiOccurrences() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMapMultiOccurrences (correctness)"} Impl$$_module.__default.TestMapMultiOccurrences() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Map
     where $Is(a#0, TMap(TInt, TInt)) && $IsAlloc(a#0, TMap(TInt, TInt), $Heap);

    // AddMethodImpl: TestMapMultiOccurrences, Impl$$_module.__default.TestMapMultiOccurrences
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(484,9)
    assume true;
    assume true;
    a#0 := Lit(Map#Build(Map#Build(Map#Empty(): Map, $Box(LitInt(1)), $Box(LitInt(1))), 
        $Box(LitInt(1)), 
        $Box(LitInt(2))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(485,3)
    assume true;
    assert {:id "id581"} Map#Card(a#0) == LitInt(1);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(487,3)
    assert {:id "id582"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(LitInt(1)));
    assume true;
    assert {:id "id583"} $Unbox(Map#Elements(a#0)[$Box(LitInt(1))]): int == LitInt(2);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(488,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(489,3)
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(490,3)
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(491,3)
    assume true;
    assert {:id "id584"} {:subsumption 0} Set#IsMember(Map#Domain(a#0), $Box(LitInt(1)));
    assume true;
    assume true;
}



procedure {:verboseName "MultiSetForming (well-formedness)"} CheckWellFormed$$_module.__default.MultiSetForming();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultiSetForming (call)"} Call$$_module.__default.MultiSetForming();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultiSetForming (correctness)"} Impl$$_module.__default.MultiSetForming() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ExplosiveUnion (well-formedness)"} CheckWellFormed$$_module.__default.ExplosiveUnion(_module._default.ExplosiveUnion$T: Ty, 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module._default.ExplosiveUnion$T))
         && $IsAlloc(a#0, TMultiSet(_module._default.ExplosiveUnion$T), $Heap), 
    N#0: int where LitInt(0) <= N#0)
   returns (b#0: MultiSet
       where $Is(b#0, TMultiSet(_module._default.ExplosiveUnion$T))
         && $IsAlloc(b#0, TMultiSet(_module._default.ExplosiveUnion$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ExplosiveUnion (call)"} Call$$_module.__default.ExplosiveUnion(_module._default.ExplosiveUnion$T: Ty, 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module._default.ExplosiveUnion$T))
         && $IsAlloc(a#0, TMultiSet(_module._default.ExplosiveUnion$T), $Heap), 
    N#0: int where LitInt(0) <= N#0)
   returns (b#0: MultiSet
       where $Is(b#0, TMultiSet(_module._default.ExplosiveUnion$T))
         && $IsAlloc(b#0, TMultiSet(_module._default.ExplosiveUnion$T), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ExplosiveUnion (correctness)"} Impl$$_module.__default.ExplosiveUnion(_module._default.ExplosiveUnion$T: Ty, 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module._default.ExplosiveUnion$T))
         && $IsAlloc(a#0, TMultiSet(_module._default.ExplosiveUnion$T), $Heap), 
    N#0: int where LitInt(0) <= N#0)
   returns (b#0: MultiSet
       where $Is(b#0, TMultiSet(_module._default.ExplosiveUnion$T))
         && $IsAlloc(b#0, TMultiSet(_module._default.ExplosiveUnion$T), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExplosiveUnion (correctness)"} Impl$$_module.__default.ExplosiveUnion(_module._default.ExplosiveUnion$T: Ty, a#0: MultiSet, N#0: int)
   returns (b#0: MultiSet, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: ExplosiveUnion, Impl$$_module.__default.ExplosiveUnion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(510,3)
    assume true;
    if (N#0 == LitInt(0))
    {
        push;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(511,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(511,5)
        assume true;
        assume true;
        b#0 := Lit(MultiSet#Empty(): MultiSet);
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(513,9)
    assume true;
    assume true;
    n#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(514,5)
    assume true;
    assume true;
    b#0 := a#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(515,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := N#0 - n#0;
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
      free invariant N#0 - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (N#0 <= n#0)
        {
            break;
        }

        $decr$loop#00 := N#0 - n#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(518,7)
        assume true;
        assume true;
        b#0 := MultiSet#Union(b#0, b#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(519,7)
        assume true;
        assume true;
        n#0 := n#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(515,3)
        assert {:id "id594"} 0 <= $decr$loop#00 || N#0 - n#0 == $decr$loop#00;
        assert {:id "id595"} N#0 - n#0 < $decr$loop#00;
    }
}



procedure {:verboseName "TestExplosiveUnion1 (well-formedness)"} CheckWellFormed$$_module.__default.TestExplosiveUnion1(_module._default.TestExplosiveUnion1$T: Ty, 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module._default.TestExplosiveUnion1$T))
         && $IsAlloc(a#0, TMultiSet(_module._default.TestExplosiveUnion1$T), $Heap), 
    N#0: int where LitInt(0) <= N#0, 
    t#0: Box
       where $IsBox(t#0, _module._default.TestExplosiveUnion1$T)
         && $IsAllocBox(t#0, _module._default.TestExplosiveUnion1$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestExplosiveUnion1 (call)"} Call$$_module.__default.TestExplosiveUnion1(_module._default.TestExplosiveUnion1$T: Ty, 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module._default.TestExplosiveUnion1$T))
         && $IsAlloc(a#0, TMultiSet(_module._default.TestExplosiveUnion1$T), $Heap), 
    N#0: int where LitInt(0) <= N#0, 
    t#0: Box
       where $IsBox(t#0, _module._default.TestExplosiveUnion1$T)
         && $IsAllocBox(t#0, _module._default.TestExplosiveUnion1$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestExplosiveUnion1 (correctness)"} Impl$$_module.__default.TestExplosiveUnion1(_module._default.TestExplosiveUnion1$T: Ty, 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module._default.TestExplosiveUnion1$T))
         && $IsAlloc(a#0, TMultiSet(_module._default.TestExplosiveUnion1$T), $Heap), 
    N#0: int where LitInt(0) <= N#0, 
    t#0: Box
       where $IsBox(t#0, _module._default.TestExplosiveUnion1$T)
         && $IsAllocBox(t#0, _module._default.TestExplosiveUnion1$T, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestExplosiveUnion1 (correctness)"} Impl$$_module.__default.TestExplosiveUnion1(_module._default.TestExplosiveUnion1$T: Ty, a#0: MultiSet, N#0: int, t#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: MultiSet
     where $Is(b#0, TMultiSet(_module._default.TestExplosiveUnion1$T))
       && $IsAlloc(b#0, TMultiSet(_module._default.TestExplosiveUnion1$T), $Heap);
  var $rhs##0: MultiSet;
  var a##0: MultiSet;
  var N##0: int;

    // AddMethodImpl: TestExplosiveUnion1, Impl$$_module.__default.TestExplosiveUnion1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(524,26)
    assume true;
    // TrCallStmt: Adding lhs with type multiset<T>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    N##0 := N#0;
    call {:id "id596"} $rhs##0 := Call$$_module.__default.ExplosiveUnion(_module._default.TestExplosiveUnion1$T, a##0, N##0);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(525,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
}



procedure {:verboseName "TestExplosiveUnion (well-formedness)"} CheckWellFormed$$_module.__default.TestExplosiveUnion();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestExplosiveUnion (call)"} Call$$_module.__default.TestExplosiveUnion();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestExplosiveUnion (correctness)"} Impl$$_module.__default.TestExplosiveUnion() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestExplosiveUnion (correctness)"} Impl$$_module.__default.TestExplosiveUnion() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a##0: MultiSet;
  var N##0: int;
  var t##0: int;
  var a##1: MultiSet;
  var N##1: int;
  var t##1: int;
  var a##2: MultiSet;
  var N##2: int;
  var t##2: int;
  var m#0: MultiSet
     where $Is(m#0, TMultiSet(Tclass._module.MyClass?()))
       && $IsAlloc(m#0, TMultiSet(Tclass._module.MyClass?()), $Heap);
  var newtype$check#0: ref;
  var a##3: MultiSet;
  var N##3: int;
  var t##3: ref;
  var newtype$check#1: ref;

    // AddMethodImpl: TestExplosiveUnion, Impl$$_module.__default.TestExplosiveUnion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(529,22)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := Lit(MultiSet#Empty(): MultiSet);
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id598"} $Is(LitInt(100), Tclass._System.nat());
    N##0 := LitInt(100);
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := LitInt(58);
    call {:id "id599"} Call$$_module.__default.TestExplosiveUnion1(TInt, a##0, N##0, $Box(t##0));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(530,22)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(58))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id600"} $Is(LitInt(30), Tclass._System.nat());
    N##1 := LitInt(30);
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##1 := LitInt(58);
    call {:id "id601"} Call$$_module.__default.TestExplosiveUnion1(TInt, a##1, N##1, $Box(t##1));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(531,22)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(58))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id602"} $Is(LitInt(100), Tclass._System.nat());
    N##2 := LitInt(100);
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##2 := LitInt(58);
    call {:id "id603"} Call$$_module.__default.TestExplosiveUnion1(TInt, a##2, N##2, $Box(t##2));
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(532,29)
    assume true;
    newtype$check#0 := null;
    assume true;
    m#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(null));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Collections.dfy(533,22)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##3 := m#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id605"} $Is(LitInt(100), Tclass._System.nat());
    N##3 := LitInt(100);
    newtype$check#1 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##3 := null;
    call {:id "id606"} Call$$_module.__default.TestExplosiveUnion1(Tclass._module.MyClass?(), a##3, N##3, $Box(t##3));
    // TrCallStmt: After ProcessCallStmt
}



const unique class._module.Trait?: ClassName;

function Tclass._module.Trait?() : Ty
uses {
// Tclass._module.Trait? Tag
axiom Tag(Tclass._module.Trait?()) == Tagclass._module.Trait?
   && TagFamily(Tclass._module.Trait?()) == tytagFamily$Trait;
}

const unique Tagclass._module.Trait?: TyTag;

// Box/unbox axiom for Tclass._module.Trait?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Trait?()) } 
  $IsBox(bx, Tclass._module.Trait?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Trait?()));

// $Is axiom for trait Trait
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Trait?()) } 
  $Is($o, Tclass._module.Trait?())
     <==> $o == null || implements$_module.Trait(dtype($o)));

// $IsAlloc axiom for trait Trait
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Trait?(), $h) } 
  $IsAlloc($o, Tclass._module.Trait?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Trait(ty: Ty) : bool;

// $Is axiom for non-null type _module.Trait
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Trait()) } { $Is(c#0, Tclass._module.Trait?()) } 
  $Is(c#0, Tclass._module.Trait())
     <==> $Is(c#0, Tclass._module.Trait?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Trait
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Trait(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Trait?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Trait(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Trait?(), $h));

const unique class._module.Class?: ClassName;

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Class?()) } 
  $Is($o, Tclass._module.Class?())
     <==> $o == null || dtype($o) == Tclass._module.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Class?(), $h) } 
  $IsAlloc($o, Tclass._module.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Class()) } { $Is(c#0, Tclass._module.Class?()) } 
  $Is(c#0, Tclass._module.Class())
     <==> $Is(c#0, Tclass._module.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Class(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Class?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Class(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Class?(), $h));

// Constructor function declaration
function #_module.Cell.Cell(int) : DatatypeType;

const unique ##_module.Cell.Cell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #_module.Cell.Cell(a#0#0#0) } 
  DatatypeCtorId(#_module.Cell.Cell(a#0#0#0)) == ##_module.Cell.Cell);
}

function _module.Cell.Cell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Cell.Cell_q(d) } 
  _module.Cell.Cell_q(d) <==> DatatypeCtorId(d) == ##_module.Cell.Cell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Cell.Cell_q(d) } 
  _module.Cell.Cell_q(d)
     ==> (exists a#1#0#0: int :: d == #_module.Cell.Cell(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#_module.Cell.Cell(a#2#0#0), Tclass._module.Cell()) } 
  $Is(#_module.Cell.Cell(a#2#0#0), Tclass._module.Cell()) <==> $Is(a#2#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Cell.data(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Cell.Cell_q(d)
       && $IsAlloc(d, Tclass._module.Cell(), $h)
     ==> $IsAlloc(_module.Cell.data(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #_module.Cell.Cell(LitInt(a#3#0#0)) } 
  #_module.Cell.Cell(LitInt(a#3#0#0)) == Lit(#_module.Cell.Cell(a#3#0#0)));

function _module.Cell.data(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #_module.Cell.Cell(a#4#0#0) } 
  _module.Cell.data(#_module.Cell.Cell(a#4#0#0)) == a#4#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Cell(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Cell())
     ==> $IsAlloc(d, Tclass._module.Cell(), $h));

// Depth-one case-split function
function $IsA#_module.Cell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Cell(d) } 
  $IsA#_module.Cell(d) ==> _module.Cell.Cell_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Cell.Cell_q(d), $Is(d, Tclass._module.Cell()) } 
  $Is(d, Tclass._module.Cell()) ==> _module.Cell.Cell_q(d));

// Datatype extensional equality declaration
function _module.Cell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Cell.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Cell#Equal(a, b) } 
  _module.Cell#Equal(a, b) <==> _module.Cell.data(a) == _module.Cell.data(b));

// Datatype extensionality axiom: _module.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Cell#Equal(a, b) } 
  _module.Cell#Equal(a, b) <==> a == b);

const unique class._module.Cell: ClassName;

// Constructor function declaration
function #_module.Color.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
// Constructor $Is
axiom $Is(#_module.Color.Blue(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Blue() == Lit(#_module.Color.Blue());
}

const unique ##_module.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
}

function _module.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) ==> d == #_module.Color.Blue());

// Constructor function declaration
function #_module.Color.Yellow() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Yellow()) == ##_module.Color.Yellow;
// Constructor $Is
axiom $Is(#_module.Color.Yellow(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Yellow() == Lit(#_module.Color.Yellow());
}

const unique ##_module.Color.Yellow: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Yellow()) == ##_module.Color.Yellow;
}

function _module.Color.Yellow_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Yellow_q(d) } 
  _module.Color.Yellow_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Yellow);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Yellow_q(d) } 
  _module.Color.Yellow_q(d) ==> d == #_module.Color.Yellow());

// Constructor function declaration
function #_module.Color.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
// Constructor $Is
axiom $Is(#_module.Color.Red(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Red() == Lit(#_module.Color.Red());
}

const unique ##_module.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
}

function _module.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) ==> d == #_module.Color.Red());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Color())
     ==> $IsAlloc(d, Tclass._module.Color(), $h));

// Depth-one case-split function
function $IsA#_module.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Color(d) } 
  $IsA#_module.Color(d)
     ==> _module.Color.Blue_q(d) || _module.Color.Yellow_q(d) || _module.Color.Red_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Yellow_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Blue_q(d), $Is(d, Tclass._module.Color()) } 
  $Is(d, Tclass._module.Color())
     ==> _module.Color.Blue_q(d) || _module.Color.Yellow_q(d) || _module.Color.Red_q(d));

// Datatype extensional equality declaration
function _module.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Blue_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Blue_q(b) } 
  _module.Color.Blue_q(a) && _module.Color.Blue_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Yellow
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Yellow_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Yellow_q(b) } 
  _module.Color.Yellow_q(a) && _module.Color.Yellow_q(b)
     ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Red_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Red_q(b) } 
  _module.Color.Red_q(a) && _module.Color.Red_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensionality axiom: _module.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b) } 
  _module.Color#Equal(a, b) <==> a == b);

const unique class._module.Color: ClassName;

const unique class._module.MyClass?: ClassName;

// $Is axiom for class MyClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyClass?()) } 
  $Is($o, Tclass._module.MyClass?())
     <==> $o == null || dtype($o) == Tclass._module.MyClass?());

// $IsAlloc axiom for class MyClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClass?(), $h) } 
  $IsAlloc($o, Tclass._module.MyClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.MyClass.name(this: ref) : Seq
uses {
// MyClass.name: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.MyClass.name($o) } 
    $o != null && dtype($o) == Tclass._module.MyClass?()
       ==> $Is(_module.MyClass.name($o), TSeq(TChar)));
// MyClass.name: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.MyClass.name($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.MyClass?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.MyClass.name($o), TSeq(TChar), $h));
}

procedure {:verboseName "MyClass._ctor (well-formedness)"} CheckWellFormed$$_module.MyClass.__ctor(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyClass._ctor (call)"} Call$$_module.MyClass.__ctor(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass())
         && $IsAlloc(this, Tclass._module.MyClass(), $Heap));
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



procedure {:verboseName "MyClass._ctor (correctness)"} Impl$$_module.MyClass.__ctor(name#0: Seq
       where $Is(name#0, TSeq(TChar)) && $IsAlloc(name#0, TSeq(TChar), $Heap))
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



// $Is axiom for non-null type _module.MyClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MyClass()) } { $Is(c#0, Tclass._module.MyClass?()) } 
  $Is(c#0, Tclass._module.MyClass())
     <==> $Is(c#0, Tclass._module.MyClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MyClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClass?(), $h));

const unique class.Order.__default: ClassName;

const unique class.Order.T: ClassName;

const unique class.CharOrder.__default: ClassName;

const unique class.CharSetSetOrder.__default: ClassName;

// function declaration for CharSetSetOrder._default.Pow2
function CharSetSetOrder.__default.Pow2($ly: LayerType, i#0: int) : int;

function CharSetSetOrder.__default.Pow2#canCall(i#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, i#0: int :: 
  { CharSetSetOrder.__default.Pow2($LS($ly), i#0) } 
  CharSetSetOrder.__default.Pow2($LS($ly), i#0)
     == CharSetSetOrder.__default.Pow2($ly, i#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, i#0: int :: 
  { CharSetSetOrder.__default.Pow2(AsFuelBottom($ly), i#0) } 
  CharSetSetOrder.__default.Pow2($ly, i#0)
     == CharSetSetOrder.__default.Pow2($LZ, i#0));

// consequence axiom for CharSetSetOrder.__default.Pow2
axiom (forall $ly: LayerType, i#0: int :: 
  { CharSetSetOrder.__default.Pow2($ly, i#0) } 
  CharSetSetOrder.__default.Pow2#canCall(i#0) || LitInt(0) <= i#0
     ==> LitInt(0) <= CharSetSetOrder.__default.Pow2($ly, i#0));

function CharSetSetOrder.__default.Pow2#requires(LayerType, int) : bool;

// #requires axiom for CharSetSetOrder.__default.Pow2
axiom (forall $ly: LayerType, i#0: int :: 
  { CharSetSetOrder.__default.Pow2#requires($ly, i#0) } 
  LitInt(0) <= i#0 ==> CharSetSetOrder.__default.Pow2#requires($ly, i#0) == true);

// definition axiom for CharSetSetOrder.__default.Pow2 (revealed)
axiom {:id "id608"} (forall $ly: LayerType, i#0: int :: 
  { CharSetSetOrder.__default.Pow2($LS($ly), i#0) } 
  CharSetSetOrder.__default.Pow2#canCall(i#0) || LitInt(0) <= i#0
     ==> (i#0 != LitInt(0) ==> CharSetSetOrder.__default.Pow2#canCall(i#0 - 1))
       && CharSetSetOrder.__default.Pow2($LS($ly), i#0)
         == (if i#0 == LitInt(0)
           then 1
           else Mul(LitInt(2), CharSetSetOrder.__default.Pow2($ly, i#0 - 1))));

// definition axiom for CharSetSetOrder.__default.Pow2 for all literals (revealed)
axiom {:id "id609"} (forall $ly: LayerType, i#0: int :: 
  {:weight 3} { CharSetSetOrder.__default.Pow2($LS($ly), LitInt(i#0)) } 
  CharSetSetOrder.__default.Pow2#canCall(LitInt(i#0)) || LitInt(0) <= i#0
     ==> (LitInt(i#0) != LitInt(0)
         ==> CharSetSetOrder.__default.Pow2#canCall(LitInt(i#0 - 1)))
       && CharSetSetOrder.__default.Pow2($LS($ly), LitInt(i#0))
         == (if LitInt(i#0) == LitInt(0)
           then 1
           else Mul(LitInt(2), LitInt(CharSetSetOrder.__default.Pow2($LS($ly), LitInt(i#0 - 1))))));

const class.PrintOrderedSet.O.Abs.__default: ClassName;

const class.PrintOrderedSet.O.Abs.T: ClassName;

const unique class.PrintOrderedSet.__default: ClassName;

const unique class.CharSetPrinter.__default: ClassName;

const unique class.CharSetSetPrinter.__default: ClassName;

procedure {:verboseName "CharSetSetPrinter.Print (well-formedness)"} CheckWellFormed$$CharSetSetPrinter.__default.Print(s#0: Set
       where $Is(s#0, TSet(TSet(TChar))) && $IsAlloc(s#0, TSet(TSet(TChar)), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CharSetSetPrinter.Print (call)"} Call$$CharSetSetPrinter.__default.Print(s#0: Set
       where $Is(s#0, TSet(TSet(TChar))) && $IsAlloc(s#0, TSet(TSet(TChar)), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.BoundedIntegerParameters.__default: ClassName;

procedure {:verboseName "BoundedIntegerParameters.Test (well-formedness)"} CheckWellFormed$$BoundedIntegerParameters.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoundedIntegerParameters.Test (call)"} Call$$BoundedIntegerParameters.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.BoundedIntegerParameters.short() : Ty
uses {
// Tclass.BoundedIntegerParameters.short Tag
axiom Tag(Tclass.BoundedIntegerParameters.short())
     == Tagclass.BoundedIntegerParameters.short
   && TagFamily(Tclass.BoundedIntegerParameters.short()) == tytagFamily$short;
}

const unique Tagclass.BoundedIntegerParameters.short: TyTag;

// Box/unbox axiom for Tclass.BoundedIntegerParameters.short
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.BoundedIntegerParameters.short()) } 
  $IsBox(bx, Tclass.BoundedIntegerParameters.short())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.BoundedIntegerParameters.short()));

// $Is axiom for newtype BoundedIntegerParameters.short
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.BoundedIntegerParameters.short()) } 
  $Is(x#0, Tclass.BoundedIntegerParameters.short())
     <==> LitInt(0) <= x#0 && x#0 < 256);

// $IsAlloc axiom for newtype BoundedIntegerParameters.short
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.BoundedIntegerParameters.short(), $h) } 
  $IsAlloc(x#0, Tclass.BoundedIntegerParameters.short(), $h));

const unique class.BoundedIntegerParameters.short: ClassName;

function Tclass.BoundedIntegerParameters.tall() : Ty
uses {
// Tclass.BoundedIntegerParameters.tall Tag
axiom Tag(Tclass.BoundedIntegerParameters.tall())
     == Tagclass.BoundedIntegerParameters.tall
   && TagFamily(Tclass.BoundedIntegerParameters.tall()) == tytagFamily$tall;
}

const unique Tagclass.BoundedIntegerParameters.tall: TyTag;

// Box/unbox axiom for Tclass.BoundedIntegerParameters.tall
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.BoundedIntegerParameters.tall()) } 
  $IsBox(bx, Tclass.BoundedIntegerParameters.tall())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.BoundedIntegerParameters.tall()));

// $Is axiom for newtype BoundedIntegerParameters.tall
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.BoundedIntegerParameters.tall()) } 
  $Is(x#0, Tclass.BoundedIntegerParameters.tall())
     <==> LitInt(0) <= x#0 && x#0 < 65536);

// $IsAlloc axiom for newtype BoundedIntegerParameters.tall
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.BoundedIntegerParameters.tall(), $h) } 
  $IsAlloc(x#0, Tclass.BoundedIntegerParameters.tall(), $h));

const unique class.BoundedIntegerParameters.tall: ClassName;

function Tclass.BoundedIntegerParameters.grande() : Ty
uses {
// Tclass.BoundedIntegerParameters.grande Tag
axiom Tag(Tclass.BoundedIntegerParameters.grande())
     == Tagclass.BoundedIntegerParameters.grande
   && TagFamily(Tclass.BoundedIntegerParameters.grande()) == tytagFamily$grande;
}

const unique Tagclass.BoundedIntegerParameters.grande: TyTag;

// Box/unbox axiom for Tclass.BoundedIntegerParameters.grande
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.BoundedIntegerParameters.grande()) } 
  $IsBox(bx, Tclass.BoundedIntegerParameters.grande())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.BoundedIntegerParameters.grande()));

// $Is axiom for newtype BoundedIntegerParameters.grande
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.BoundedIntegerParameters.grande()) } 
  $Is(x#0, Tclass.BoundedIntegerParameters.grande())
     <==> LitInt(0) <= x#0 && x#0 < 4294967296);

// $IsAlloc axiom for newtype BoundedIntegerParameters.grande
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.BoundedIntegerParameters.grande(), $h) } 
  $IsAlloc(x#0, Tclass.BoundedIntegerParameters.grande(), $h));

const unique class.BoundedIntegerParameters.grande: ClassName;

function Tclass.BoundedIntegerParameters.venti() : Ty
uses {
// Tclass.BoundedIntegerParameters.venti Tag
axiom Tag(Tclass.BoundedIntegerParameters.venti())
     == Tagclass.BoundedIntegerParameters.venti
   && TagFamily(Tclass.BoundedIntegerParameters.venti()) == tytagFamily$venti;
}

const unique Tagclass.BoundedIntegerParameters.venti: TyTag;

// Box/unbox axiom for Tclass.BoundedIntegerParameters.venti
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.BoundedIntegerParameters.venti()) } 
  $IsBox(bx, Tclass.BoundedIntegerParameters.venti())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.BoundedIntegerParameters.venti()));

// $Is axiom for newtype BoundedIntegerParameters.venti
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.BoundedIntegerParameters.venti()) } 
  $Is(x#0, Tclass.BoundedIntegerParameters.venti())
     <==> LitInt(0) <= x#0 && x#0 < 18446744073709551616);

// $IsAlloc axiom for newtype BoundedIntegerParameters.venti
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.BoundedIntegerParameters.venti(), $h) } 
  $IsAlloc(x#0, Tclass.BoundedIntegerParameters.venti(), $h));

const unique class.BoundedIntegerParameters.venti: ClassName;

function Tclass.BoundedIntegerParameters.little() : Ty
uses {
// Tclass.BoundedIntegerParameters.little Tag
axiom Tag(Tclass.BoundedIntegerParameters.little())
     == Tagclass.BoundedIntegerParameters.little
   && TagFamily(Tclass.BoundedIntegerParameters.little()) == tytagFamily$little;
}

const unique Tagclass.BoundedIntegerParameters.little: TyTag;

// Box/unbox axiom for Tclass.BoundedIntegerParameters.little
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.BoundedIntegerParameters.little()) } 
  $IsBox(bx, Tclass.BoundedIntegerParameters.little())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.BoundedIntegerParameters.little()));

// $Is axiom for newtype BoundedIntegerParameters.little
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.BoundedIntegerParameters.little()) } 
  $Is(x#0, Tclass.BoundedIntegerParameters.little())
     <==> LitInt(-12) <= x#0 && x#0 < 12);

// $IsAlloc axiom for newtype BoundedIntegerParameters.little
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.BoundedIntegerParameters.little(), $h) } 
  $IsAlloc(x#0, Tclass.BoundedIntegerParameters.little(), $h));

const unique class.BoundedIntegerParameters.little: ClassName;

function Tclass.BoundedIntegerParameters.big() : Ty
uses {
// Tclass.BoundedIntegerParameters.big Tag
axiom Tag(Tclass.BoundedIntegerParameters.big())
     == Tagclass.BoundedIntegerParameters.big
   && TagFamily(Tclass.BoundedIntegerParameters.big()) == tytagFamily$big;
}

const unique Tagclass.BoundedIntegerParameters.big: TyTag;

// Box/unbox axiom for Tclass.BoundedIntegerParameters.big
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.BoundedIntegerParameters.big()) } 
  $IsBox(bx, Tclass.BoundedIntegerParameters.big())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.BoundedIntegerParameters.big()));

// $Is axiom for newtype BoundedIntegerParameters.big
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.BoundedIntegerParameters.big()) } 
  $Is(x#0, Tclass.BoundedIntegerParameters.big())
     <==> LitInt(-12) <= x#0 && x#0 < 281474976710656);

// $IsAlloc axiom for newtype BoundedIntegerParameters.big
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.BoundedIntegerParameters.big(), $h) } 
  $IsAlloc(x#0, Tclass.BoundedIntegerParameters.big(), $h));

const unique class.BoundedIntegerParameters.big: ClassName;

const unique class.Regressions.__default: ClassName;

procedure {:verboseName "Regressions.Test (well-formedness)"} CheckWellFormed$$Regressions.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regressions.Test (call)"} Call$$Regressions.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.Regressions.uint32() : Ty
uses {
// Tclass.Regressions.uint32 Tag
axiom Tag(Tclass.Regressions.uint32()) == Tagclass.Regressions.uint32
   && TagFamily(Tclass.Regressions.uint32()) == tytagFamily$uint32;
}

const unique Tagclass.Regressions.uint32: TyTag;

// Box/unbox axiom for Tclass.Regressions.uint32
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Regressions.uint32()) } 
  $IsBox(bx, Tclass.Regressions.uint32())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.Regressions.uint32()));

// $Is axiom for newtype Regressions.uint32
axiom (forall i#0: int :: 
  { $Is(i#0, Tclass.Regressions.uint32()) } 
  $Is(i#0, Tclass.Regressions.uint32()) <==> LitInt(0) <= i#0 && i#0 < 4294967296);

// $IsAlloc axiom for newtype Regressions.uint32
axiom (forall i#0: int, $h: Heap :: 
  { $IsAlloc(i#0, Tclass.Regressions.uint32(), $h) } 
  $IsAlloc(i#0, Tclass.Regressions.uint32(), $h));

const unique class.Regressions.uint32: ClassName;

// type axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Class?()) } 
  $Is($o, Tclass._module.Class?()) ==> $Is($o, Tclass._module.Trait?()));

axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Class?()) } 
  $IsBox(bx, Tclass._module.Class?()) ==> $IsBox(bx, Tclass._module.Trait?()));

// allocation axiom for trait parent: Class? extends Trait?
axiom (forall $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Class?(), $heap) } 
  $IsAlloc($o, Tclass._module.Class?(), $heap)
     ==> $IsAlloc($o, Tclass._module.Trait?(), $heap));

axiom (forall bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Class?(), $h) } 
  $IsAllocBox(bx, Tclass._module.Class?(), $h) && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Trait?(), $h));

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

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$short: TyTagFamily;

const unique tytagFamily$tall: TyTagFamily;

const unique tytagFamily$grande: TyTagFamily;

const unique tytagFamily$venti: TyTagFamily;

const unique tytagFamily$little: TyTagFamily;

const unique tytagFamily$big: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;
