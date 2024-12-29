// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "Fill_I (well-formedness)"} CheckWellFormed$$_module.__default.Fill__I(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_I (well-formedness)"} CheckWellFormed$$_module.__default.Fill__I(s#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var i#2: int;
  var j#0: int;


    // AddMethodImpl: Fill_I, CheckWellFormed$$_module.__default.Fill__I
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(1) <= i#0)
        {
        }

        assume {:id "id35"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id36"} 0 <= i#0 - 1 && i#0 - 1 < Seq#Length(s#0);
        assert {:id "id37"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume {:id "id38"} $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }
    else
    {
        assume {:id "id39"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }

    assume {:id "id40"} (forall i#1: int, _t#0#0: int :: 
      { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
      _t#0#0 == i#1 - 1
         ==> 
        LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    havoc i#2;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < j#0)
        {
        }

        assume {:id "id41"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id42"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id43"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id44"} $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id45"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id46"} (forall i#3: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
}



procedure {:verboseName "Fill_I (call)"} Call$$_module.__default.Fill__I(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id47"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id48"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Fill_I (correctness)"} Impl$$_module.__default.Fill__I(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id49"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id50"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    (forall i$ih#0#0: int :: 
          { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i$ih#0#0)): int } 
          0 <= i$ih#0#0 && i$ih#0#0 < i#3
             ==> 
            LitInt(0) <= i$ih#0#0 && i$ih#0#0 < j#1 && j#1 < Seq#Length(s#0)
             ==> $Unbox(Seq#Index(s#0, i$ih#0#0)): int <= $Unbox(Seq#Index(s#0, j#1)): int)
         && true
       ==> 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_I (correctness)"} Impl$$_module.__default.Fill__I(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Fill_I, Impl$$_module.__default.Fill__I
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Fill_J (well-formedness)"} CheckWellFormed$$_module.__default.Fill__J(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_J (well-formedness)"} CheckWellFormed$$_module.__default.Fill__J(s#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var i#2: int;
  var j#0: int;


    // AddMethodImpl: Fill_J, CheckWellFormed$$_module.__default.Fill__J
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(1) <= i#0)
        {
        }

        assume {:id "id51"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id52"} 0 <= i#0 - 1 && i#0 - 1 < Seq#Length(s#0);
        assert {:id "id53"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume {:id "id54"} $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }
    else
    {
        assume {:id "id55"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }

    assume {:id "id56"} (forall i#1: int, _t#0#0: int :: 
      { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
      _t#0#0 == i#1 - 1
         ==> 
        LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    havoc i#2;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < j#0)
        {
        }

        assume {:id "id57"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id58"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id59"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id60"} $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id61"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id62"} (forall i#3: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
}



procedure {:verboseName "Fill_J (call)"} Call$$_module.__default.Fill__J(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id63"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id64"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Fill_J (correctness)"} Impl$$_module.__default.Fill__J(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id65"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id66"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    (forall j$ih#0#0: int :: 
          { $Unbox(Seq#Index(s#0, j$ih#0#0)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
          0 <= j$ih#0#0 && j$ih#0#0 < j#1
             ==> 
            LitInt(0) <= i#3 && i#3 < j$ih#0#0 && j$ih#0#0 < Seq#Length(s#0)
             ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j$ih#0#0)): int)
         && true
       ==> 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_J (correctness)"} Impl$$_module.__default.Fill__J(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Fill_J, Impl$$_module.__default.Fill__J
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Fill_All (well-formedness)"} CheckWellFormed$$_module.__default.Fill__All(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_All (well-formedness)"} CheckWellFormed$$_module.__default.Fill__All(s#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var i#2: int;
  var j#0: int;


    // AddMethodImpl: Fill_All, CheckWellFormed$$_module.__default.Fill__All
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(1) <= i#0)
        {
        }

        assume {:id "id67"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id68"} 0 <= i#0 - 1 && i#0 - 1 < Seq#Length(s#0);
        assert {:id "id69"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume {:id "id70"} $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }
    else
    {
        assume {:id "id71"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }

    assume {:id "id72"} (forall i#1: int, _t#0#0: int :: 
      { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
      _t#0#0 == i#1 - 1
         ==> 
        LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    havoc i#2;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < j#0)
        {
        }

        assume {:id "id73"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id74"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id75"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id76"} $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id77"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id78"} (forall i#3: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
}



procedure {:verboseName "Fill_All (call)"} Call$$_module.__default.Fill__All(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id79"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id80"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Fill_All (correctness)"} Impl$$_module.__default.Fill__All(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id81"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id82"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    (forall i$ih#0#0: int, j$ih#0#0: int :: 
          { $Unbox(Seq#Index(s#0, j$ih#0#0)): int, $Unbox(Seq#Index(s#0, i$ih#0#0)): int } 
          (0 <= i$ih#0#0 && i$ih#0#0 < i#3)
               || (i$ih#0#0 == i#3 && 0 <= j$ih#0#0 && j$ih#0#0 < j#1)
             ==> 
            LitInt(0) <= i$ih#0#0 && i$ih#0#0 < j$ih#0#0 && j$ih#0#0 < Seq#Length(s#0)
             ==> $Unbox(Seq#Index(s#0, i$ih#0#0)): int <= $Unbox(Seq#Index(s#0, j$ih#0#0)): int)
         && true
       ==> 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_All (correctness)"} Impl$$_module.__default.Fill__All(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Fill_All, Impl$$_module.__default.Fill__All
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Fill_True (well-formedness)"} CheckWellFormed$$_module.__default.Fill__True(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_True (well-formedness)"} CheckWellFormed$$_module.__default.Fill__True(s#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var i#2: int;
  var j#0: int;


    // AddMethodImpl: Fill_True, CheckWellFormed$$_module.__default.Fill__True
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(1) <= i#0)
        {
        }

        assume {:id "id83"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id84"} 0 <= i#0 - 1 && i#0 - 1 < Seq#Length(s#0);
        assert {:id "id85"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume {:id "id86"} $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }
    else
    {
        assume {:id "id87"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }

    assume {:id "id88"} (forall i#1: int, _t#0#0: int :: 
      { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
      _t#0#0 == i#1 - 1
         ==> 
        LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    havoc i#2;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < j#0)
        {
        }

        assume {:id "id89"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id90"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id91"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id92"} $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id93"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id94"} (forall i#3: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
}



procedure {:verboseName "Fill_True (call)"} Call$$_module.__default.Fill__True(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id95"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id96"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Fill_True (correctness)"} Impl$$_module.__default.Fill__True(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id97"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id98"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    (forall i$ih#0#0: int, j$ih#0#0: int :: 
          { $Unbox(Seq#Index(s#0, j$ih#0#0)): int, $Unbox(Seq#Index(s#0, i$ih#0#0)): int } 
          (0 <= i$ih#0#0 && i$ih#0#0 < i#3)
               || (i$ih#0#0 == i#3 && 0 <= j$ih#0#0 && j$ih#0#0 < j#1)
             ==> 
            LitInt(0) <= i$ih#0#0 && i$ih#0#0 < j$ih#0#0 && j$ih#0#0 < Seq#Length(s#0)
             ==> $Unbox(Seq#Index(s#0, i$ih#0#0)): int <= $Unbox(Seq#Index(s#0, j$ih#0#0)): int)
         && true
       ==> 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_True (correctness)"} Impl$$_module.__default.Fill__True(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Fill_True, Impl$$_module.__default.Fill__True
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Fill_False (well-formedness)"} CheckWellFormed$$_module.__default.Fill__False(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_False (well-formedness)"} CheckWellFormed$$_module.__default.Fill__False(s#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var i#2: int;
  var j#0: int;


    // AddMethodImpl: Fill_False, CheckWellFormed$$_module.__default.Fill__False
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(1) <= i#0)
        {
        }

        assume {:id "id99"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id100"} 0 <= i#0 - 1 && i#0 - 1 < Seq#Length(s#0);
        assert {:id "id101"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume {:id "id102"} $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }
    else
    {
        assume {:id "id103"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }

    assume {:id "id104"} (forall i#1: int, _t#0#0: int :: 
      { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
      _t#0#0 == i#1 - 1
         ==> 
        LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    havoc i#2;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < j#0)
        {
        }

        assume {:id "id105"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id106"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id107"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id108"} $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id109"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id110"} (forall i#3: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
}



procedure {:verboseName "Fill_False (call)"} Call$$_module.__default.Fill__False(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id111"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id112"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Fill_False (correctness)"} Impl$$_module.__default.Fill__False(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id113"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id114"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_False (correctness)"} Impl$$_module.__default.Fill__False(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Fill_False, Impl$$_module.__default.Fill__False
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Fill_None (well-formedness)"} CheckWellFormed$$_module.__default.Fill__None(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_None (well-formedness)"} CheckWellFormed$$_module.__default.Fill__None(s#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var i#2: int;
  var j#0: int;


    // AddMethodImpl: Fill_None, CheckWellFormed$$_module.__default.Fill__None
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(1) <= i#0)
        {
        }

        assume {:id "id115"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0);
        assert {:id "id116"} 0 <= i#0 - 1 && i#0 - 1 < Seq#Length(s#0);
        assert {:id "id117"} 0 <= i#0 && i#0 < Seq#Length(s#0);
        assume {:id "id118"} $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }
    else
    {
        assume {:id "id119"} LitInt(1) <= i#0 && i#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#0 - 1)): int <= $Unbox(Seq#Index(s#0, i#0)): int;
    }

    assume {:id "id120"} (forall i#1: int, _t#0#0: int :: 
      { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
      _t#0#0 == i#1 - 1
         ==> 
        LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    havoc i#2;
    havoc j#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < j#0)
        {
        }

        assume {:id "id121"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0);
        assert {:id "id122"} 0 <= i#2 && i#2 < Seq#Length(s#0);
        assert {:id "id123"} 0 <= j#0 && j#0 < Seq#Length(s#0);
        assume {:id "id124"} $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }
    else
    {
        assume {:id "id125"} LitInt(0) <= i#2 && i#2 < j#0 && j#0 < Seq#Length(s#0)
           ==> $Unbox(Seq#Index(s#0, i#2)): int <= $Unbox(Seq#Index(s#0, j#0)): int;
    }

    assume {:id "id126"} (forall i#3: int, j#1: int :: 
      { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
         ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
}



procedure {:verboseName "Fill_None (call)"} Call$$_module.__default.Fill__None(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id127"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id128"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Fill_None (correctness)"} Impl$$_module.__default.Fill__None(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id129"} (forall i#1: int, _t#0#0: int :: 
    { $Unbox(Seq#Index(s#0, i#1)): int, $Unbox(Seq#Index(s#0, _t#0#0)): int } 
    _t#0#0 == i#1 - 1
       ==> 
      LitInt(1) <= i#1 && i#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, _t#0#0)): int <= $Unbox(Seq#Index(s#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id130"} (forall i#3: int, j#1: int :: 
    { $Unbox(Seq#Index(s#0, j#1)): int, $Unbox(Seq#Index(s#0, i#3)): int } 
    LitInt(0) <= i#3 && i#3 < j#1 && j#1 < Seq#Length(s#0)
       ==> $Unbox(Seq#Index(s#0, i#3)): int <= $Unbox(Seq#Index(s#0, j#1)): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Fill_None (correctness)"} Impl$$_module.__default.Fill__None(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Fill_None, Impl$$_module.__default.Fill__None
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



function Tclass._module.Cdefg(Ty) : Ty;

const unique Tagclass._module.Cdefg: TyTag;

// Tclass._module.Cdefg Tag
axiom (forall _module.Cdefg$T: Ty :: 
  { Tclass._module.Cdefg(_module.Cdefg$T) } 
  Tag(Tclass._module.Cdefg(_module.Cdefg$T)) == Tagclass._module.Cdefg
     && TagFamily(Tclass._module.Cdefg(_module.Cdefg$T)) == tytagFamily$Cdefg);

function Tclass._module.Cdefg_0(Ty) : Ty;

// Tclass._module.Cdefg injectivity 0
axiom (forall _module.Cdefg$T: Ty :: 
  { Tclass._module.Cdefg(_module.Cdefg$T) } 
  Tclass._module.Cdefg_0(Tclass._module.Cdefg(_module.Cdefg$T)) == _module.Cdefg$T);

// Box/unbox axiom for Tclass._module.Cdefg
axiom (forall _module.Cdefg$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cdefg(_module.Cdefg$T)) } 
  $IsBox(bx, Tclass._module.Cdefg(_module.Cdefg$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Cdefg(_module.Cdefg$T)));

procedure {:verboseName "Test_ArrayElementLhsOfCall (well-formedness)"} CheckWellFormed$$_module.__default.Test__ArrayElementLhsOfCall(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._System.nat()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._System.nat()), $Heap), 
    i#0: int, 
    c#0: ref
       where $Is(c#0, Tclass._module.Cdefg(Tclass._System.nat()))
         && $IsAlloc(c#0, Tclass._module.Cdefg(Tclass._System.nat()), $Heap))
   returns (x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test_ArrayElementLhsOfCall (call)"} Call$$_module.__default.Test__ArrayElementLhsOfCall(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._System.nat()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._System.nat()), $Heap), 
    i#0: int, 
    c#0: ref
       where $Is(c#0, Tclass._module.Cdefg(Tclass._System.nat()))
         && $IsAlloc(c#0, Tclass._module.Cdefg(Tclass._System.nat()), $Heap))
   returns (x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test_ArrayElementLhsOfCall (correctness)"} Impl$$_module.__default.Test__ArrayElementLhsOfCall(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._System.nat()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._System.nat()), $Heap), 
    i#0: int, 
    c#0: ref
       where $Is(c#0, Tclass._module.Cdefg(Tclass._System.nat()))
         && $IsAlloc(c#0, Tclass._module.Cdefg(Tclass._System.nat()), $Heap))
   returns (x#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test_ArrayElementLhsOfCall (correctness)"} Impl$$_module.__default.Test__ArrayElementLhsOfCall(a#0: ref, i#0: int, c#0: ref) returns (x#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: int;
  var $obj0: ref;
  var $index0: Field;
  var $rhs##0_0: int;
  var a##0_0: ref;
  var i##0_0: int;
  var c##0_0: ref;
  var $rhs#0_1: int;
  var $rhs##0_1: int;
  var a##0_1: ref;
  var i##0_1: int;
  var c##0_1: ref;
  var n#0_0: int where LitInt(0) <= n#0_0;
  var $rhs##0_2: int;
  var a##0_2: ref;
  var i##0_2: int;
  var c##0_2: ref;

    // AddMethodImpl: Test_ArrayElementLhsOfCall, Impl$$_module.__default.Test__ArrayElementLhsOfCall
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0 || $o == c#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(254,3)
    if (LitInt(0) <= i#0)
    {
        assert {:id "id131"} a#0 != null;
    }

    assume true;
    if (LitInt(0) <= i#0 && i#0 < _System.array.Length(a#0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(255,10)
        assert {:id "id132"} a#0 != null;
        assert {:id "id133"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume true;
        assert {:id "id134"} $_ModifiesFrame[a#0, IndexField(i#0)];
        assert {:id "id135"} $Is(x#0, Tclass._System.nat());
        assume true;
        $rhs#0_0 := x#0;
        $Heap := update($Heap, a#0, IndexField(i#0), $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(256,39)
        assert {:id "id138"} a#0 != null;
        assert {:id "id139"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume true;
        $obj0 := a#0;
        $index0 := IndexField(i#0);
        assert {:id "id140"} $_ModifiesFrame[$obj0, $index0];
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        i##0_0 := i#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_0 := c#0;
        assert {:id "id141"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == a##0_0 || $o == c##0_0)
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id142"} 0 <= i#0 || (a##0_0 == null && a#0 != null) || i##0_0 == i#0;
        assert {:id "id143"} (a##0_0 == null && a#0 != null)
           || ((a##0_0 != null <==> a#0 != null)
             && (i##0_0 < i#0 || (i##0_0 == i#0 && c##0_0 == null && c#0 != null)));
        call {:id "id144"} $rhs##0_0 := Call$$_module.__default.Test__ArrayElementLhsOfCall(a##0_0, i##0_0, c##0_0);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id145"} $Is($rhs##0_0, Tclass._System.nat());
        $Heap := update($Heap, $obj0, $index0, $Box($rhs##0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(257,9)
        assert {:id "id147"} c#0 != null;
        assume true;
        assert {:id "id148"} $_ModifiesFrame[c#0, _module.Cdefg.t];
        assert {:id "id149"} $Is(x#0 - 1, Tclass._System.nat());
        assume true;
        $rhs#0_1 := x#0 - 1;
        $Heap := update($Heap, c#0, _module.Cdefg.t, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(258,38)
        assert {:id "id152"} c#0 != null;
        assume true;
        $obj0 := c#0;
        assert {:id "id153"} $_ModifiesFrame[$obj0, _module.Cdefg.t];
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_1 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        i##0_1 := i#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_1 := c#0;
        assert {:id "id154"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == a##0_1 || $o == c##0_1)
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id155"} 0 <= i#0 || (a##0_1 == null && a#0 != null) || i##0_1 == i#0;
        assert {:id "id156"} (a##0_1 == null && a#0 != null)
           || ((a##0_1 != null <==> a#0 != null)
             && (i##0_1 < i#0 || (i##0_1 == i#0 && c##0_1 == null && c#0 != null)));
        call {:id "id157"} $rhs##0_1 := Call$$_module.__default.Test__ArrayElementLhsOfCall(a##0_1, i##0_1, c##0_1);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id158"} $Is($rhs##0_1, Tclass._System.nat());
        $Heap := update($Heap, $obj0, _module.Cdefg.t, $Box($rhs##0_1));
        assume $IsGoodHeap($Heap);
        havoc n#0_0 /* where LitInt(0) <= n#0_0 */;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(260,36)
        assume true;
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_2 := a#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        i##0_2 := i#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_2 := c#0;
        assert {:id "id160"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == a##0_2 || $o == c##0_2)
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id161"} 0 <= i#0 || (a##0_2 == null && a#0 != null) || i##0_2 == i#0;
        assert {:id "id162"} (a##0_2 == null && a#0 != null)
           || ((a##0_2 != null <==> a#0 != null)
             && (i##0_2 < i#0 || (i##0_2 == i#0 && c##0_2 == null && c#0 != null)));
        call {:id "id163"} $rhs##0_2 := Call$$_module.__default.Test__ArrayElementLhsOfCall(a##0_2, i##0_2, c##0_2);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id164"} $Is($rhs##0_2, Tclass._System.nat());
        n#0_0 := $rhs##0_2;
    }
    else
    {
    }
}



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

procedure {:verboseName "AllocationBusiness0 (well-formedness)"} CheckWellFormed$$_module.__default.AllocationBusiness0(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._module.MyClass()), $Heap), 
    j#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationBusiness0 (well-formedness)"} CheckWellFormed$$_module.__default.AllocationBusiness0(a#0: ref, j#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: AllocationBusiness0, CheckWellFormed$$_module.__default.AllocationBusiness0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= j#0)
    {
        assert {:id "id166"} a#0 != null;
    }

    assume {:id "id167"} LitInt(0) <= j#0 && j#0 < _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "AllocationBusiness0 (call)"} Call$$_module.__default.AllocationBusiness0(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._module.MyClass()), $Heap), 
    j#0: int);
  // user-defined preconditions
  requires {:id "id168"} LitInt(0) <= j#0;
  requires {:id "id169"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocationBusiness0 (correctness)"} Impl$$_module.__default.AllocationBusiness0(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._module.MyClass()), $Heap), 
    j#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id170"} LitInt(0) <= j#0;
  requires {:id "id171"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationBusiness0 (correctness)"} Impl$$_module.__default.AllocationBusiness0(a#0: ref, j#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.MyClass())
         && $IsAlloc(c#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;

    // AddMethodImpl: AllocationBusiness0, Impl$$_module.__default.AllocationBusiness0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(282,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.MyClass?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(283,3)
    assert {:id "id173"} defass#c#0;
    assert {:id "id174"} a#0 != null;
    assert {:id "id175"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id176"} {:subsumption 0} $Unbox(read($Heap, a#0, IndexField(j#0))): ref != null;
    assume true;
    assert {:id "id177"} !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref, _module.MyClass.Repr)): Set, 
      $Box(c#0));
}



procedure {:verboseName "AllocationBusiness1 (well-formedness)"} CheckWellFormed$$_module.__default.AllocationBusiness1(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._module.MyClass()), $Heap), 
    j#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationBusiness1 (well-formedness)"} CheckWellFormed$$_module.__default.AllocationBusiness1(a#0: ref, j#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: AllocationBusiness1, CheckWellFormed$$_module.__default.AllocationBusiness1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= j#0)
    {
        assert {:id "id178"} a#0 != null;
    }

    assume {:id "id179"} LitInt(0) <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id180"} a#0 != null;
    assert {:id "id181"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id182"} $Unbox(read($Heap, a#0, IndexField(j#0))): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(read($Heap, a#0, IndexField(j#0)), Tclass._module.MyClass?(), $Heap);
    assume _module.MyClass.Valid#canCall($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref);
    assume {:id "id183"} _module.MyClass.Valid($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "AllocationBusiness1 (call)"} Call$$_module.__default.AllocationBusiness1(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._module.MyClass()), $Heap), 
    j#0: int);
  // user-defined preconditions
  requires {:id "id184"} LitInt(0) <= j#0;
  requires {:id "id185"} j#0 < _System.array.Length(a#0);
  requires {:id "id186"} _module.MyClass.Valid($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocationBusiness1 (correctness)"} Impl$$_module.__default.AllocationBusiness1(a#0: ref
       where $Is(a#0, Tclass._System.array(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array(Tclass._module.MyClass()), $Heap), 
    j#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id187"} LitInt(0) <= j#0;
  requires {:id "id188"} j#0 < _System.array.Length(a#0);
  requires {:id "id189"} _module.MyClass.Valid($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationBusiness1 (correctness)"} Impl$$_module.__default.AllocationBusiness1(a#0: ref, j#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.MyClass())
         && $IsAlloc(c#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;

    // AddMethodImpl: AllocationBusiness1, Impl$$_module.__default.AllocationBusiness1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(290,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.MyClass?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(291,3)
    assert {:id "id191"} a#0 != null;
    assert {:id "id192"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id193"} {:subsumption 0} $Unbox(read($Heap, a#0, IndexField(j#0))): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(read($Heap, a#0, IndexField(j#0)), Tclass._module.MyClass?(), $Heap);
    assume _module.MyClass.Valid#canCall($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref);
    assume _module.MyClass.Valid#canCall($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref);
    assert {:id "id194"} _module.MyClass.Valid($Heap, $Unbox(read($Heap, a#0, IndexField(j#0))): ref);
}



procedure {:verboseName "AllocationBusiness2 (well-formedness)"} CheckWellFormed$$_module.__default.AllocationBusiness2(a#0: ref
       where $Is(a#0, Tclass._System.array2(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array2(Tclass._module.MyClass()), $Heap), 
    i#0: int, 
    j#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationBusiness2 (well-formedness)"} CheckWellFormed$$_module.__default.AllocationBusiness2(a#0: ref, i#0: int, j#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: AllocationBusiness2, CheckWellFormed$$_module.__default.AllocationBusiness2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (LitInt(0) <= i#0)
    {
        assert {:id "id195"} a#0 != null;
    }

    assume {:id "id196"} LitInt(0) <= i#0 && i#0 < _System.array2.Length0(a#0);
    if (LitInt(0) <= j#0)
    {
        assert {:id "id197"} a#0 != null;
    }

    assume {:id "id198"} LitInt(0) <= j#0 && j#0 < _System.array2.Length1(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "AllocationBusiness2 (call)"} Call$$_module.__default.AllocationBusiness2(a#0: ref
       where $Is(a#0, Tclass._System.array2(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array2(Tclass._module.MyClass()), $Heap), 
    i#0: int, 
    j#0: int);
  // user-defined preconditions
  requires {:id "id199"} LitInt(0) <= i#0;
  requires {:id "id200"} i#0 < _System.array2.Length0(a#0);
  requires {:id "id201"} LitInt(0) <= j#0;
  requires {:id "id202"} j#0 < _System.array2.Length1(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllocationBusiness2 (correctness)"} Impl$$_module.__default.AllocationBusiness2(a#0: ref
       where $Is(a#0, Tclass._System.array2(Tclass._module.MyClass()))
         && $IsAlloc(a#0, Tclass._System.array2(Tclass._module.MyClass()), $Heap), 
    i#0: int, 
    j#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id203"} LitInt(0) <= i#0;
  requires {:id "id204"} i#0 < _System.array2.Length0(a#0);
  requires {:id "id205"} LitInt(0) <= j#0;
  requires {:id "id206"} j#0 < _System.array2.Length1(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationBusiness2 (correctness)"} Impl$$_module.__default.AllocationBusiness2(a#0: ref, i#0: int, j#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.MyClass())
         && $IsAlloc(c#0, Tclass._module.MyClass(), $Heap);
  var $nw: ref;

    // AddMethodImpl: AllocationBusiness2, Impl$$_module.__default.AllocationBusiness2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(297,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.MyClass?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(298,3)
    assert {:id "id208"} defass#c#0;
    assert {:id "id209"} a#0 != null;
    assert {:id "id210"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array2.Length0(a#0);
    assert {:id "id211"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array2.Length1(a#0);
    assert {:id "id212"} {:subsumption 0} $Unbox(read($Heap, a#0, MultiIndexField(IndexField(i#0), j#0))): ref != null;
    assume true;
    assert {:id "id213"} !Set#IsMember($Unbox(read($Heap, 
          $Unbox(read($Heap, a#0, MultiIndexField(IndexField(i#0), j#0))): ref, 
          _module.MyClass.Repr)): Set, 
      $Box(c#0));
}



const unique class._module.A?: ClassName;

function Tclass._module.A?() : Ty
uses {
// Tclass._module.A? Tag
axiom Tag(Tclass._module.A?()) == Tagclass._module.A?
   && TagFamily(Tclass._module.A?()) == tytagFamily$A;
}

const unique Tagclass._module.A?: TyTag;

// Box/unbox axiom for Tclass._module.A?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.A?()) } 
  $IsBox(bx, Tclass._module.A?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.A?()));

// $Is axiom for class A
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.A?()) } 
  $Is($o, Tclass._module.A?()) <==> $o == null || dtype($o) == Tclass._module.A?());

// $IsAlloc axiom for class A
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.A?(), $h) } 
  $IsAlloc($o, Tclass._module.A?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.A() : Ty
uses {
// Tclass._module.A Tag
axiom Tag(Tclass._module.A()) == Tagclass._module.A
   && TagFamily(Tclass._module.A()) == tytagFamily$A;
}

const unique Tagclass._module.A: TyTag;

// Box/unbox axiom for Tclass._module.A
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.A()) } 
  $IsBox(bx, Tclass._module.A())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.A()));

procedure {:verboseName "A.M (well-formedness)"} CheckWellFormed$$_module.A.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.M (call)"} Call$$_module.A.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.M (correctness)"} Impl$$_module.A.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.M (correctness)"} Impl$$_module.A.M(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0: ref
     where $Is(y#0, Tclass._System.array(Tclass._module.A?()))
       && $IsAlloc(y#0, Tclass._System.array(Tclass._module.A?()), $Heap);
  var $nw: ref;
  var $rhs#0: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: M, Impl$$_module.A.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(6,11)
    assume true;
    assert {:id "id214"} 0 <= LitInt(100);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.A?()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(100);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    y#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(7,10)
    assert {:id "id216"} y#0 != null;
    assert {:id "id217"} 0 <= LitInt(5) && LitInt(5) < _System.array.Length(y#0);
    assume true;
    assert {:id "id218"} $_ModifiesFrame[y#0, IndexField(LitInt(5))];
    newtype$check#0 := null;
    assume true;
    $rhs#0 := null;
    $Heap := update($Heap, y#0, IndexField(LitInt(5)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "A.N0 (well-formedness)"} CheckWellFormed$$_module.A.N0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.N0 (call)"} Call$$_module.A.N0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.N0 (correctness)"} Impl$$_module.A.N0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.N0 (correctness)"} Impl$$_module.A.N0(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TInt))
       && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap);
  var $rhs#0_0: int;

    // AddMethodImpl: N0, Impl$$_module.A.N0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0 /* where $Is(a#0, Tclass._System.array(TInt))
       && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap) */;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(12,5)
    assert {:id "id221"} a#0 != null;
    assume true;
    if (5 < _System.array.Length(a#0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(13,12)
        assert {:id "id222"} a#0 != null;
        assert {:id "id223"} 0 <= LitInt(5) && LitInt(5) < _System.array.Length(a#0);
        assume true;
        assert {:id "id224"} $_ModifiesFrame[a#0, IndexField(LitInt(5))];
        assume true;
        $rhs#0_0 := LitInt(12);
        $Heap := update($Heap, a#0, IndexField(LitInt(5)), $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



procedure {:verboseName "A.N1 (well-formedness)"} CheckWellFormed$$_module.A.N1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(TInt))
         && $IsAlloc(a#0, Tclass._System.array?(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.N1 (call)"} Call$$_module.A.N1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(TInt))
         && $IsAlloc(a#0, Tclass._System.array?(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.N1 (correctness)"} Impl$$_module.A.N1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(TInt))
         && $IsAlloc(a#0, Tclass._System.array?(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.N1 (correctness)"} Impl$$_module.A.N1(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: int;

    // AddMethodImpl: N1, Impl$$_module.A.N1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(20,11)
    assume true;
    assert {:id "id227"} a#0 != null;
    assume true;
    b#0 := _System.array.Length(a#0);
}



procedure {:verboseName "A.N2 (well-formedness)"} CheckWellFormed$$_module.A.N2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.N2 (call)"} Call$$_module.A.N2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.N2 (correctness)"} Impl$$_module.A.N2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.N2 (correctness)"} Impl$$_module.A.N2(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: N2, Impl$$_module.A.N2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(26,10)
    assert {:id "id229"} a#0 != null;
    assert {:id "id230"} 0 <= LitInt(5) && LitInt(5) < _System.array.Length(a#0);
    assume true;
    assert {:id "id231"} $_ModifiesFrame[a#0, IndexField(LitInt(5))];
    assume true;
    $rhs#0 := LitInt(12);
    $Heap := update($Heap, a#0, IndexField(LitInt(5)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "A.N3 (well-formedness)"} CheckWellFormed$$_module.A.N3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.N3 (well-formedness)"} CheckWellFormed$$_module.A.N3(this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;


    // AddMethodImpl: N3, CheckWellFormed$$_module.A.N3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assert {:id "id234"} a#0 != null;
    assume {:id "id235"} 5 < _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (LitInt(0) <= i#0)
        {
            assert {:id "id236"} a#0 != null;
        }

        if (LitInt(0) <= i#0 && i#0 < _System.array.Length(a#0))
        {
            assert {:id "id237"} a#0 != null;
            assert {:id "id238"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
            assert {:id "id239"} a#0 != null;
            assert {:id "id240"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id241"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
            if ($Unbox(read($Heap, a#0, IndexField(i#0))): int
               != $Unbox(read(old($Heap), a#0, IndexField(i#0))): int)
            {
                if (i#0 == LitInt(5))
                {
                    assert {:id "id242"} a#0 != null;
                    assert {:id "id243"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
                }
            }
        }
    }

    // End Comprehension WF check
    assume {:id "id244"} (forall i#1: int :: 
      { $Unbox(read(old($Heap), a#0, IndexField(i#1))): int } 
        { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
      LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
         ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int
             == $Unbox(read(old($Heap), a#0, IndexField(i#1))): int
           || (i#1 == LitInt(5)
             && $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(12)));
}



procedure {:verboseName "A.N3 (call)"} Call$$_module.A.N3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id245"} 5 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id246"} (forall i#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(i#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
    LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
       ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int
           == $Unbox(read(old($Heap), a#0, IndexField(i#1))): int
         || (i#1 == LitInt(5)
           && $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(12)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.N3 (correctness)"} Impl$$_module.A.N3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id247"} 5 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id248"} (forall i#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(i#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(i#1))): int } 
    LitInt(0) <= i#1 && i#1 < _System.array.Length(a#0)
       ==> $Unbox(read($Heap, a#0, IndexField(i#1))): int
           == $Unbox(read(old($Heap), a#0, IndexField(i#1))): int
         || (i#1 == LitInt(5)
           && $Unbox(read($Heap, a#0, IndexField(i#1))): int == LitInt(12)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.N3 (correctness)"} Impl$$_module.A.N3(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: N3, Impl$$_module.A.N3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(34,10)
    assert {:id "id249"} a#0 != null;
    assert {:id "id250"} 0 <= LitInt(5) && LitInt(5) < _System.array.Length(a#0);
    assume true;
    assert {:id "id251"} $_ModifiesFrame[a#0, IndexField(LitInt(5))];
    assume true;
    $rhs#0 := LitInt(12);
    $Heap := update($Heap, a#0, IndexField(LitInt(5)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



const _module.A.zz0: Field
uses {
axiom FDim(_module.A.zz0) == 0
   && FieldOfDecl(class._module.A?, field$zz0) == _module.A.zz0
   && !$IsGhostField(_module.A.zz0);
}

// A.zz0: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.zz0)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.A?()
     ==> $Is($Unbox(read($h, $o, _module.A.zz0)): ref, 
      Tclass._System.array(Tclass._module.A?())));

// A.zz0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.zz0)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.A.zz0)): ref, 
      Tclass._System.array(Tclass._module.A?()), 
      $h));

const _module.A.zz1: Field
uses {
axiom FDim(_module.A.zz1) == 0
   && FieldOfDecl(class._module.A?, field$zz1) == _module.A.zz1
   && !$IsGhostField(_module.A.zz1);
}

function Tclass._module.B?() : Ty
uses {
// Tclass._module.B? Tag
axiom Tag(Tclass._module.B?()) == Tagclass._module.B?
   && TagFamily(Tclass._module.B?()) == tytagFamily$B;
}

const unique Tagclass._module.B?: TyTag;

// Box/unbox axiom for Tclass._module.B?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.B?()) } 
  $IsBox(bx, Tclass._module.B?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.B?()));

// A.zz1: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.zz1)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.A?()
     ==> $Is($Unbox(read($h, $o, _module.A.zz1)): ref, 
      Tclass._System.array(Tclass._module.B?())));

// A.zz1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.zz1)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.A.zz1)): ref, 
      Tclass._System.array(Tclass._module.B?()), 
      $h));

procedure {:verboseName "A.O (well-formedness)"} CheckWellFormed$$_module.A.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.O (call)"} Call$$_module.A.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.O (correctness)"} Impl$$_module.A.O(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.O (correctness)"} Impl$$_module.A.O(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zz2#0: ref
     where $Is(zz2#0, Tclass._System.array(Tclass._module.A?()))
       && $IsAlloc(zz2#0, Tclass._System.array(Tclass._module.A?()), $Heap);
  var $nw: ref;
  var o#0: ref
     where $Is(o#0, Tclass._System.object?())
       && $IsAlloc(o#0, Tclass._System.object?(), $Heap);
  var newtype$check#0_0: ref;
  var newtype$check#0: ref;

    // AddMethodImpl: O, Impl$$_module.A.O
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(40,13)
    assume true;
    assert {:id "id254"} 0 <= LitInt(25);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.A?()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(25);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    zz2#0 := $nw;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(41,5)
    assume true;
    assert {:id "id256"} zz2#0 != $Unbox(read($Heap, this, _module.A.zz0)): ref;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(42,20)
    assume true;
    assume true;
    o#0 := $Unbox(read($Heap, this, _module.A.zz0)): ref;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(43,5)
    assume true;
    assert {:id "id258"} this != o#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(45,5)
    assert {:id "id259"} $Unbox(read($Heap, this, _module.A.zz0)): ref != null;
    if (LitInt(2) <= _System.array.Length($Unbox(read($Heap, this, _module.A.zz0)): ref))
    {
        assert {:id "id260"} $Unbox(read($Heap, this, _module.A.zz0)): ref != null;
        assert {:id "id261"} $Unbox(read($Heap, this, _module.A.zz1)): ref != null;
    }

    assume true;
    if (LitInt(2) <= _System.array.Length($Unbox(read($Heap, this, _module.A.zz0)): ref)
       && _System.array.Length($Unbox(read($Heap, this, _module.A.zz0)): ref)
         == _System.array.Length($Unbox(read($Heap, this, _module.A.zz1)): ref))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(46,9)
        assume true;
        assert {:id "id262"} $Unbox(read($Heap, this, _module.A.zz1)): ref != null;
        assert {:id "id263"} 0 <= LitInt(1)
           && LitInt(1) < _System.array.Length($Unbox(read($Heap, this, _module.A.zz1)): ref);
        assume true;
        o#0 := $Unbox(read($Heap, $Unbox(read($Heap, this, _module.A.zz1)): ref, IndexField(LitInt(1)))): ref;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(47,7)
        assert {:id "id265"} $Unbox(read($Heap, this, _module.A.zz0)): ref != null;
        assert {:id "id266"} {:subsumption 0} 0 <= LitInt(1)
           && LitInt(1) < _System.array.Length($Unbox(read($Heap, this, _module.A.zz0)): ref);
        if ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.A.zz0)): ref, IndexField(LitInt(1)))): ref
           == o#0)
        {
            newtype$check#0_0 := null;
        }

        assume true;
        assert {:id "id267"} {:subsumption 0} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.A.zz0)): ref, IndexField(LitInt(1)))): ref
             == o#0
           ==> o#0 == null;
        assume {:id "id268"} $Unbox(read($Heap, $Unbox(read($Heap, this, _module.A.zz0)): ref, IndexField(LitInt(1)))): ref
             == o#0
           ==> o#0 == null;
        pop;
    }
    else
    {
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(50,5)
    assert {:id "id269"} zz2#0 != null;
    assert {:id "id270"} {:subsumption 0} 0 <= LitInt(20) && LitInt(20) < _System.array.Length(zz2#0);
    newtype$check#0 := null;
    assume true;
    assert {:id "id271"} $Unbox(read($Heap, zz2#0, IndexField(LitInt(20)))): ref == null;
}



const _module.A.x: Field
uses {
axiom FDim(_module.A.x) == 0
   && FieldOfDecl(class._module.A?, field$x) == _module.A.x
   && !$IsGhostField(_module.A.x);
}

// A.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.x)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.A?()
     ==> $Is($Unbox(read($h, $o, _module.A.x)): ref, Tclass._System.array(TInt)));

// A.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.A.x)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.A?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.A.x)): ref, Tclass._System.array(TInt), $h));

procedure {:verboseName "A.P0 (well-formedness)"} CheckWellFormed$$_module.A.P0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.P0 (call)"} Call$$_module.A.P0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.P0 (correctness)"} Impl$$_module.A.P0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.P0 (correctness)"} Impl$$_module.A.P0(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: int;

    // AddMethodImpl: P0, Impl$$_module.A.P0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(57,5)
    assert {:id "id272"} $Unbox(read($Heap, this, _module.A.x)): ref != null;
    assume true;
    if (LitInt(100) <= _System.array.Length($Unbox(read($Heap, this, _module.A.x)): ref))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(58,12)
        assert {:id "id273"} $Unbox(read($Heap, this, _module.A.x)): ref != null;
        assert {:id "id274"} 0 <= LitInt(5)
           && LitInt(5) < _System.array.Length($Unbox(read($Heap, this, _module.A.x)): ref);
        assume true;
        assert {:id "id275"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.A.x)): ref, IndexField(LitInt(5))];
        assume true;
        $rhs#0_0 := LitInt(12);
        $Heap := update($Heap, 
          $Unbox(read($Heap, this, _module.A.x)): ref, 
          IndexField(LitInt(5)), 
          $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



procedure {:verboseName "A.P1 (well-formedness)"} CheckWellFormed$$_module.A.P1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.P1 (well-formedness)"} CheckWellFormed$$_module.A.P1(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: P1, CheckWellFormed$$_module.A.P1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.A.x);
    assert {:id "id278"} this != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == this && $f == _module.A.x));
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "A.P1 (call)"} Call$$_module.A.P1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == this && $f == _module.A.x));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.P1 (correctness)"} Impl$$_module.A.P1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == this && $f == _module.A.x));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.P1 (correctness)"} Impl$$_module.A.P1(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: int;

    // AddMethodImpl: P1, Impl$$_module.A.P1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.A.x);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(64,5)
    assert {:id "id279"} $Unbox(read($Heap, this, _module.A.x)): ref != null;
    assume true;
    if (LitInt(100) <= _System.array.Length($Unbox(read($Heap, this, _module.A.x)): ref))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(65,12)
        assert {:id "id280"} $Unbox(read($Heap, this, _module.A.x)): ref != null;
        assert {:id "id281"} 0 <= LitInt(5)
           && LitInt(5) < _System.array.Length($Unbox(read($Heap, this, _module.A.x)): ref);
        assume true;
        assert {:id "id282"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.A.x)): ref, IndexField(LitInt(5))];
        assume true;
        $rhs#0_0 := LitInt(12);
        $Heap := update($Heap, 
          $Unbox(read($Heap, this, _module.A.x)): ref, 
          IndexField(LitInt(5)), 
          $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



procedure {:verboseName "A.P2 (well-formedness)"} CheckWellFormed$$_module.A.P2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.P2 (call)"} Call$$_module.A.P2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), this, _module.A.x)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.P2 (correctness)"} Impl$$_module.A.P2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || $o == $Unbox(read(old($Heap), this, _module.A.x)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.P2 (correctness)"} Impl$$_module.A.P2(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: int;

    // AddMethodImpl: P2, Impl$$_module.A.P2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == $Unbox(read($Heap, this, _module.A.x)): ref);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(71,5)
    assert {:id "id285"} $Unbox(read($Heap, this, _module.A.x)): ref != null;
    assume true;
    if (LitInt(100) <= _System.array.Length($Unbox(read($Heap, this, _module.A.x)): ref))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(72,12)
        assert {:id "id286"} $Unbox(read($Heap, this, _module.A.x)): ref != null;
        assert {:id "id287"} 0 <= LitInt(5)
           && LitInt(5) < _System.array.Length($Unbox(read($Heap, this, _module.A.x)): ref);
        assume true;
        assert {:id "id288"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.A.x)): ref, IndexField(LitInt(5))];
        assume true;
        $rhs#0_0 := LitInt(12);
        $Heap := update($Heap, 
          $Unbox(read($Heap, this, _module.A.x)): ref, 
          IndexField(LitInt(5)), 
          $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
    }
    else
    {
    }
}



procedure {:verboseName "A.Q (well-formedness)"} CheckWellFormed$$_module.A.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.Q (call)"} Call$$_module.A.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.Q (correctness)"} Impl$$_module.A.Q(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.Q (correctness)"} Impl$$_module.A.Q(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TInt))
       && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap);
  var $nw: ref;
  var $obj0: ref;
  var $index0: Field;
  var $obj1: ref;
  var $index1: Field;
  var $obj2: ref;
  var $index2: Field;
  var $obj3: ref;
  var $index3: Field;
  var $obj4: ref;
  var $index4: Field;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var $rhs#4: int;
  var i#0: int;
  var i#2: int;

    // AddMethodImpl: Q, Impl$$_module.A.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(77,11)
    assume true;
    assert {:id "id291"} 0 <= LitInt(5);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(5);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(78,30)
    assert {:id "id293"} a#0 != null;
    assert {:id "id294"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(LitInt(0));
    assert {:id "id295"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id296"} a#0 != null;
    assert {:id "id297"} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assume true;
    $obj1 := a#0;
    $index1 := IndexField(LitInt(1));
    assert {:id "id298"} $_ModifiesFrame[$obj1, $index1];
    assert {:id "id299"} a#0 != null;
    assert {:id "id300"} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(a#0);
    assume true;
    $obj2 := a#0;
    $index2 := IndexField(LitInt(2));
    assert {:id "id301"} $_ModifiesFrame[$obj2, $index2];
    assert {:id "id302"} a#0 != null;
    assert {:id "id303"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume true;
    $obj3 := a#0;
    $index3 := IndexField(LitInt(3));
    assert {:id "id304"} $_ModifiesFrame[$obj3, $index3];
    assert {:id "id305"} a#0 != null;
    assert {:id "id306"} 0 <= LitInt(4) && LitInt(4) < _System.array.Length(a#0);
    assume true;
    $obj4 := a#0;
    $index4 := IndexField(LitInt(4));
    assert {:id "id307"} $_ModifiesFrame[$obj4, $index4];
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(1);
    assume true;
    $rhs#2 := LitInt(2);
    assume true;
    $rhs#3 := LitInt(3);
    assume true;
    $rhs#4 := LitInt(4);
    assert {:id "id313"} a#0 != a#0 || LitInt(1) != LitInt(0) || $Box($rhs#1) == $Box($rhs#0);
    assert {:id "id314"} a#0 != a#0 || LitInt(2) != LitInt(0) || $Box($rhs#2) == $Box($rhs#0);
    assert {:id "id315"} a#0 != a#0 || LitInt(2) != LitInt(1) || $Box($rhs#2) == $Box($rhs#1);
    assert {:id "id316"} a#0 != a#0 || LitInt(3) != LitInt(0) || $Box($rhs#3) == $Box($rhs#0);
    assert {:id "id317"} a#0 != a#0 || LitInt(3) != LitInt(1) || $Box($rhs#3) == $Box($rhs#1);
    assert {:id "id318"} a#0 != a#0 || LitInt(3) != LitInt(2) || $Box($rhs#3) == $Box($rhs#2);
    assert {:id "id319"} a#0 != a#0 || LitInt(4) != LitInt(0) || $Box($rhs#4) == $Box($rhs#0);
    assert {:id "id320"} a#0 != a#0 || LitInt(4) != LitInt(1) || $Box($rhs#4) == $Box($rhs#1);
    assert {:id "id321"} a#0 != a#0 || LitInt(4) != LitInt(2) || $Box($rhs#4) == $Box($rhs#2);
    assert {:id "id322"} a#0 != a#0 || LitInt(4) != LitInt(3) || $Box($rhs#4) == $Box($rhs#3);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, $index2, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj3, $index3, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj4, $index4, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(80,5)
    assert {:id "id328"} a#0 != null;
    assert {:id "id329"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= _System.array.Length(a#0);
    assume true;
    assert {:id "id330"} Seq#Equal(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2))), 
          $Box(LitInt(3))), 
        $Box(LitInt(4))), 
      Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(1)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(81,5)
    assert {:id "id331"} a#0 != null;
    assert {:id "id332"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= _System.array.Length(a#0);
    assert {:id "id333"} {:subsumption 0} a#0 != null;
    assert {:id "id334"} {:subsumption 0} LitInt(1) <= _System.array.Length(a#0)
       && _System.array.Length(a#0) <= _System.array.Length(a#0);
    assume true;
    assert {:id "id335"} Seq#Equal(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(2))), 
          $Box(LitInt(3))), 
        $Box(LitInt(4))), 
      Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), _System.array.Length(a#0)), LitInt(1)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(82,5)
    assert {:id "id336"} a#0 != null;
    assert {:id "id337"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= _System.array.Length(a#0);
    assert {:id "id338"} {:subsumption 0} LitInt(1) <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
    assume true;
    assert {:id "id339"} Seq#Equal(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), 
      Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(2)), LitInt(1)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(83,5)
    assert {:id "id340"} a#0 != null;
    assert {:id "id341"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
    assume true;
    assert {:id "id342"} Seq#Equal(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
      Seq#Take(Seq#FromArray($Heap, a#0), LitInt(2)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(84,5)
    assert {:id "id343"} a#0 != null;
    assert {:id "id344"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= _System.array.Length(a#0);
    assert {:id "id345"} {:subsumption 0} LitInt(0) <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
    assume true;
    assert {:id "id346"} Seq#Equal(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
      Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(2)), LitInt(0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(85,5)
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (LitInt(0) <= i#0)
        {
            assert {:id "id347"} {:subsumption 0} a#0 != null;
        }

        if (LitInt(0) <= i#0 && i#0 <= _System.array.Length(a#0))
        {
            assert {:id "id348"} a#0 != null;
            assert {:id "id349"} {:subsumption 0} 0 <= i#0 && i#0 <= _System.array.Length(a#0);
            assert {:id "id350"} {:subsumption 0} i#0 <= i#0 && i#0 <= _System.array.Length(a#0);
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id351"} (forall i#1: int :: 
      { Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), i#1), i#1) } 
      LitInt(0) <= i#1 && i#1 <= _System.array.Length(a#0)
         ==> Seq#Equal(Seq#Empty(): Seq, Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), i#1), i#1)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(86,5)
    assert {:id "id352"} a#0 != null;
    assume true;
    assert {:id "id353"} Seq#Equal(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
            $Box(LitInt(2))), 
          $Box(LitInt(3))), 
        $Box(LitInt(4))), 
      Seq#FromArray($Heap, a#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(87,5)
    // Begin Comprehension WF check
    havoc i#2;
    if (true)
    {
        if (LitInt(0) <= i#2)
        {
            assert {:id "id354"} {:subsumption 0} a#0 != null;
        }

        if (LitInt(0) <= i#2 && i#2 < _System.array.Length(a#0))
        {
            assert {:id "id355"} a#0 != null;
            assert {:id "id356"} {:subsumption 0} 0 <= i#2 && i#2 < _System.array.Length(a#0);
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id357"} (forall i#3: int :: 
      { $Unbox(read($Heap, a#0, IndexField(i#3))): int } 
      LitInt(0) <= i#3 && i#3 < _System.array.Length(a#0)
         ==> $Unbox(read($Heap, a#0, IndexField(i#3))): int == i#3);
}



procedure {:verboseName "A.ArrayToSequenceTests (well-formedness)"} CheckWellFormed$$_module.A.ArrayToSequenceTests(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    lo#0: int, 
    hi#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.ArrayToSequenceTests (call)"} Call$$_module.A.ArrayToSequenceTests(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    lo#0: int, 
    hi#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.ArrayToSequenceTests (correctness)"} Impl$$_module.A.ArrayToSequenceTests(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    lo#0: int, 
    hi#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.ArrayToSequenceTests (correctness)"} Impl$$_module.A.ArrayToSequenceTests(this: ref, a#0: ref, lo#0: int, hi#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0_0: Seq where $Is(s#0_0, TSeq(TInt)) && $IsAlloc(s#0_0, TSeq(TInt), $Heap);
  var s#1_1_0: Seq
     where $Is(s#1_1_0, TSeq(TInt)) && $IsAlloc(s#1_1_0, TSeq(TInt), $Heap);
  var s#1_2_0: Seq
     where $Is(s#1_2_0, TSeq(TInt)) && $IsAlloc(s#1_2_0, TSeq(TInt), $Heap);

    // AddMethodImpl: ArrayToSequenceTests, Impl$$_module.A.ArrayToSequenceTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(92,5)
    assert {:id "id358"} a#0 != null;
    assume true;
    if (_System.array.Length(a#0) == LitInt(10))
    {
        havoc s#0_0 /* where $Is(s#0_0, TSeq(TInt)) && $IsAlloc(s#0_0, TSeq(TInt), $Heap) */;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(94,9)
        assume true;
        assert {:id "id359"} a#0 != null;
        assert {:id "id360"} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
        assert {:id "id361"} LitInt(2) <= LitInt(5) && LitInt(5) <= _System.array.Length(a#0);
        assume true;
        s#0_0 := Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5)), LitInt(2));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(95,7)
        assume true;
        assert {:id "id363"} Seq#Length(s#0_0) == LitInt(3);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(96,9)
        assume true;
        assert {:id "id364"} a#0 != null;
        assert {:id "id365"} 0 <= LitInt(5) && LitInt(5) <= _System.array.Length(a#0);
        assume true;
        s#0_0 := Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(97,7)
        assume true;
        assert {:id "id367"} Seq#Length(s#0_0) == LitInt(5);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(98,9)
        assume true;
        assert {:id "id368"} a#0 != null;
        assert {:id "id369"} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
        assume true;
        s#0_0 := Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(2));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(99,7)
        assume true;
        assert {:id "id371"} Seq#Length(s#0_0) == LitInt(8);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(100,9)
        assume true;
        assert {:id "id372"} a#0 != null;
        assume true;
        s#0_0 := Seq#FromArray($Heap, a#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(101,7)
        assume true;
        assert {:id "id374"} Seq#Length(s#0_0) == LitInt(10);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(102,9)
        assume true;
        assert {:id "id375"} a#0 != null;
        assert {:id "id376"} 0 <= LitInt(10) && LitInt(10) <= _System.array.Length(a#0);
        assert {:id "id377"} a#0 != null;
        assert {:id "id378"} 0 <= LitInt(0) && LitInt(0) <= _System.array.Length(a#0);
        assume true;
        s#0_0 := Seq#Append(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(10)), 
          Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(0)));
    }
    else
    {
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(104,7)
        if (*)
        {
            if (LitInt(0) <= lo#0)
            {
                assert {:id "id389"} a#0 != null;
            }

            assume true;
            assume {:id "id390"} LitInt(0) <= lo#0 && lo#0 <= _System.array.Length(a#0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(106,17)
            assume true;
            assert {:id "id391"} a#0 != null;
            assert {:id "id392"} 0 <= lo#0 && lo#0 <= _System.array.Length(a#0);
            assert {:id "id393"} a#0 != null;
            assert {:id "id394"} 0 <= lo#0 && lo#0 <= _System.array.Length(a#0);
            assume true;
            s#1_2_0 := Seq#Append(Seq#Drop(Seq#FromArray($Heap, a#0), lo#0), 
              Seq#Take(Seq#FromArray($Heap, a#0), lo#0));
        }
        else if (*)
        {
            if (LitInt(0) <= lo#0)
            {
                assert {:id "id382"} a#0 != null;
            }

            if (LitInt(0) <= lo#0 && lo#0 <= _System.array.Length(a#0))
            {
                if (LitInt(0) <= hi#0)
                {
                    assert {:id "id383"} a#0 != null;
                }
            }

            assume true;
            assume {:id "id384"} LitInt(0) <= lo#0
               && lo#0 <= _System.array.Length(a#0)
               && 
              LitInt(0) <= hi#0
               && hi#0 <= _System.array.Length(a#0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(108,17)
            assume true;
            assert {:id "id385"} a#0 != null;
            assert {:id "id386"} 0 <= lo#0 && lo#0 <= _System.array.Length(a#0);
            assert {:id "id387"} lo#0 <= hi#0 && hi#0 <= _System.array.Length(a#0);
            assume true;
            s#1_1_0 := Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), hi#0), lo#0);
        }
        else if (*)
        {
            assume true;
            assume {:id "id381"} true;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume !
              (LitInt(0) <= lo#0
               && lo#0 <= _System.array.Length(a#0))
               && !
              (
              LitInt(0) <= lo#0
               && lo#0 <= _System.array.Length(a#0)
               && 
              LitInt(0) <= hi#0
               && hi#0 <= _System.array.Length(a#0))
               && !Lit(true);
            assert {:id "id380"} false;
        }
    }
}



// function declaration for _module.A.BadRangeReads
function _module.A.BadRangeReads(this: ref, a#0: ref, all#0: bool) : bool
uses {
// definition axiom for _module.A.BadRangeReads (revealed)
axiom {:id "id396"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref, all#0: bool :: 
    { _module.A.BadRangeReads(this, a#0, all#0), $IsGoodHeap($Heap) } 
    _module.A.BadRangeReads#canCall(this, a#0, all#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.A.BadRangeReads(this, a#0, all#0)
         == (_System.array.Length(a#0) == LitInt(10)
           && (if all#0
             then Seq#Equal(Seq#FromArray($Heap, a#0), Seq#Empty(): Seq)
             else Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5)), LitInt(2)), 
                  Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5))), 
                Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(2))), 
              Seq#Empty(): Seq))));
// definition axiom for _module.A.BadRangeReads for decreasing-related literals (revealed)
axiom {:id "id397"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref, all#0: bool :: 
    {:weight 3} { _module.A.BadRangeReads(this, Lit(a#0), Lit(all#0)), $IsGoodHeap($Heap) } 
    _module.A.BadRangeReads#canCall(this, Lit(a#0), Lit(all#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.A.BadRangeReads(this, Lit(a#0), Lit(all#0))
         == (LitInt(_System.array.Length(Lit(a#0))) == LitInt(10)
           && (if all#0
             then Seq#Equal(Seq#FromArray($Heap, Lit(a#0)), Seq#Empty(): Seq)
             else Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(Seq#Take(Seq#FromArray($Heap, Lit(a#0)), LitInt(5)), LitInt(2)), 
                  Seq#Take(Seq#FromArray($Heap, Lit(a#0)), LitInt(5))), 
                Seq#Drop(Seq#FromArray($Heap, Lit(a#0)), LitInt(2))), 
              Seq#Empty(): Seq))));
// definition axiom for _module.A.BadRangeReads for all literals (revealed)
axiom {:id "id398"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref, all#0: bool :: 
    {:weight 3} { _module.A.BadRangeReads(Lit(this), Lit(a#0), Lit(all#0)), $IsGoodHeap($Heap) } 
    _module.A.BadRangeReads#canCall(Lit(this), Lit(a#0), Lit(all#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.A.BadRangeReads(Lit(this), Lit(a#0), Lit(all#0))
         == (LitInt(_System.array.Length(Lit(a#0))) == LitInt(10)
           && (if all#0
             then Seq#Equal(Seq#FromArray($Heap, Lit(a#0)), Seq#Empty(): Seq)
             else Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(Seq#Take(Seq#FromArray($Heap, Lit(a#0)), LitInt(5)), LitInt(2)), 
                  Seq#Take(Seq#FromArray($Heap, Lit(a#0)), LitInt(5))), 
                Seq#Drop(Seq#FromArray($Heap, Lit(a#0)), LitInt(2))), 
              Seq#Empty(): Seq))));
}

function _module.A.BadRangeReads#canCall(this: ref, a#0: ref, all#0: bool) : bool;

function _module.A.BadRangeReads#requires(ref, ref, bool) : bool;

// #requires axiom for _module.A.BadRangeReads
axiom (forall $Heap: Heap, this: ref, a#0: ref, all#0: bool :: 
  { _module.A.BadRangeReads#requires(this, a#0, all#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.A())
       && $IsAlloc(this, Tclass._module.A(), $Heap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.A.BadRangeReads#requires(this, a#0, all#0) == true);

procedure {:verboseName "A.BadRangeReads (well-formedness)"} CheckWellformed$$_module.A.BadRangeReads(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref where $Is(a#0, Tclass._System.array(TInt)), 
    all#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.BadRangeReads (well-formedness)"} CheckWellformed$$_module.A.BadRangeReads(this: ref, a#0: ref, all#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

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
        assert {:id "id399"} a#0 != null;
        if (_System.array.Length(a#0) == LitInt(10))
        {
            if (all#0)
            {
                assert {:id "id400"} a#0 != null;
                b$reqreads#0 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  0 <= $i && $i < _System.array.Length(a#0) ==> $_ReadsFrame[a#0, IndexField($i)]);
            }
            else
            {
                assert {:id "id401"} a#0 != null;
                assert {:id "id402"} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
                assert {:id "id403"} LitInt(2) <= LitInt(5) && LitInt(5) <= _System.array.Length(a#0);
                b$reqreads#1 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  LitInt(2) <= $i && $i < LitInt(5) ==> $_ReadsFrame[a#0, IndexField($i)]);
                assert {:id "id404"} a#0 != null;
                assert {:id "id405"} 0 <= LitInt(5) && LitInt(5) <= _System.array.Length(a#0);
                b$reqreads#2 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  0 <= $i && $i < LitInt(5) ==> $_ReadsFrame[a#0, IndexField($i)]);
                assert {:id "id406"} a#0 != null;
                assert {:id "id407"} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
                b$reqreads#3 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  LitInt(2) <= $i && $i < _System.array.Length(a#0)
                     ==> $_ReadsFrame[a#0, IndexField($i)]);
            }
        }

        assume {:id "id408"} _module.A.BadRangeReads(this, a#0, all#0)
           == (_System.array.Length(a#0) == LitInt(10)
             && (if all#0
               then Seq#Equal(Seq#FromArray($Heap, a#0), Seq#Empty(): Seq)
               else Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5)), LitInt(2)), 
                    Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5))), 
                  Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(2))), 
                Seq#Empty(): Seq)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.A.BadRangeReads(this, a#0, all#0), TBool);
        assert {:id "id409"} b$reqreads#0;
        assert {:id "id410"} b$reqreads#1;
        assert {:id "id411"} b$reqreads#2;
        assert {:id "id412"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module.A.GoodRangeReads
function _module.A.GoodRangeReads($heap: Heap, this: ref, a#0: ref, all#0: bool) : bool
uses {
// definition axiom for _module.A.GoodRangeReads (revealed)
axiom {:id "id413"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref, all#0: bool :: 
    { _module.A.GoodRangeReads($Heap, this, a#0, all#0), $IsGoodHeap($Heap) } 
    _module.A.GoodRangeReads#canCall($Heap, this, a#0, all#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.A.GoodRangeReads($Heap, this, a#0, all#0)
         == (_System.array.Length(a#0) == LitInt(10)
           && (if all#0
             then Seq#Equal(Seq#FromArray($Heap, a#0), Seq#Empty(): Seq)
             else Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5)), LitInt(2)), 
                  Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5))), 
                Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(2))), 
              Seq#Empty(): Seq))));
}

function _module.A.GoodRangeReads#canCall($heap: Heap, this: ref, a#0: ref, all#0: bool) : bool;

// frame axiom for _module.A.GoodRangeReads
axiom (forall $h0: Heap, $h1: Heap, this: ref, a#0: ref, all#0: bool :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.A.GoodRangeReads($h1, this, a#0, all#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.A())
       && (_module.A.GoodRangeReads#canCall($h0, this, a#0, all#0)
         || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == a#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.A.GoodRangeReads($h0, this, a#0, all#0)
       == _module.A.GoodRangeReads($h1, this, a#0, all#0));

function _module.A.GoodRangeReads#requires(Heap, ref, ref, bool) : bool;

// #requires axiom for _module.A.GoodRangeReads
axiom (forall $Heap: Heap, this: ref, a#0: ref, all#0: bool :: 
  { _module.A.GoodRangeReads#requires($Heap, this, a#0, all#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.A())
       && $IsAlloc(this, Tclass._module.A(), $Heap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.A.GoodRangeReads#requires($Heap, this, a#0, all#0) == true);

procedure {:verboseName "A.GoodRangeReads (well-formedness)"} CheckWellformed$$_module.A.GoodRangeReads(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref where $Is(a#0, Tclass._System.array(TInt)), 
    all#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.GoodRangeReads (well-formedness)"} CheckWellformed$$_module.A.GoodRangeReads(this: ref, a#0: ref, all#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
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
        assert {:id "id414"} a#0 != null;
        if (_System.array.Length(a#0) == LitInt(10))
        {
            if (all#0)
            {
                assert {:id "id415"} a#0 != null;
                b$reqreads#0 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  0 <= $i && $i < _System.array.Length(a#0) ==> $_ReadsFrame[a#0, IndexField($i)]);
            }
            else
            {
                assert {:id "id416"} a#0 != null;
                assert {:id "id417"} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
                assert {:id "id418"} LitInt(2) <= LitInt(5) && LitInt(5) <= _System.array.Length(a#0);
                b$reqreads#1 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  LitInt(2) <= $i && $i < LitInt(5) ==> $_ReadsFrame[a#0, IndexField($i)]);
                assert {:id "id419"} a#0 != null;
                assert {:id "id420"} 0 <= LitInt(5) && LitInt(5) <= _System.array.Length(a#0);
                b$reqreads#2 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  0 <= $i && $i < LitInt(5) ==> $_ReadsFrame[a#0, IndexField($i)]);
                assert {:id "id421"} a#0 != null;
                assert {:id "id422"} 0 <= LitInt(2) && LitInt(2) <= _System.array.Length(a#0);
                b$reqreads#3 := (forall $i: int :: 
                  { $_ReadsFrame[a#0, IndexField($i)] } 
                  LitInt(2) <= $i && $i < _System.array.Length(a#0)
                     ==> $_ReadsFrame[a#0, IndexField($i)]);
            }
        }

        assume {:id "id423"} _module.A.GoodRangeReads($Heap, this, a#0, all#0)
           == (_System.array.Length(a#0) == LitInt(10)
             && (if all#0
               then Seq#Equal(Seq#FromArray($Heap, a#0), Seq#Empty(): Seq)
               else Seq#Equal(Seq#Append(Seq#Append(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5)), LitInt(2)), 
                    Seq#Take(Seq#FromArray($Heap, a#0), LitInt(5))), 
                  Seq#Drop(Seq#FromArray($Heap, a#0), LitInt(2))), 
                Seq#Empty(): Seq)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.A.GoodRangeReads($Heap, this, a#0, all#0), TBool);
        assert {:id "id424"} b$reqreads#0;
        assert {:id "id425"} b$reqreads#1;
        assert {:id "id426"} b$reqreads#2;
        assert {:id "id427"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module.A.AnotherGoodRangeReads
function _module.A.AnotherGoodRangeReads(this: ref, a#0: ref, j#0: int) : bool
uses {
// definition axiom for _module.A.AnotherGoodRangeReads (revealed)
axiom {:id "id428"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref, j#0: int :: 
    { _module.A.AnotherGoodRangeReads(this, a#0, j#0), $IsGoodHeap($Heap) } 
    _module.A.AnotherGoodRangeReads#canCall(this, a#0, j#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.A.AnotherGoodRangeReads(this, a#0, j#0)
         == (
          LitInt(0) <= j#0
           && j#0 <= _System.array.Length(a#0)
           && Seq#Equal(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), j#0), j#0), Seq#Empty(): Seq)));
// definition axiom for _module.A.AnotherGoodRangeReads for decreasing-related literals (revealed)
axiom {:id "id429"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref, j#0: int :: 
    {:weight 3} { _module.A.AnotherGoodRangeReads(this, Lit(a#0), LitInt(j#0)), $IsGoodHeap($Heap) } 
    _module.A.AnotherGoodRangeReads#canCall(this, Lit(a#0), LitInt(j#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.A.AnotherGoodRangeReads(this, Lit(a#0), LitInt(j#0))
         == (
          LitInt(0) <= LitInt(j#0)
           && LitInt(j#0) <= LitInt(_System.array.Length(Lit(a#0)))
           && Seq#Equal(Seq#Drop(Seq#Take(Seq#FromArray($Heap, Lit(a#0)), LitInt(j#0)), LitInt(j#0)), 
            Seq#Empty(): Seq)));
// definition axiom for _module.A.AnotherGoodRangeReads for all literals (revealed)
axiom {:id "id430"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref, j#0: int :: 
    {:weight 3} { _module.A.AnotherGoodRangeReads(Lit(this), Lit(a#0), LitInt(j#0)), $IsGoodHeap($Heap) } 
    _module.A.AnotherGoodRangeReads#canCall(Lit(this), Lit(a#0), LitInt(j#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.A())
           && $IsAlloc(this, Tclass._module.A(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.A.AnotherGoodRangeReads(Lit(this), Lit(a#0), LitInt(j#0))
         == (
          LitInt(0) <= LitInt(j#0)
           && LitInt(j#0) <= LitInt(_System.array.Length(Lit(a#0)))
           && Seq#Equal(Seq#Drop(Seq#Take(Seq#FromArray($Heap, Lit(a#0)), LitInt(j#0)), LitInt(j#0)), 
            Seq#Empty(): Seq)));
}

function _module.A.AnotherGoodRangeReads#canCall(this: ref, a#0: ref, j#0: int) : bool;

function _module.A.AnotherGoodRangeReads#requires(ref, ref, int) : bool;

// #requires axiom for _module.A.AnotherGoodRangeReads
axiom (forall $Heap: Heap, this: ref, a#0: ref, j#0: int :: 
  { _module.A.AnotherGoodRangeReads#requires(this, a#0, j#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.A())
       && $IsAlloc(this, Tclass._module.A(), $Heap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.A.AnotherGoodRangeReads#requires(this, a#0, j#0) == true);

procedure {:verboseName "A.AnotherGoodRangeReads (well-formedness)"} CheckWellformed$$_module.A.AnotherGoodRangeReads(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref where $Is(a#0, Tclass._System.array(TInt)), 
    j#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.AnotherGoodRangeReads (well-formedness)"} CheckWellformed$$_module.A.AnotherGoodRangeReads(this: ref, a#0: ref, j#0: int)
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
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (LitInt(0) <= j#0)
        {
            assert {:id "id431"} a#0 != null;
        }

        if (LitInt(0) <= j#0 && j#0 <= _System.array.Length(a#0))
        {
            assert {:id "id432"} a#0 != null;
            assert {:id "id433"} 0 <= j#0 && j#0 <= _System.array.Length(a#0);
            assert {:id "id434"} j#0 <= j#0 && j#0 <= _System.array.Length(a#0);
            b$reqreads#0 := (forall $i: int :: 
              { $_ReadsFrame[a#0, IndexField($i)] } 
              j#0 <= $i && $i < j#0 ==> $_ReadsFrame[a#0, IndexField($i)]);
        }

        assume {:id "id435"} _module.A.AnotherGoodRangeReads(this, a#0, j#0)
           == (
            LitInt(0) <= j#0
             && j#0 <= _System.array.Length(a#0)
             && Seq#Equal(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), j#0), j#0), Seq#Empty(): Seq));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.A.AnotherGoodRangeReads(this, a#0, j#0), TBool);
        assert {:id "id436"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module.A.Q0
function _module.A.Q0(this: ref, s#0: Seq) : bool;

function _module.A.Q0#canCall(this: ref, s#0: Seq) : bool;

function _module.A.Q0#requires(ref, Seq) : bool;

// #requires axiom for _module.A.Q0
axiom (forall this: ref, s#0: Seq :: 
  { _module.A.Q0#requires(this, s#0) } 
  this != null && $Is(this, Tclass._module.A()) && $Is(s#0, TSeq(TInt))
     ==> _module.A.Q0#requires(this, s#0) == true);

procedure {:verboseName "A.Q0 (well-formedness)"} CheckWellformed$$_module.A.Q0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.A.Q1
function _module.A.Q1(this: ref, s#0: Seq) : bool;

function _module.A.Q1#canCall(this: ref, s#0: Seq) : bool;

function _module.A.Q1#requires(ref, Seq) : bool;

// #requires axiom for _module.A.Q1
axiom (forall this: ref, s#0: Seq :: 
  { _module.A.Q1#requires(this, s#0) } 
  this != null && $Is(this, Tclass._module.A()) && $Is(s#0, TSeq(TInt))
     ==> _module.A.Q1#requires(this, s#0) == true);

procedure {:verboseName "A.Q1 (well-formedness)"} CheckWellformed$$_module.A.Q1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    s#0: Seq where $Is(s#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.FrameTest (well-formedness)"} CheckWellFormed$$_module.A.FrameTest(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.FrameTest (well-formedness)"} CheckWellFormed$$_module.A.FrameTest(this: ref, a#0: ref) returns (b#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: Seq;


    // AddMethodImpl: FrameTest, CheckWellFormed$$_module.A.FrameTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.A?(), $Heap);
    assert {:id "id437"} a#0 != null;
    ##s#0 := Seq#FromArray($Heap, a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TSeq(TInt), $Heap);
    assume _module.A.Q0#canCall(this, Seq#FromArray($Heap, a#0));
    assume {:id "id438"} _module.A.Q0(this, Seq#FromArray($Heap, a#0));
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc b#0;
}



procedure {:verboseName "A.FrameTest (call)"} Call$$_module.A.FrameTest(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id439"} _module.A.Q0(this, Seq#FromArray($Heap, a#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A.FrameTest (correctness)"} Impl$$_module.A.FrameTest(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id440"} _module.A.Q0(this, Seq#FromArray($Heap, a#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.FrameTest (correctness)"} Impl$$_module.A.FrameTest(this: ref, a#0: ref) returns (b#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: ref;
  var a##0: ref;
  var ##s#1: Seq;
  var ##s#2: Seq;

    // AddMethodImpl: FrameTest, Impl$$_module.A.FrameTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(144,21)
    assume true;
    // TrCallStmt: Adding lhs with type array<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id441"} $rhs##0 := Call$$_module.A.CreateArray(this, a##0);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(145,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.A?(), $Heap);
    assert {:id "id443"} a#0 != null;
    ##s#1 := Seq#FromArray($Heap, a#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, TSeq(TInt), $Heap);
    assume _module.A.Q0#canCall(this, Seq#FromArray($Heap, a#0));
    assume _module.A.Q0#canCall(this, Seq#FromArray($Heap, a#0));
    assert {:id "id444"} _module.A.Q0(this, Seq#FromArray($Heap, a#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(146,5)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.A?(), $Heap);
    assert {:id "id445"} b#0 != null;
    ##s#2 := Seq#FromArray($Heap, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, TSeq(TInt), $Heap);
    assume _module.A.Q1#canCall(this, Seq#FromArray($Heap, b#0));
    assume _module.A.Q1#canCall(this, Seq#FromArray($Heap, b#0));
    assert {:id "id446"} _module.A.Q1(this, Seq#FromArray($Heap, b#0));
}



procedure {:verboseName "A.CreateArray (well-formedness)"} CheckWellFormed$$_module.A.CreateArray(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A.CreateArray (well-formedness)"} CheckWellFormed$$_module.A.CreateArray(this: ref, a#0: ref) returns (b#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: Seq;


    // AddMethodImpl: CreateArray, CheckWellFormed$$_module.A.CreateArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc b#0;
    assume {:id "id447"} b#0 != null && !$Unbox(read(old($Heap), b#0, alloc)): bool;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.A?(), $Heap);
    assert {:id "id448"} b#0 != null;
    ##s#0 := Seq#FromArray($Heap, b#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, TSeq(TInt), $Heap);
    assume _module.A.Q1#canCall(this, Seq#FromArray($Heap, b#0));
    assume {:id "id449"} _module.A.Q1(this, Seq#FromArray($Heap, b#0));
}



procedure {:verboseName "A.CreateArray (call)"} Call$$_module.A.CreateArray(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.A())
         && $IsAlloc(this, Tclass._module.A(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures b#0 != null && !$Unbox(read(old($Heap), b#0, alloc)): bool
     ==> _module.A.Q1#canCall(this, Seq#FromArray($Heap, b#0));
  ensures {:id "id450"} b#0 != null && !$Unbox(read(old($Heap), b#0, alloc)): bool;
  ensures {:id "id451"} _module.A.Q1(this, Seq#FromArray($Heap, b#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.A
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.A()) } { $Is(c#0, Tclass._module.A?()) } 
  $Is(c#0, Tclass._module.A()) <==> $Is(c#0, Tclass._module.A?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.A
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.A(), $h) } 
    { $IsAlloc(c#0, Tclass._module.A?(), $h) } 
  $IsAlloc(c#0, Tclass._module.A(), $h)
     <==> $IsAlloc(c#0, Tclass._module.A?(), $h));

const unique class._module.B?: ClassName;

// $Is axiom for class B
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.B?()) } 
  $Is($o, Tclass._module.B?()) <==> $o == null || dtype($o) == Tclass._module.B?());

// $IsAlloc axiom for class B
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.B?(), $h) } 
  $IsAlloc($o, Tclass._module.B?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.B() : Ty
uses {
// Tclass._module.B Tag
axiom Tag(Tclass._module.B()) == Tagclass._module.B
   && TagFamily(Tclass._module.B()) == tytagFamily$B;
}

const unique Tagclass._module.B: TyTag;

// Box/unbox axiom for Tclass._module.B
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.B()) } 
  $IsBox(bx, Tclass._module.B())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.B()));

// $Is axiom for non-null type _module.B
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.B()) } { $Is(c#0, Tclass._module.B?()) } 
  $Is(c#0, Tclass._module.B()) <==> $Is(c#0, Tclass._module.B?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.B
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.B(), $h) } 
    { $IsAlloc(c#0, Tclass._module.B?(), $h) } 
  $IsAlloc(c#0, Tclass._module.B(), $h)
     <==> $IsAlloc(c#0, Tclass._module.B?(), $h));

const unique class._module.ArrayTests?: ClassName;

function Tclass._module.ArrayTests?() : Ty
uses {
// Tclass._module.ArrayTests? Tag
axiom Tag(Tclass._module.ArrayTests?()) == Tagclass._module.ArrayTests?
   && TagFamily(Tclass._module.ArrayTests?()) == tytagFamily$ArrayTests;
}

const unique Tagclass._module.ArrayTests?: TyTag;

// Box/unbox axiom for Tclass._module.ArrayTests?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ArrayTests?()) } 
  $IsBox(bx, Tclass._module.ArrayTests?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.ArrayTests?()));

// $Is axiom for class ArrayTests
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.ArrayTests?()) } 
  $Is($o, Tclass._module.ArrayTests?())
     <==> $o == null || dtype($o) == Tclass._module.ArrayTests?());

// $IsAlloc axiom for class ArrayTests
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.ArrayTests?(), $h) } 
  $IsAlloc($o, Tclass._module.ArrayTests?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.ArrayTests.F0
function _module.ArrayTests.F0(this: ref, a#0: ref) : bool
uses {
// definition axiom for _module.ArrayTests.F0 (revealed)
axiom {:id "id452"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref :: 
    { _module.ArrayTests.F0(this, a#0), $IsGoodHeap($Heap) } 
    _module.ArrayTests.F0#canCall(this, a#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArrayTests())
           && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.ArrayTests.F0(this, a#0)
         == (LitInt(10) <= _System.array.Length(a#0)
           && $Unbox(read($Heap, a#0, IndexField(LitInt(7)))): int == LitInt(13)));
// definition axiom for _module.ArrayTests.F0 for decreasing-related literals (revealed)
axiom {:id "id453"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref :: 
    {:weight 3} { _module.ArrayTests.F0(this, Lit(a#0)), $IsGoodHeap($Heap) } 
    _module.ArrayTests.F0#canCall(this, Lit(a#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArrayTests())
           && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.ArrayTests.F0(this, Lit(a#0))
         == (LitInt(10) <= LitInt(_System.array.Length(Lit(a#0)))
           && $Unbox(read($Heap, Lit(a#0), IndexField(LitInt(7)))): int == LitInt(13)));
// definition axiom for _module.ArrayTests.F0 for all literals (revealed)
axiom {:id "id454"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref :: 
    {:weight 3} { _module.ArrayTests.F0(Lit(this), Lit(a#0)), $IsGoodHeap($Heap) } 
    _module.ArrayTests.F0#canCall(Lit(this), Lit(a#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArrayTests())
           && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.ArrayTests.F0(Lit(this), Lit(a#0))
         == (LitInt(10) <= LitInt(_System.array.Length(Lit(a#0)))
           && $Unbox(read($Heap, Lit(a#0), IndexField(LitInt(7)))): int == LitInt(13)));
}

function _module.ArrayTests.F0#canCall(this: ref, a#0: ref) : bool;

function Tclass._module.ArrayTests() : Ty
uses {
// Tclass._module.ArrayTests Tag
axiom Tag(Tclass._module.ArrayTests()) == Tagclass._module.ArrayTests
   && TagFamily(Tclass._module.ArrayTests()) == tytagFamily$ArrayTests;
}

const unique Tagclass._module.ArrayTests: TyTag;

// Box/unbox axiom for Tclass._module.ArrayTests
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ArrayTests()) } 
  $IsBox(bx, Tclass._module.ArrayTests())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.ArrayTests()));

function _module.ArrayTests.F0#requires(ref, ref) : bool;

// #requires axiom for _module.ArrayTests.F0
axiom (forall $Heap: Heap, this: ref, a#0: ref :: 
  { _module.ArrayTests.F0#requires(this, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArrayTests())
       && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.ArrayTests.F0#requires(this, a#0) == true);

procedure {:verboseName "ArrayTests.F0 (well-formedness)"} CheckWellformed$$_module.ArrayTests.F0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref where $Is(a#0, Tclass._System.array(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.F0 (well-formedness)"} CheckWellformed$$_module.ArrayTests.F0(this: ref, a#0: ref)
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
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id455"} a#0 != null;
        if (LitInt(10) <= _System.array.Length(a#0))
        {
            assert {:id "id456"} a#0 != null;
            assert {:id "id457"} 0 <= LitInt(7) && LitInt(7) < _System.array.Length(a#0);
            b$reqreads#0 := $_ReadsFrame[a#0, IndexField(LitInt(7))];
        }

        assume {:id "id458"} _module.ArrayTests.F0(this, a#0)
           == (LitInt(10) <= _System.array.Length(a#0)
             && $Unbox(read($Heap, a#0, IndexField(LitInt(7)))): int == LitInt(13));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ArrayTests.F0(this, a#0), TBool);
        assert {:id "id459"} b$reqreads#0;
        return;

        assume false;
    }
}



const _module.ArrayTests.b: Field
uses {
axiom FDim(_module.ArrayTests.b) == 0
   && FieldOfDecl(class._module.ArrayTests?, field$b) == _module.ArrayTests.b
   && !$IsGhostField(_module.ArrayTests.b);
}

// ArrayTests.b: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArrayTests.b)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.ArrayTests?()
     ==> $Is($Unbox(read($h, $o, _module.ArrayTests.b)): ref, Tclass._System.array(TInt)));

// ArrayTests.b: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.ArrayTests.b)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.ArrayTests?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.ArrayTests.b)): ref, Tclass._System.array(TInt), $h));

// function declaration for _module.ArrayTests.F1
function _module.ArrayTests.F1($heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.ArrayTests.F1 (revealed)
axiom {:id "id460"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.ArrayTests.F1($Heap, this), $IsGoodHeap($Heap) } 
    _module.ArrayTests.F1#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArrayTests())
           && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
       ==> _module.ArrayTests.F1($Heap, this)
         == (LitInt(10)
             <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
           && $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, 
                IndexField(LitInt(7)))): int
             == LitInt(13)));
}

function _module.ArrayTests.F1#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.ArrayTests.F1
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ArrayTests.F1($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.ArrayTests())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ArrayTests.F1($h0, this) == _module.ArrayTests.F1($h1, this));

function _module.ArrayTests.F1#requires(Heap, ref) : bool;

// #requires axiom for _module.ArrayTests.F1
axiom (forall $Heap: Heap, this: ref :: 
  { _module.ArrayTests.F1#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArrayTests())
       && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
     ==> _module.ArrayTests.F1#requires($Heap, this) == true);

procedure {:verboseName "ArrayTests.F1 (well-formedness)"} CheckWellformed$$_module.ArrayTests.F1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.F1 (well-formedness)"} CheckWellformed$$_module.ArrayTests.F1(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

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
        b$reqreads#0 := $_ReadsFrame[this, _module.ArrayTests.b];
        assert {:id "id461"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
        if (LitInt(10)
           <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref))
        {
            b$reqreads#1 := $_ReadsFrame[this, _module.ArrayTests.b];
            assert {:id "id462"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
            assert {:id "id463"} 0 <= LitInt(7)
               && LitInt(7)
                 < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
            b$reqreads#2 := $_ReadsFrame[$Unbox(read($Heap, this, _module.ArrayTests.b)): ref, IndexField(LitInt(7))];
        }

        assume {:id "id464"} _module.ArrayTests.F1($Heap, this)
           == (LitInt(10)
               <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
             && $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, 
                  IndexField(LitInt(7)))): int
               == LitInt(13));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ArrayTests.F1($Heap, this), TBool);
        assert {:id "id465"} b$reqreads#0;
        assert {:id "id466"} b$reqreads#1;
        assert {:id "id467"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module.ArrayTests.F2
function _module.ArrayTests.F2($heap: Heap, this: ref, a#0: ref) : bool
uses {
// definition axiom for _module.ArrayTests.F2 (revealed)
axiom {:id "id468"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref, a#0: ref :: 
    { _module.ArrayTests.F2($Heap, this, a#0), $IsGoodHeap($Heap) } 
    _module.ArrayTests.F2#canCall($Heap, this, a#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.ArrayTests())
           && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.ArrayTests.F2($Heap, this, a#0)
         == (
          LitInt(10) <= _System.array.Length(a#0)
           && $Unbox(read($Heap, a#0, IndexField(LitInt(7)))): int == LitInt(13)
           && LitInt(10)
             <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
           && $Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, 
                IndexField(LitInt(7)))): int
             == LitInt(13)));
}

function _module.ArrayTests.F2#canCall($heap: Heap, this: ref, a#0: ref) : bool;

// frame axiom for _module.ArrayTests.F2
axiom (forall $h0: Heap, $h1: Heap, this: ref, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.ArrayTests.F2($h1, this, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.ArrayTests())
       && (_module.ArrayTests.F2#canCall($h0, this, a#0)
         || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || $o == $Unbox(read($h0, this, _module.ArrayTests.b)): ref
             || $o == a#0)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.ArrayTests.F2($h0, this, a#0) == _module.ArrayTests.F2($h1, this, a#0));

function _module.ArrayTests.F2#requires(Heap, ref, ref) : bool;

// #requires axiom for _module.ArrayTests.F2
axiom (forall $Heap: Heap, this: ref, a#0: ref :: 
  { _module.ArrayTests.F2#requires($Heap, this, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.ArrayTests())
       && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.ArrayTests.F2#requires($Heap, this, a#0) == true);

procedure {:verboseName "ArrayTests.F2 (well-formedness)"} CheckWellformed$$_module.ArrayTests.F2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref where $Is(a#0, Tclass._System.array(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.F2 (well-formedness)"} CheckWellformed$$_module.ArrayTests.F2(this: ref, a#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref
           || $o == a#0);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.ArrayTests.b];
    assert {:id "id469"} b$reqreads#0;
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
        assert {:id "id470"} a#0 != null;
        if (LitInt(10) <= _System.array.Length(a#0))
        {
            assert {:id "id471"} a#0 != null;
            assert {:id "id472"} 0 <= LitInt(7) && LitInt(7) < _System.array.Length(a#0);
            b$reqreads#1 := $_ReadsFrame[a#0, IndexField(LitInt(7))];
        }

        if (LitInt(10) <= _System.array.Length(a#0)
           && $Unbox(read($Heap, a#0, IndexField(LitInt(7)))): int == LitInt(13))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.ArrayTests.b];
            assert {:id "id473"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
        }

        if (LitInt(10) <= _System.array.Length(a#0)
           && $Unbox(read($Heap, a#0, IndexField(LitInt(7)))): int == LitInt(13)
           && LitInt(10)
             <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref))
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.ArrayTests.b];
            assert {:id "id474"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
            assert {:id "id475"} 0 <= LitInt(7)
               && LitInt(7)
                 < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
            b$reqreads#4 := $_ReadsFrame[$Unbox(read($Heap, this, _module.ArrayTests.b)): ref, IndexField(LitInt(7))];
        }

        assume {:id "id476"} _module.ArrayTests.F2($Heap, this, a#0)
           == (
            LitInt(10) <= _System.array.Length(a#0)
             && $Unbox(read($Heap, a#0, IndexField(LitInt(7)))): int == LitInt(13)
             && LitInt(10)
               <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref)
             && $Unbox(read($Heap, 
                  $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, 
                  IndexField(LitInt(7)))): int
               == LitInt(13));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.ArrayTests.F2($Heap, this, a#0), TBool);
        assert {:id "id477"} b$reqreads#1;
        assert {:id "id478"} b$reqreads#2;
        assert {:id "id479"} b$reqreads#3;
        assert {:id "id480"} b$reqreads#4;
        return;

        assume false;
    }
}



procedure {:verboseName "ArrayTests.M0 (well-formedness)"} CheckWellFormed$$_module.ArrayTests.M0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.M0 (well-formedness)"} CheckWellFormed$$_module.ArrayTests.M0(this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M0, CheckWellFormed$$_module.ArrayTests.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id481"} a#0 != null;
    assume {:id "id482"} LitInt(10) <= _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "ArrayTests.M0 (call)"} Call$$_module.ArrayTests.M0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id483"} LitInt(10) <= _System.array.Length(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.M0 (correctness)"} Impl$$_module.ArrayTests.M0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id484"} LitInt(10) <= _System.array.Length(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.M0 (correctness)"} Impl$$_module.ArrayTests.M0(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: M0, Impl$$_module.ArrayTests.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(184,10)
    assert {:id "id485"} a#0 != null;
    assert {:id "id486"} 0 <= LitInt(7) && LitInt(7) < _System.array.Length(a#0);
    assume true;
    assert {:id "id487"} $_ModifiesFrame[a#0, IndexField(LitInt(7))];
    assume true;
    $rhs#0 := LitInt(13);
    $Heap := update($Heap, a#0, IndexField(LitInt(7)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "ArrayTests.M1 (well-formedness)"} CheckWellFormed$$_module.ArrayTests.M1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.M1 (well-formedness)"} CheckWellFormed$$_module.ArrayTests.M1(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M1, CheckWellFormed$$_module.ArrayTests.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assert {:id "id490"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
    assume {:id "id491"} LitInt(10)
       <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "ArrayTests.M1 (call)"} Call$$_module.ArrayTests.M1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  // user-defined preconditions
  requires {:id "id492"} LitInt(10)
     <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.M1 (correctness)"} Impl$$_module.ArrayTests.M1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id493"} LitInt(10)
     <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.M1 (correctness)"} Impl$$_module.ArrayTests.M1(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: M1, Impl$$_module.ArrayTests.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(191,10)
    assert {:id "id494"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
    assert {:id "id495"} 0 <= LitInt(7)
       && LitInt(7)
         < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    assume true;
    assert {:id "id496"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.b)): ref, IndexField(LitInt(7))];
    assume true;
    $rhs#0 := LitInt(13);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, 
      IndexField(LitInt(7)), 
      $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "ArrayTests.M2 (well-formedness)"} CheckWellFormed$$_module.ArrayTests.M2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ArrayTests.M2 (call)"} Call$$_module.ArrayTests.M2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.M2 (correctness)"} Impl$$_module.ArrayTests.M2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.M2 (correctness)"} Impl$$_module.ArrayTests.M2(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var bb#0: ref
     where $Is(bb#0, Tclass._System.array(TInt))
       && $IsAlloc(bb#0, Tclass._System.array(TInt), $Heap);
  var $nw: ref;
  var $rhs#0: ref;

    // AddMethodImpl: M2, Impl$$_module.ArrayTests.M2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(197,12)
    assume true;
    assert {:id "id499"} 0 <= LitInt(75);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(75);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    bb#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(198,7)
    assume true;
    assert {:id "id501"} $_ModifiesFrame[this, _module.ArrayTests.b];
    assume true;
    $rhs#0 := bb#0;
    $Heap := update($Heap, this, _module.ArrayTests.b, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "ArrayTests.M3 (well-formedness)"} CheckWellFormed$$_module.ArrayTests.M3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.M3 (well-formedness)"} CheckWellFormed$$_module.ArrayTests.M3(this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M3, CheckWellFormed$$_module.ArrayTests.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref
           || $o == a#0);
    assert {:id "id504"} a#0 != null;
    assume {:id "id505"} LitInt(10) <= _System.array.Length(a#0);
    assert {:id "id506"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
    assume {:id "id507"} LitInt(10)
       <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == this
           || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref
           || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "ArrayTests.M3 (call)"} Call$$_module.ArrayTests.M3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id508"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id509"} LitInt(10)
     <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref
         || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ArrayTests.M3 (correctness)"} Impl$$_module.ArrayTests.M3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.ArrayTests())
         && $IsAlloc(this, Tclass._module.ArrayTests(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id510"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id511"} LitInt(10)
     <= _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || $o == $Unbox(read(old($Heap), this, _module.ArrayTests.b)): ref
         || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ArrayTests.M3 (correctness)"} Impl$$_module.ArrayTests.M3(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: M3, Impl$$_module.ArrayTests.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || $o == $Unbox(read($Heap, this, _module.ArrayTests.b)): ref
           || $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(206,10)
    assert {:id "id512"} a#0 != null;
    assert {:id "id513"} 0 <= LitInt(7) && LitInt(7) < _System.array.Length(a#0);
    assume true;
    assert {:id "id514"} $_ModifiesFrame[a#0, IndexField(LitInt(7))];
    assume true;
    $rhs#0 := LitInt(13);
    $Heap := update($Heap, a#0, IndexField(LitInt(7)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(207,10)
    assert {:id "id517"} $Unbox(read($Heap, this, _module.ArrayTests.b)): ref != null;
    assert {:id "id518"} 0 <= LitInt(7)
       && LitInt(7)
         < _System.array.Length($Unbox(read($Heap, this, _module.ArrayTests.b)): ref);
    assume true;
    assert {:id "id519"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.ArrayTests.b)): ref, IndexField(LitInt(7))];
    assume true;
    $rhs#1 := LitInt(13);
    $Heap := update($Heap, 
      $Unbox(read($Heap, this, _module.ArrayTests.b)): ref, 
      IndexField(LitInt(7)), 
      $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.ArrayTests
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.ArrayTests()) } 
    { $Is(c#0, Tclass._module.ArrayTests?()) } 
  $Is(c#0, Tclass._module.ArrayTests())
     <==> $Is(c#0, Tclass._module.ArrayTests?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.ArrayTests
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.ArrayTests(), $h) } 
    { $IsAlloc(c#0, Tclass._module.ArrayTests?(), $h) } 
  $IsAlloc(c#0, Tclass._module.ArrayTests(), $h)
     <==> $IsAlloc(c#0, Tclass._module.ArrayTests?(), $h));

const unique class._module.Cdefg?: ClassName;

function Tclass._module.Cdefg?(Ty) : Ty;

const unique Tagclass._module.Cdefg?: TyTag;

// Tclass._module.Cdefg? Tag
axiom (forall _module.Cdefg$T: Ty :: 
  { Tclass._module.Cdefg?(_module.Cdefg$T) } 
  Tag(Tclass._module.Cdefg?(_module.Cdefg$T)) == Tagclass._module.Cdefg?
     && TagFamily(Tclass._module.Cdefg?(_module.Cdefg$T)) == tytagFamily$Cdefg);

function Tclass._module.Cdefg?_0(Ty) : Ty;

// Tclass._module.Cdefg? injectivity 0
axiom (forall _module.Cdefg$T: Ty :: 
  { Tclass._module.Cdefg?(_module.Cdefg$T) } 
  Tclass._module.Cdefg?_0(Tclass._module.Cdefg?(_module.Cdefg$T))
     == _module.Cdefg$T);

// Box/unbox axiom for Tclass._module.Cdefg?
axiom (forall _module.Cdefg$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Cdefg?(_module.Cdefg$T)) } 
  $IsBox(bx, Tclass._module.Cdefg?(_module.Cdefg$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Cdefg?(_module.Cdefg$T)));

// $Is axiom for class Cdefg
axiom (forall _module.Cdefg$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Cdefg?(_module.Cdefg$T)) } 
  $Is($o, Tclass._module.Cdefg?(_module.Cdefg$T))
     <==> $o == null || dtype($o) == Tclass._module.Cdefg?(_module.Cdefg$T));

// $IsAlloc axiom for class Cdefg
axiom (forall _module.Cdefg$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Cdefg?(_module.Cdefg$T), $h) } 
  $IsAlloc($o, Tclass._module.Cdefg?(_module.Cdefg$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Cdefg.t: Field
uses {
axiom FDim(_module.Cdefg.t) == 0
   && FieldOfDecl(class._module.Cdefg?, field$t) == _module.Cdefg.t
   && !$IsGhostField(_module.Cdefg.t);
}

// Cdefg.t: Type axiom
axiom (forall _module.Cdefg$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cdefg.t), Tclass._module.Cdefg?(_module.Cdefg$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cdefg?(_module.Cdefg$T)
     ==> $IsBox(read($h, $o, _module.Cdefg.t), _module.Cdefg$T));

// Cdefg.t: Allocation axiom
axiom (forall _module.Cdefg$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Cdefg.t), Tclass._module.Cdefg?(_module.Cdefg$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cdefg?(_module.Cdefg$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Cdefg.t), _module.Cdefg$T, $h));

procedure {:verboseName "Cdefg._ctor (well-formedness)"} CheckWellFormed$$_module.Cdefg.__ctor(_module.Cdefg$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.Cdefg$T) && $IsAllocBox(t#0, _module.Cdefg$T, $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cdefg._ctor (call)"} Call$$_module.Cdefg.__ctor(_module.Cdefg$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.Cdefg$T) && $IsAllocBox(t#0, _module.Cdefg$T, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cdefg(_module.Cdefg$T))
         && $IsAlloc(this, Tclass._module.Cdefg(_module.Cdefg$T), $Heap));
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



procedure {:verboseName "Cdefg._ctor (correctness)"} Impl$$_module.Cdefg.__ctor(_module.Cdefg$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.Cdefg$T) && $IsAllocBox(t#0, _module.Cdefg$T, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cdefg._ctor (correctness)"} Impl$$_module.Cdefg.__ctor(_module.Cdefg$T: Ty, t#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.t: Box;
  var defass#this.t: bool;

    // AddMethodImpl: _ctor, Impl$$_module.Cdefg.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(266,22)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(267,12)
    assume true;
    assume true;
    this.t := t#0;
    defass#this.t := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(266,22)
    assert {:id "id523"} defass#this.t;
    assume this != null && $Is(this, Tclass._module.Cdefg?(_module.Cdefg$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume read($Heap, this, _module.Cdefg.t) == this.t;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(266,22)
}



// $Is axiom for non-null type _module.Cdefg
axiom (forall _module.Cdefg$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Cdefg(_module.Cdefg$T)) } 
    { $Is(c#0, Tclass._module.Cdefg?(_module.Cdefg$T)) } 
  $Is(c#0, Tclass._module.Cdefg(_module.Cdefg$T))
     <==> $Is(c#0, Tclass._module.Cdefg?(_module.Cdefg$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Cdefg
axiom (forall _module.Cdefg$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Cdefg(_module.Cdefg$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.Cdefg?(_module.Cdefg$T), $h) } 
  $IsAlloc(c#0, Tclass._module.Cdefg(_module.Cdefg$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.Cdefg?(_module.Cdefg$T), $h));

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

const _module.MyClass.Repr: Field
uses {
axiom FDim(_module.MyClass.Repr) == 0
   && FieldOfDecl(class._module.MyClass?, field$Repr) == _module.MyClass.Repr
   && $IsGhostField(_module.MyClass.Repr);
}

// MyClass.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyClass?()
     ==> $Is($Unbox(read($h, $o, _module.MyClass.Repr)): Set, TSet(Tclass._System.object())));

// MyClass.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyClass.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyClass.Repr)): Set, 
      TSet(Tclass._System.object()), 
      $h));

// function declaration for _module.MyClass.Valid
function _module.MyClass.Valid($heap: Heap, this: ref) : bool;

function _module.MyClass.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.MyClass.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.MyClass.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.MyClass())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.MyClass.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.MyClass.Valid($h0, this) == _module.MyClass.Valid($h1, this));

function _module.MyClass.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.MyClass.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.MyClass.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.MyClass())
       && $IsAlloc(this, Tclass._module.MyClass(), $Heap)
     ==> _module.MyClass.Valid#requires($Heap, this) == true);

procedure {:verboseName "MyClass.Valid (well-formedness)"} CheckWellformed$$_module.MyClass.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass())
         && $IsAlloc(this, Tclass._module.MyClass(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyClass.Valid (well-formedness)"} CheckWellformed$$_module.MyClass.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.MyClass.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.MyClass.Repr];
    assert {:id "id524"} b$reqreads#0;
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
        assume false;
    }
}



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

const unique class._module.AssignSuchThat?: ClassName;

function Tclass._module.AssignSuchThat?() : Ty
uses {
// Tclass._module.AssignSuchThat? Tag
axiom Tag(Tclass._module.AssignSuchThat?()) == Tagclass._module.AssignSuchThat?
   && TagFamily(Tclass._module.AssignSuchThat?()) == tytagFamily$AssignSuchThat;
}

const unique Tagclass._module.AssignSuchThat?: TyTag;

// Box/unbox axiom for Tclass._module.AssignSuchThat?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AssignSuchThat?()) } 
  $IsBox(bx, Tclass._module.AssignSuchThat?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AssignSuchThat?()));

// $Is axiom for class AssignSuchThat
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.AssignSuchThat?()) } 
  $Is($o, Tclass._module.AssignSuchThat?())
     <==> $o == null || dtype($o) == Tclass._module.AssignSuchThat?());

// $IsAlloc axiom for class AssignSuchThat
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.AssignSuchThat?(), $h) } 
  $IsAlloc($o, Tclass._module.AssignSuchThat?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.AssignSuchThat.x: Field
uses {
axiom FDim(_module.AssignSuchThat.x) == 0
   && FieldOfDecl(class._module.AssignSuchThat?, field$x) == _module.AssignSuchThat.x
   && !$IsGhostField(_module.AssignSuchThat.x);
}

// AssignSuchThat.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AssignSuchThat.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.AssignSuchThat?()
     ==> $Is($Unbox(read($h, $o, _module.AssignSuchThat.x)): int, TInt));

// AssignSuchThat.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AssignSuchThat.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AssignSuchThat?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AssignSuchThat.x)): int, TInt, $h));

function Tclass._module.AssignSuchThat() : Ty
uses {
// Tclass._module.AssignSuchThat Tag
axiom Tag(Tclass._module.AssignSuchThat()) == Tagclass._module.AssignSuchThat
   && TagFamily(Tclass._module.AssignSuchThat()) == tytagFamily$AssignSuchThat;
}

const unique Tagclass._module.AssignSuchThat: TyTag;

// Box/unbox axiom for Tclass._module.AssignSuchThat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AssignSuchThat()) } 
  $IsBox(bx, Tclass._module.AssignSuchThat())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AssignSuchThat()));

procedure {:verboseName "AssignSuchThat.P (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat.P (call)"} Call$$_module.AssignSuchThat.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat.P (correctness)"} Impl$$_module.AssignSuchThat.P(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.P (correctness)"} Impl$$_module.AssignSuchThat.P(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: P, Impl$$_module.AssignSuchThat.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(332,7)
    assume true;
    assert {:id "id525"} $_ModifiesFrame[this, _module.AssignSuchThat.x];
    havoc $rhs#0;
    $Heap := update($Heap, this, _module.AssignSuchThat.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    if (true)
    {
        assume true;
    }

    havoc ;
    assume {:id "id527"} $Unbox(read($Heap, this, _module.AssignSuchThat.x)): int == LitInt(10);
}



procedure {:verboseName "AssignSuchThat.Q0 (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.Q0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.Q0 (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.Q0(this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Q0, CheckWellFormed$$_module.AssignSuchThat.Q0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id528"} a#0 != null;
    assume {:id "id529"} _System.array.Length(a#0) == LitInt(50);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "AssignSuchThat.Q0 (call)"} Call$$_module.AssignSuchThat.Q0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id530"} _System.array.Length(a#0) == LitInt(50);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat.Q0 (correctness)"} Impl$$_module.AssignSuchThat.Q0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id531"} _System.array.Length(a#0) == LitInt(50);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.Q0 (correctness)"} Impl$$_module.AssignSuchThat.Q0(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: Q0, Impl$$_module.AssignSuchThat.Q0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(338,11)
    assert {:id "id532"} a#0 != null;
    assert {:id "id533"} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
    assume true;
    assert {:id "id534"} $_ModifiesFrame[a#0, IndexField(LitInt(22))];
    havoc $rhs#0;
    $Heap := update($Heap, a#0, IndexField(LitInt(22)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    if (true)
    {
        assert {:id "id536"} a#0 != null;
        assert {:id "id537"} {:subsumption 0} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
        assume true;
    }

    havoc ;
    assume {:id "id538"} $Unbox(read($Heap, a#0, IndexField(LitInt(22)))): int == LitInt(12);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(339,5)
    assert {:id "id539"} a#0 != null;
    assert {:id "id540"} {:subsumption 0} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
    assume true;
    assert {:id "id541"} $Unbox(read($Heap, a#0, IndexField(LitInt(22)))): int == LitInt(12);
}



procedure {:verboseName "AssignSuchThat.Q1 (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.Q1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.Q1 (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.Q1(this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Q1, CheckWellFormed$$_module.AssignSuchThat.Q1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assert {:id "id542"} a#0 != null;
    assume {:id "id543"} _System.array.Length(a#0) == LitInt(50);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "AssignSuchThat.Q1 (call)"} Call$$_module.AssignSuchThat.Q1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id544"} _System.array.Length(a#0) == LitInt(50);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat.Q1 (correctness)"} Impl$$_module.AssignSuchThat.Q1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id545"} _System.array.Length(a#0) == LitInt(50);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.Q1 (correctness)"} Impl$$_module.AssignSuchThat.Q1(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: Q1, Impl$$_module.AssignSuchThat.Q1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(345,11)
    assert {:id "id546"} a#0 != null;
    assert {:id "id547"} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
    assume true;
    assert {:id "id548"} $_ModifiesFrame[a#0, IndexField(LitInt(22))];
    havoc $rhs#0;
    $Heap := update($Heap, a#0, IndexField(LitInt(22)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    if (true)
    {
        assert {:id "id550"} a#0 != null;
        assert {:id "id551"} {:subsumption 0} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
        assume true;
    }

    havoc ;
    assume {:id "id552"} $Unbox(read($Heap, a#0, IndexField(LitInt(22)))): int == LitInt(12);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(346,5)
    assert {:id "id553"} a#0 != null;
    assert {:id "id554"} {:subsumption 0} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
    assume true;
    assert {:id "id555"} $Unbox(read($Heap, a#0, IndexField(LitInt(22)))): int == LitInt(12);
}



procedure {:verboseName "AssignSuchThat.Q2 (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.Q2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.Q2 (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.Q2(this: ref, a#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Q2, CheckWellFormed$$_module.AssignSuchThat.Q2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assert {:id "id556"} a#0 != null;
    assume {:id "id557"} _System.array.Length(a#0) == LitInt(50);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "AssignSuchThat.Q2 (call)"} Call$$_module.AssignSuchThat.Q2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id558"} _System.array.Length(a#0) == LitInt(50);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat.Q2 (correctness)"} Impl$$_module.AssignSuchThat.Q2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id559"} _System.array.Length(a#0) == LitInt(50);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.Q2 (correctness)"} Impl$$_module.AssignSuchThat.Q2(this: ref, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: Q2, Impl$$_module.AssignSuchThat.Q2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(352,11)
    assert {:id "id560"} a#0 != null;
    assert {:id "id561"} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
    assume true;
    assert {:id "id562"} $_ModifiesFrame[a#0, IndexField(LitInt(22))];
    havoc $rhs#0;
    $Heap := update($Heap, a#0, IndexField(LitInt(22)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    if (true)
    {
        assert {:id "id564"} a#0 != null;
        assert {:id "id565"} {:subsumption 0} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
        assume true;
    }

    havoc ;
    assume {:id "id566"} $Unbox(read($Heap, a#0, IndexField(LitInt(22)))): int == LitInt(12);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(353,5)
    assert {:id "id567"} a#0 != null;
    assert {:id "id568"} {:subsumption 0} 0 <= LitInt(22) && LitInt(22) < _System.array.Length(a#0);
    assume true;
    assert {:id "id569"} $Unbox(read($Heap, a#0, IndexField(LitInt(22)))): int == LitInt(0);
}



procedure {:verboseName "AssignSuchThat.R (well-formedness)"} CheckWellFormed$$_module.AssignSuchThat.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    that#0: ref
       where $Is(that#0, Tclass._module.AssignSuchThat())
         && $IsAlloc(that#0, Tclass._module.AssignSuchThat(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AssignSuchThat.R (call)"} Call$$_module.AssignSuchThat.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    that#0: ref
       where $Is(that#0, Tclass._module.AssignSuchThat())
         && $IsAlloc(that#0, Tclass._module.AssignSuchThat(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == that#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AssignSuchThat.R (correctness)"} Impl$$_module.AssignSuchThat.R(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AssignSuchThat())
         && $IsAlloc(this, Tclass._module.AssignSuchThat(), $Heap), 
    that#0: ref
       where $Is(that#0, Tclass._module.AssignSuchThat())
         && $IsAlloc(that#0, Tclass._module.AssignSuchThat(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == that#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AssignSuchThat.R (correctness)"} Impl$$_module.AssignSuchThat.R(this: ref, that#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: R, Impl$$_module.AssignSuchThat.R
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this || $o == that#0);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Array.dfy(358,20)
    assert {:id "id570"} that#0 != this;
    assume true;
    $obj0 := this;
    assert {:id "id571"} $_ModifiesFrame[$obj0, _module.AssignSuchThat.x];
    assert {:id "id572"} that#0 != null;
    assume true;
    $obj1 := that#0;
    assert {:id "id573"} $_ModifiesFrame[$obj1, _module.AssignSuchThat.x];
    havoc $rhs#0;
    havoc $rhs#1;
    $Heap := update($Heap, $obj0, _module.AssignSuchThat.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.AssignSuchThat.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    if (true)
    {
        if ($Unbox(read($Heap, this, _module.AssignSuchThat.x)): int == LitInt(5))
        {
            assert {:id "id576"} {:subsumption 0} that#0 != null;
        }

        assume true;
    }

    havoc ;
    assume {:id "id577"} $Unbox(read($Heap, this, _module.AssignSuchThat.x)): int == LitInt(5)
       && $Unbox(read($Heap, that#0, _module.AssignSuchThat.x)): int == LitInt(5);
}



// $Is axiom for non-null type _module.AssignSuchThat
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.AssignSuchThat()) } 
    { $Is(c#0, Tclass._module.AssignSuchThat?()) } 
  $Is(c#0, Tclass._module.AssignSuchThat())
     <==> $Is(c#0, Tclass._module.AssignSuchThat?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.AssignSuchThat
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.AssignSuchThat(), $h) } 
    { $IsAlloc(c#0, Tclass._module.AssignSuchThat?(), $h) } 
  $IsAlloc(c#0, Tclass._module.AssignSuchThat(), $h)
     <==> $IsAlloc(c#0, Tclass._module.AssignSuchThat?(), $h));

const unique class.DtypeRegression.__default: ClassName;

// function declaration for DtypeRegression._default.array_equal
function DtypeRegression.__default.array__equal($heap: Heap, a#0: ref, b#0: ref) : bool;

function DtypeRegression.__default.array__equal#canCall($heap: Heap, a#0: ref, b#0: ref) : bool;

// frame axiom for DtypeRegression.__default.array__equal
axiom (forall $h0: Heap, $h1: Heap, a#0: ref, b#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), DtypeRegression.__default.array__equal($h1, a#0, b#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (DtypeRegression.__default.array__equal#canCall($h0, a#0, b#0)
         || ($Is(a#0, Tclass._System.array(TInt)) && $Is(b#0, Tclass._System.array(TInt))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && ($o == a#0 || $o == b#0)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> DtypeRegression.__default.array__equal($h0, a#0, b#0)
       == DtypeRegression.__default.array__equal($h1, a#0, b#0));

function DtypeRegression.__default.array__equal#requires(Heap, ref, ref) : bool;

// #requires axiom for DtypeRegression.__default.array__equal
axiom (forall $Heap: Heap, a#0: ref, b#0: ref :: 
  { DtypeRegression.__default.array__equal#requires($Heap, a#0, b#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(a#0, Tclass._System.array(TInt))
       && $Is(b#0, Tclass._System.array(TInt))
     ==> DtypeRegression.__default.array__equal#requires($Heap, a#0, b#0) == true);

// definition axiom for DtypeRegression.__default.array__equal (revealed)
axiom {:id "id578"} (forall $Heap: Heap, a#0: ref, b#0: ref :: 
  { DtypeRegression.__default.array__equal($Heap, a#0, b#0), $IsGoodHeap($Heap) } 
  DtypeRegression.__default.array__equal#canCall($Heap, a#0, b#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(a#0, Tclass._System.array(TInt))
         && $Is(b#0, Tclass._System.array(TInt)))
     ==> DtypeRegression.__default.array__equal($Heap, a#0, b#0)
       == Seq#Equal(Seq#FromArray($Heap, a#0), Seq#FromArray($Heap, b#0)));

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

const unique tytagFamily$Cdefg: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$A: TyTagFamily;

const unique tytagFamily$B: TyTagFamily;

const unique tytagFamily$ArrayTests: TyTagFamily;

const unique tytagFamily$AssignSuchThat: TyTagFamily;

const unique field$t: NameFamily;

const unique field$Repr: NameFamily;

const unique field$zz0: NameFamily;

const unique field$zz1: NameFamily;

const unique field$x: NameFamily;

const unique field$b: NameFamily;
