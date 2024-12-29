// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy

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

// Box/unbox axiom for bv64
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(64)) } 
  $IsBox(bx, TBitvector(64))
     ==> $Box($Unbox(bx): bv64) == bx && $Is($Unbox(bx): bv64, TBitvector(64)));

axiom (forall v: bv64 :: { $Is(v, TBitvector(64)) } $Is(v, TBitvector(64)));

axiom (forall v: bv64, heap: Heap :: 
  { $IsAlloc(v, TBitvector(64), heap) } 
  $IsAlloc(v, TBitvector(64), heap));

function {:bvbuiltin "bvand"} and_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} or_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvxor"} xor_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvnot"} not_bv64(bv64) : bv64;

function {:bvbuiltin "bvadd"} add_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} sub_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvmul"} mul_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} div_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvurem"} mod_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvult"} lt_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvule"} le_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvuge"} ge_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvugt"} gt_bv64(bv64, bv64) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "bvlshr"} RightShift_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv64(bv64, bv64) : bv64;

function {:bvbuiltin "(_ int2bv 64)"} nat_to_bv64(int) : bv64;

function {:bvbuiltin "bv2int"} smt_nat_from_bv64(bv64) : int;

function nat_from_bv64(bv64) : int;

axiom (forall b: bv64 :: 
  { nat_from_bv64(b) } 
  0 <= nat_from_bv64(b)
     && nat_from_bv64(b) < 18446744073709551616
     && nat_from_bv64(b) == smt_nat_from_bv64(b));

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

const unique class._module.__default: ClassName;

function _module.__default.INT2__MAX() : int
uses {
axiom _module.__default.INT2__MAX(): int == LitInt(1);
// _default.INT2_MAX: Type axiom
axiom 1 < $FunctionContextHeight
   ==> $Is(_module.__default.INT2__MAX(), Tclass._module.int2());
}

procedure {:verboseName "INT2_MAX (well-formedness)"} CheckWellFormed$$_module.__default.INT2__MAX();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "INT2_MAX (well-formedness)"} CheckWellFormed$$_module.__default.INT2__MAX()
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;

    // AddWellformednessCheck for const field INT2_MAX
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(1);
    assert {:id "id0"} LitInt(-2) <= newtype$check#0 && newtype$check#0 < 2;
    assume true;
}



function Tclass._module.int2() : Ty
uses {
// Tclass._module.int2 Tag
axiom Tag(Tclass._module.int2()) == Tagclass._module.int2
   && TagFamily(Tclass._module.int2()) == tytagFamily$int2;
}

const unique Tagclass._module.int2: TyTag;

// Box/unbox axiom for Tclass._module.int2
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.int2()) } 
  $IsBox(bx, Tclass._module.int2())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.int2()));

// _default.INT2_MAX: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.INT2__MAX(), Tclass._module.int2(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.__default.INT2__MAX(), Tclass._module.int2(), $h));

function _module.__default.Zero() : int
uses {
axiom _module.__default.Zero(): int == LitInt(0);
// _default.Zero: Type axiom
axiom 2 < $FunctionContextHeight
   ==> $Is(_module.__default.Zero(), Tclass._module.zero());
}

procedure {:verboseName "Zero (well-formedness)"} CheckWellFormed$$_module.__default.Zero();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.zero() : Ty
uses {
// Tclass._module.zero Tag
axiom Tag(Tclass._module.zero()) == Tagclass._module.zero
   && TagFamily(Tclass._module.zero()) == tytagFamily$zero;
}

const unique Tagclass._module.zero: TyTag;

// Box/unbox axiom for Tclass._module.zero
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.zero()) } 
  $IsBox(bx, Tclass._module.zero())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.zero()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Zero (well-formedness)"} CheckWellFormed$$_module.__default.Zero()
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;

    // AddWellformednessCheck for const field Zero
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id1"} LitInt(-2) <= newtype$check#0 && newtype$check#0 < 2;
    assume true;
    assert {:id "id2"} $Is(LitInt(0), Tclass._module.zero());
}



// _default.Zero: Allocation axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.Zero(), Tclass._module.zero(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.__default.Zero(), Tclass._module.zero(), $h));

function _module.__default.DChar() : char
uses {
axiom _module.__default.DChar(): char == char#FromInt(LitInt(68));
// _default.DChar: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.__default.DChar(), TChar);
}

procedure {:verboseName "DChar (well-formedness)"} CheckWellFormed$$_module.__default.DChar();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DChar (well-formedness)"} CheckWellFormed$$_module.__default.DChar()
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;

    // AddWellformednessCheck for const field DChar
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(68);
    assert {:id "id3"} char#IsChar(newtype$check#0);
    assume true;
}



// _default.DChar: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.DChar(), TChar, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.DChar(), TChar, $h));

function _module.__default.cu() : bv8
uses {
axiom _module.__default.cu(): bv8 == Lit(0bv8);
// _default.cu: Type axiom
axiom 1 < $FunctionContextHeight ==> $Is(_module.__default.cu(), TBitvector(8));
}

procedure {:verboseName "cu (well-formedness)"} CheckWellFormed$$_module.__default.cu();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// _default.cu: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.cu(), TBitvector(8), $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.__default.cu(), TBitvector(8), $h));

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

function Tclass._module.uint32WithMethods() : Ty
uses {
// Tclass._module.uint32WithMethods Tag
axiom Tag(Tclass._module.uint32WithMethods()) == Tagclass._module.uint32WithMethods
   && TagFamily(Tclass._module.uint32WithMethods()) == tytagFamily$uint32WithMethods;
}

const unique Tagclass._module.uint32WithMethods: TyTag;

// Box/unbox axiom for Tclass._module.uint32WithMethods
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint32WithMethods()) } 
  $IsBox(bx, Tclass._module.uint32WithMethods())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.uint32WithMethods()));

function Tclass._module.IntWrapper() : Ty
uses {
// Tclass._module.IntWrapper Tag
axiom Tag(Tclass._module.IntWrapper()) == Tagclass._module.IntWrapper
   && TagFamily(Tclass._module.IntWrapper()) == tytagFamily$IntWrapper;
}

const unique Tagclass._module.IntWrapper: TyTag;

// Box/unbox axiom for Tclass._module.IntWrapper
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IntWrapper()) } 
  $IsBox(bx, Tclass._module.IntWrapper())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.IntWrapper()));

function _module.IntWrapper.even(this: int) : bool
uses {
axiom (forall this: int :: 
  { _module.IntWrapper.even(this): bool } 
  _module.IntWrapper.even(this): bool == (Mod(this, LitInt(2)) == LitInt(0)));
// IntWrapper.even: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: int :: 
    { _module.IntWrapper.even($o) } 
    $Is($o, Tclass._module.IntWrapper()) ==> $Is(_module.IntWrapper.even($o), TBool));
// IntWrapper.even: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: int :: 
    { _module.IntWrapper.even($o), $IsAlloc($o, Tclass._module.IntWrapper(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.IntWrapper())
         && $IsAlloc($o, Tclass._module.IntWrapper(), $h)
       ==> $IsAlloc(_module.IntWrapper.even($o), TBool, $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var f#0: HandleType
     where $Is(f#0, Tclass._System.___hTotalFunc1(TBitvector(8), Tclass._module.uint8()))
       && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TBitvector(8), Tclass._module.uint8()), $Heap);
  var $lambdaHeap#0: Heap;
  var c#0: bv8;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var newtype$check#2: bv8;
  var newtype$check#3: int;
  var arr#0: ref
     where $Is(arr#0, Tclass._System.array(TBool))
       && $IsAlloc(arr#0, Tclass._System.array(TBool), $Heap);
  var $nw: ref;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var three#0: int where LitInt(0) <= three#0 && three#0 < 4294967296;
  var ##x#0: int;
  var six#0: int where LitInt(0) <= six#0 && six#0 < 4294967296;
  var ##y#0: int;
  var two#0: int where LitInt(0) <= two#0 && two#0 < 4294967296;
  var ##x#1: int;
  var almost_overflow#0: int
     where LitInt(0) <= almost_overflow#0 && almost_overflow#0 < 4294967296;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var almost_overflow2#0: int
     where LitInt(0) <= almost_overflow2#0 && almost_overflow2#0 < 4294967296;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var two_int#0: int where Lit(true);
  var newtype$check#10: int;
  var newtype$check#11: int;
  var two_back#0: int where LitInt(0) <= two_back#0 && two_back#0 < 4294967296;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var two_noterased#0: int
     where LitInt(0) <= two_noterased#0 && two_noterased#0 < 4294967296;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var two_noterased_int#0: int where Lit(true);
  var newtype$check#16: int;
  var newtype$check#17: int;
  var two_noterased_int_back#0: int
     where LitInt(0) <= two_noterased_int_back#0 && two_noterased_int_back#0 < 4294967296;
  var newtype$check#18: int;
  var newtype$check#19: int;
  var two_uint32#0: int where LitInt(0) <= two_uint32#0 && two_uint32#0 < 4294967296;
  var newtype$check#20: int;
  var newtype$check#21: int;
  var two_uint32_int#0: int where Lit(true);
  var newtype$check#22: int;
  var newtype$check#23: int;
  var two_uint32_int_back#0: int
     where LitInt(0) <= two_uint32_int_back#0 && two_uint32_int_back#0 < 4294967296;
  var newtype$check#24: int;
  var newtype$check#25: int;
  var two_uint32_another_int#0: int where Lit(true);
  var newtype$check#26: int;
  var newtype$check#27: int;
  var two_uint32_another_int_back#0: int
     where LitInt(0) <= two_uint32_another_int_back#0
       && two_uint32_another_int_back#0 < 4294967296;
  var newtype$check#28: int;
  var newtype$check#29: int;
  var ##y#1: int;
  var ##y#2: int;
  var ##y#3: int;
  var newtype$check#30: int;
  var newtype$check#31: int;
  var ##y#4: int;
  var ##y#5: int;
  var newtype$check#32: int;
  var newtype$check#33: int;
  var ##plus#0: int;
  var newtype$check#34: int;
  var newtype$check#35: int;
  var newtype$check#36: int;
  var newtype$check#37: int;
  var i#0: int;
  var newtype$check#38: int;
  var newtype$check#39: int;
  var j#0: int;
  var newtype$check#40: int;
  var newtype$check#41: int;
  var newtype$check#42: int;
  var newtype$check#43: int;
  var ##other#0: int;
  var newtype$check#44: int;
  var newtype$check#45: int;
  var newtype$check#46: int;
  var newtype$check#47: int;
  var newtype$check#48: int;
  var newtype$check#49: int;
  var x#0: int;
  var $rhs##0: int;
  var newtype$check#50: int;
  var newtype$check#51: int;
  var maxDepth##0: int;
  var newtype$check#52: int;
  var $rhs##1: int;
  var newtype$check#53: int;
  var newtype$check#54: int;
  var maxDepth##1: int;
  var newtype$check#55: int;
  var bb#0: bv8;
  var newtype$check#56: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(138,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(139,3)
    newtype$check#0 := _module.__default.Zero();
    assert {:id "id4"} LitInt(-32768) <= newtype$check#0 && newtype$check#0 < 32768;
    newtype$check#1 := _module.__default.Zero();
    assert {:id "id5"} LitInt(-32768) <= newtype$check#1 && newtype$check#1 < 32768;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(140,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(141,3)
    assert {:id "id6"} {:subsumption 0} 0 <= _module.__default.Zero()
       && _module.__default.Zero()
         < Seq#Length(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
              $Box(LitInt(2)))));
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(142,3)
    assert {:id "id7"} {:subsumption 0} 0 <= _module.__default.Zero()
       && _module.__default.Zero()
         <= Seq#Length(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
              $Box(LitInt(2)))));
    assert {:id "id8"} {:subsumption 0} _module.__default.Zero() <= _module.__default.INT2__MAX()
       && _module.__default.INT2__MAX()
         <= Seq#Length(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
              $Box(LitInt(2)))));
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(143,27)
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc c#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            newtype$check#2 := c#0;
            assert {:id "id9"} LitInt(0) <= nat_from_bv8(newtype$check#2)
               && nat_from_bv8(newtype$check#2) < 256;
            newtype$check#3 := nat_from_bv8(c#0);
            assert {:id "id10"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 256;
            assume {:id "id11"} lambdaResult#0 == nat_from_bv8(c#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, Tclass._module.uint8());
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    f#0 := Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#c#0: Box :: 
              $Box(nat_from_bv8($Unbox($l#0#c#0): bv8))), 
            (lambda $l#0#heap#0: Heap, $l#0#c#0: Box :: $IsBox($l#0#c#0, TBitvector(8))), 
            (lambda $l#0#heap#0: Heap, $l#0#c#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(144,11)
    assume true;
    assert {:id "id13"} 0 <= _module.__default.INT2__MAX();
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TBool));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == _module.__default.INT2__MAX();
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    arr#0 := $nw;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(145,3)
    assert {:id "id15"} {:subsumption 0} arr#0 != null;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(146,3)
    newtype$check#4 := char#ToInt(_module.__default.DChar());
    assert {:id "id16"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
    newtype$check#5 := char#ToInt(_module.__default.DChar());
    assert {:id "id17"} LitInt(0) <= newtype$check#5 && newtype$check#5 < 4294967296;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(148,13)
    assume true;
    ##x#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.uint32WithMethods.ctor#canCall(LitInt(3));
    assume _module.uint32WithMethods.ctor#canCall(LitInt(3));
    three#0 := LitInt(_module.uint32WithMethods.ctor(LitInt(3)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(149,11)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(three#0), Tclass._module.uint32WithMethods(), $Heap);
    ##y#0 := three#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, Tclass._module.uint32WithMethods(), $Heap);
    assert {:id "id19"} {:subsumption 0} three#0 + ##y#0 < 4294967296;
    assume three#0 + ##y#0 < 4294967296;
    assume _module.uint32WithMethods.plus#canCall(three#0, three#0);
    assume _module.uint32WithMethods.plus#canCall(three#0, three#0);
    six#0 := _module.uint32WithMethods.plus(three#0, three#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(150,11)
    assume true;
    ##x#1 := LitInt(2);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TInt, $Heap);
    assume _module.uint32WithMethods.ctor#canCall(LitInt(2));
    assume _module.uint32WithMethods.ctor#canCall(LitInt(2));
    two#0 := LitInt(_module.uint32WithMethods.ctor(LitInt(2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(151,23)
    assume true;
    newtype$check#6 := LitInt(4294967295);
    assert {:id "id22"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 4294967296;
    newtype$check#7 := LitInt(4294967295);
    assert {:id "id23"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 4294967296;
    assume true;
    almost_overflow#0 := LitInt(4294967295);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(152,24)
    assume true;
    newtype$check#8 := LitInt(4294967294);
    assert {:id "id25"} LitInt(0) <= newtype$check#8 && newtype$check#8 < 4294967296;
    newtype$check#9 := LitInt(4294967294);
    assert {:id "id26"} LitInt(0) <= newtype$check#9 && newtype$check#9 < 4294967296;
    assume true;
    almost_overflow2#0 := LitInt(4294967294);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(155,15)
    assume true;
    newtype$check#10 := two#0;
    newtype$check#11 := two#0;
    assume true;
    two_int#0 := two#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(156,16)
    assume true;
    newtype$check#12 := two_int#0;
    assert {:id "id29"} LitInt(0) <= newtype$check#12 && newtype$check#12 < 4294967296;
    newtype$check#13 := two_int#0;
    assert {:id "id30"} LitInt(0) <= newtype$check#13 && newtype$check#13 < 4294967296;
    assume true;
    two_back#0 := two_int#0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(157,3)
    assume true;
    if (two#0 != two_back#0)
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(160,21)
    assume true;
    newtype$check#14 := two#0;
    assert {:id "id32"} LitInt(0) <= newtype$check#14 && newtype$check#14 < 4294967296;
    newtype$check#15 := two#0;
    assert {:id "id33"} LitInt(0) <= newtype$check#15 && newtype$check#15 < 4294967296;
    assume true;
    two_noterased#0 := two#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(161,25)
    assume true;
    newtype$check#16 := two_noterased#0;
    newtype$check#17 := two_noterased#0;
    assume true;
    two_noterased_int#0 := two_noterased#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(162,30)
    assume true;
    newtype$check#18 := two_noterased_int#0;
    assert {:id "id36"} LitInt(0) <= newtype$check#18 && newtype$check#18 < 4294967296;
    newtype$check#19 := two_noterased_int#0;
    assert {:id "id37"} LitInt(0) <= newtype$check#19 && newtype$check#19 < 4294967296;
    assume true;
    two_noterased_int_back#0 := two_noterased_int#0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(163,3)
    assume true;
    if (two_noterased#0 != two_noterased_int_back#0)
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(166,18)
    assume true;
    newtype$check#20 := two#0;
    assert {:id "id39"} LitInt(0) <= newtype$check#20 && newtype$check#20 < 4294967296;
    newtype$check#21 := two#0;
    assert {:id "id40"} LitInt(0) <= newtype$check#21 && newtype$check#21 < 4294967296;
    assume true;
    two_uint32#0 := two#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(167,22)
    assume true;
    newtype$check#22 := two_uint32#0;
    newtype$check#23 := two_uint32#0;
    assume true;
    two_uint32_int#0 := two_uint32#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(168,27)
    assume true;
    newtype$check#24 := two_uint32_int#0;
    assert {:id "id43"} LitInt(0) <= newtype$check#24 && newtype$check#24 < 4294967296;
    newtype$check#25 := two_uint32_int#0;
    assert {:id "id44"} LitInt(0) <= newtype$check#25 && newtype$check#25 < 4294967296;
    assume true;
    two_uint32_int_back#0 := two_uint32_int#0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(169,3)
    assume true;
    if (two_uint32#0 != two_uint32_int_back#0)
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(172,30)
    assume true;
    newtype$check#26 := two_uint32#0;
    assert {:id "id46"} Lit(true);
    newtype$check#27 := two_uint32#0;
    assert {:id "id47"} Lit(true);
    assume true;
    two_uint32_another_int#0 := two_uint32#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(173,35)
    assume true;
    newtype$check#28 := two_uint32_another_int#0;
    assert {:id "id49"} LitInt(0) <= newtype$check#28 && newtype$check#28 < 4294967296;
    newtype$check#29 := two_uint32_another_int#0;
    assert {:id "id50"} LitInt(0) <= newtype$check#29 && newtype$check#29 < 4294967296;
    assume true;
    two_uint32_another_int_back#0 := two_uint32_another_int#0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(174,3)
    assume true;
    if (two_uint32#0 != two_uint32_another_int_back#0)
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(176,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(three#0), Tclass._module.uint32WithMethods(), $Heap);
    ##y#1 := almost_overflow#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#1, Tclass._module.uint32WithMethods(), $Heap);
    assume _module.uint32WithMethods.plus__overflow#canCall(three#0, almost_overflow#0);
    assume _module.uint32WithMethods.plus__overflow#canCall(three#0, almost_overflow#0);
    if (two#0 != _module.uint32WithMethods.plus__overflow(three#0, almost_overflow#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(177,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(two#0), Tclass._module.uint32WithMethods(), $Heap);
    ##y#2 := three#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#2, Tclass._module.uint32WithMethods(), $Heap);
    assume _module.uint32WithMethods.minus__overflow#canCall(two#0, three#0);
    assume _module.uint32WithMethods.minus__overflow#canCall(two#0, three#0);
    if (almost_overflow#0 != _module.uint32WithMethods.minus__overflow(two#0, three#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(178,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(three#0), Tclass._module.uint32WithMethods(), $Heap);
    ##y#3 := two#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#3, Tclass._module.uint32WithMethods(), $Heap);
    assume _module.uint32WithMethods.times__overflow#canCall(three#0, two#0);
    assume _module.uint32WithMethods.times__overflow#canCall(three#0, two#0);
    if (six#0 != _module.uint32WithMethods.times__overflow(three#0, two#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(179,3)
    newtype$check#30 := LitInt(0);
    assert {:id "id52"} LitInt(0) <= newtype$check#30 && newtype$check#30 < 4294967296;
    newtype$check#31 := LitInt(0);
    assert {:id "id53"} LitInt(0) <= newtype$check#31 && newtype$check#31 < 4294967296;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(two#0), Tclass._module.uint32WithMethods(), $Heap);
    ##y#4 := three#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#4, Tclass._module.uint32WithMethods(), $Heap);
    assert {:id "id54"} {:subsumption 0} ##y#4 != 0;
    assume _module.uint32WithMethods.div__overflow#canCall(two#0, three#0);
    assume _module.uint32WithMethods.div__overflow#canCall(two#0, three#0);
    if (LitInt(0) != _module.uint32WithMethods.div__overflow(two#0, three#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(180,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(almost_overflow#0), Tclass._module.uint32WithMethods(), $Heap);
    ##y#5 := two#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#5, Tclass._module.uint32WithMethods(), $Heap);
    assume _module.uint32WithMethods.times__overflow#canCall(almost_overflow#0, two#0);
    assume _module.uint32WithMethods.times__overflow#canCall(almost_overflow#0, two#0);
    if (almost_overflow2#0
       != _module.uint32WithMethods.times__overflow(almost_overflow#0, two#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(181,3)
    newtype$check#32 := LitInt(3);
    newtype$check#33 := LitInt(3);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(LitInt(3)), Tclass._module.IntWrapper(), $Heap);
    newtype$check#34 := LitInt(1);
    newtype$check#35 := LitInt(1);
    ##plus#0 := LitInt(1);
    // assume allocatedness for argument to function
    assume $IsAlloc(##plus#0, Tclass._module.IntWrapper(), $Heap);
    assume _module.IntWrapper.DoublePlus#canCall(LitInt(3), LitInt(1));
    newtype$check#36 := LitInt(7);
    newtype$check#37 := LitInt(7);
    assume _module.IntWrapper.DoublePlus#canCall(LitInt(3), LitInt(1));
    if (LitInt(_module.IntWrapper.DoublePlus(LitInt(3), LitInt(1))) != LitInt(7))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(182,9)
    assume true;
    assume true;
    i#0 := LitInt(1);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(183,3)
    newtype$check#38 := i#0;
    newtype$check#39 := i#0;
    assume true;
    if (_module.IntWrapper.even(i#0))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(184,9)
    assume true;
    assume true;
    j#0 := LitInt(2);
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(185,3)
    newtype$check#40 := j#0;
    newtype$check#41 := j#0;
    assume true;
    if (!_module.IntWrapper.even(j#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(186,3)
    newtype$check#42 := i#0;
    newtype$check#43 := i#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(i#0), Tclass._module.IntWrapper(), $Heap);
    newtype$check#44 := j#0;
    newtype$check#45 := j#0;
    ##other#0 := j#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##other#0, Tclass._module.IntWrapper(), $Heap);
    assume _module.IntWrapper.less#canCall(i#0, j#0);
    assume _module.IntWrapper.less#canCall(i#0, j#0);
    if (!_module.IntWrapper.less(i#0, j#0))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(187,3)
    newtype$check#46 := LitInt(7);
    newtype$check#47 := LitInt(7);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(LitInt(7)), Tclass._module.IntWrapper(), $Heap);
    assert {:id "id57"} {:subsumption 0} LitInt(7) >= LitInt(0);
    assume _module.IntWrapper.len#canCall(LitInt(7));
    assume _module.IntWrapper.len#canCall(LitInt(7));
    if (LitInt(_module.IntWrapper.len($LS($LZ), LitInt(7))) != LitInt(3))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(188,3)
    newtype$check#48 := LitInt(8);
    newtype$check#49 := LitInt(8);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(LitInt(8)), Tclass._module.IntWrapper(), $Heap);
    assert {:id "id58"} {:subsumption 0} LitInt(8) >= LitInt(0);
    assume _module.IntWrapper.len#canCall(LitInt(8));
    assume _module.IntWrapper.len#canCall(LitInt(8));
    if (LitInt(_module.IntWrapper.len($LS($LZ), LitInt(8))) != LitInt(4))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(189,42)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#50 := LitInt(8);
    newtype$check#51 := LitInt(8);
    assume true;
    newtype$check#52 := LitInt(100);
    assert {:id "id59"} LitInt(0) <= newtype$check#52 && newtype$check#52 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    maxDepth##0 := LitInt(100);
    call {:id "id60"} $rhs##0 := Call$$_module.IntWrapper.firstTwoBits(LitInt(8), maxDepth##0);
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##0;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(190,3)
    assume true;
    if (x#0 != LitInt(2))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(191,38)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#53 := LitInt(7);
    newtype$check#54 := LitInt(7);
    assume true;
    newtype$check#55 := LitInt(100);
    assert {:id "id62"} LitInt(0) <= newtype$check#55 && newtype$check#55 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    maxDepth##1 := LitInt(100);
    call {:id "id63"} $rhs##1 := Call$$_module.IntWrapper.firstTwoBits(LitInt(7), maxDepth##1);
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##1;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(192,3)
    assume true;
    if (x#0 != LitInt(3))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(193,10)
    assume true;
    newtype$check#56 := LitInt(1);
    assert {:id "id65"} 0 <= newtype$check#56 && newtype$check#56 < 256;
    assume true;
    bb#0 := 1bv8;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(194,3)
    assume true;
    if (not_bv8(bb#0) != Lit(254bv8))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "int2 (well-formedness)"} CheckWellFormed$$_module.int2(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "int2 (well-formedness)"} CheckWellFormed$$_module.int2(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype int2
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(-2) <= x#0)
        {
        }

        assume {:id "id67"} LitInt(-2) <= x#0 && x#0 < 2;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id68"} {:subsumption 0} LitInt(-2) <= LitInt(0);
        assert {:id "id69"} {:subsumption 0} Lit(0 < 2);
        assume false;
    }
}



// $Is axiom for newtype _module.int2
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int2()) } 
  $Is(x#0, Tclass._module.int2()) <==> LitInt(-2) <= x#0 && x#0 < 2);

// $IsAlloc axiom for newtype _module.int2
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int2(), $h) } 
  $IsAlloc(x#0, Tclass._module.int2(), $h));

const unique class._module.int2: ClassName;

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

        assume {:id "id70"} LitInt(-32768) <= x#0 && x#0 < 32768;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id71"} {:subsumption 0} LitInt(-32768) <= LitInt(0);
        assert {:id "id72"} {:subsumption 0} Lit(0 < 32768);
        assume false;
    }
}



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

// $Is axiom for newtype _module.int16
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.int16()) } 
  $Is(x#0, Tclass._module.int16()) <==> LitInt(-32768) <= x#0 && x#0 < 32768);

// $IsAlloc axiom for newtype _module.int16
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.int16(), $h) } 
  $IsAlloc(x#0, Tclass._module.int16(), $h));

const unique class._module.int16: ClassName;

procedure {:verboseName "zero (well-formedness)"} CheckWellFormed$$_module.zero(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "zero (well-formedness)"} CheckWellFormed$$_module.zero(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;


    // AddWellformednessCheck for subset type zero
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume LitInt(-2) <= x#0 && x#0 < 2;
        newtype$check#0 := LitInt(0);
        assert {:id "id73"} LitInt(-2) <= newtype$check#0 && newtype$check#0 < 2;
        assume {:id "id74"} x#0 == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        newtype$check#1 := LitInt(0);
        assert {:id "id75"} LitInt(-2) <= newtype$check#1 && newtype$check#1 < 2;
        newtype$check#2 := LitInt(0);
        assert {:id "id76"} LitInt(-2) <= newtype$check#2 && newtype$check#2 < 2;
        newtype$check#3 := LitInt(0);
        assert {:id "id77"} LitInt(-2) <= newtype$check#3 && newtype$check#3 < 2;
        assume true;
        assert {:id "id78"} LitInt(0) == LitInt(0);
        assume false;
    }
}



// $Is axiom for subset type _module.zero
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.zero()) } 
  $Is(x#0, Tclass._module.zero())
     <==> LitInt(-2) <= x#0 && x#0 < 2 && x#0 == LitInt(0));

// $IsAlloc axiom for subset type _module.zero
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.zero(), $h) } 
  $IsAlloc(x#0, Tclass._module.zero(), $h));

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

        assume {:id "id79"} LitInt(0) <= x#0 && x#0 < 256;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id80"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id81"} {:subsumption 0} Lit(0 < 256);
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

        assume {:id "id82"} LitInt(0) <= x#0 && x#0 < 4294967296;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id83"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id84"} {:subsumption 0} Lit(0 < 4294967296);
        assume false;
    }
}



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

// $Is axiom for newtype _module.uint32
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint32()) } 
  $Is(x#0, Tclass._module.uint32()) <==> LitInt(0) <= x#0 && x#0 < 4294967296);

// $IsAlloc axiom for newtype _module.uint32
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint32(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint32(), $h));

const unique class._module.uint32: ClassName;

procedure {:verboseName "NewNat (well-formedness)"} CheckWellFormed$$_module.NewNat(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewNat (well-formedness)"} CheckWellFormed$$_module.NewNat(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: bv64;
  var newtype$check#2: int;
  var newtype$check#3: int;


    // AddWellformednessCheck for newtype NewNat
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume LitInt(0) <= n#0;
        newtype$check#0 := LitInt(1);
        assert {:id "id85"} 0 <= newtype$check#0 && newtype$check#0 < 18446744073709551616;
        newtype$check#1 := sub_bv64(0bv64, 1bv64);
        assert {:id "id86"} LitInt(0) <= nat_from_bv64(newtype$check#1);
        newtype$check#2 := nat_from_bv64(sub_bv64(0bv64, 1bv64));
        assert {:id "id87"} LitInt(0) <= newtype$check#2;
        assume {:id "id88"} n#0 <= nat_from_bv64(sub_bv64(0bv64, 1bv64));
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        newtype$check#3 := LitInt(0);
        assert {:id "id89"} LitInt(0) <= newtype$check#3;
        assume true;
        assert {:id "id90"} LitInt(0) <= nat_from_bv64(sub_bv64(0bv64, 1bv64));
        assume false;
    }
}



function Tclass._module.NewNat() : Ty
uses {
// Tclass._module.NewNat Tag
axiom Tag(Tclass._module.NewNat()) == Tagclass._module.NewNat
   && TagFamily(Tclass._module.NewNat()) == tytagFamily$NewNat;
}

const unique Tagclass._module.NewNat: TyTag;

// Box/unbox axiom for Tclass._module.NewNat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NewNat()) } 
  $IsBox(bx, Tclass._module.NewNat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.NewNat()));

// $Is axiom for newtype _module.NewNat
axiom (forall n#0: int :: 
  { $Is(n#0, Tclass._module.NewNat()) } 
  $Is(n#0, Tclass._module.NewNat())
     <==> LitInt(0) <= n#0 && n#0 <= nat_from_bv64(sub_bv64(0bv64, 1bv64)));

// $IsAlloc axiom for newtype _module.NewNat
axiom (forall n#0: int, $h: Heap :: 
  { $IsAlloc(n#0, Tclass._module.NewNat(), $h) } 
  $IsAlloc(n#0, Tclass._module.NewNat(), $h));

const unique class._module.NewNat: ClassName;

procedure {:verboseName "uint32_noterased (well-formedness)"} CheckWellFormed$$_module.uint32__noterased(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32_noterased (well-formedness)"} CheckWellFormed$$_module.uint32__noterased(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint32_noterased
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id91"} LitInt(0) <= x#0 && x#0 < 4294967296;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id92"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id93"} {:subsumption 0} Lit(0 < 4294967296);
        assume false;
    }
}



function Tclass._module.uint32__noterased() : Ty
uses {
// Tclass._module.uint32__noterased Tag
axiom Tag(Tclass._module.uint32__noterased()) == Tagclass._module.uint32__noterased
   && TagFamily(Tclass._module.uint32__noterased()) == tytagFamily$uint32_noterased;
}

const unique Tagclass._module.uint32__noterased: TyTag;

// Box/unbox axiom for Tclass._module.uint32__noterased
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.uint32__noterased()) } 
  $IsBox(bx, Tclass._module.uint32__noterased())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.uint32__noterased()));

// $Is axiom for newtype _module.uint32_noterased
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint32__noterased()) } 
  $Is(x#0, Tclass._module.uint32__noterased())
     <==> LitInt(0) <= x#0 && x#0 < 4294967296);

// $IsAlloc axiom for newtype _module.uint32_noterased
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint32__noterased(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint32__noterased(), $h));

const unique class._module.uint32__noterased: ClassName;

procedure {:verboseName "another_int (well-formedness)"} CheckWellFormed$$_module.another__int(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "another_int (well-formedness)"} CheckWellFormed$$_module.another__int(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype another_int
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id94"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id95"} Lit(true);
        assume false;
    }
}



function Tclass._module.another__int() : Ty
uses {
// Tclass._module.another__int Tag
axiom Tag(Tclass._module.another__int()) == Tagclass._module.another__int
   && TagFamily(Tclass._module.another__int()) == tytagFamily$another_int;
}

const unique Tagclass._module.another__int: TyTag;

// Box/unbox axiom for Tclass._module.another__int
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.another__int()) } 
  $IsBox(bx, Tclass._module.another__int())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.another__int()));

// $Is axiom for newtype _module.another_int
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.another__int()) } 
  $Is(x#0, Tclass._module.another__int()) <==> Lit(true));

// $IsAlloc axiom for newtype _module.another_int
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.another__int(), $h) } 
  $IsAlloc(x#0, Tclass._module.another__int(), $h));

const unique class._module.another__int: ClassName;

procedure {:verboseName "uint32WithMethods (well-formedness)"} CheckWellFormed$$_module.uint32WithMethods(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods (well-formedness)"} CheckWellFormed$$_module.uint32WithMethods(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype uint32WithMethods
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id96"} LitInt(0) <= x#0 && x#0 < 4294967296;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id97"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id98"} {:subsumption 0} Lit(0 < 4294967296);
        assume false;
    }
}



// $Is axiom for newtype _module.uint32WithMethods
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.uint32WithMethods()) } 
  $Is(x#0, Tclass._module.uint32WithMethods())
     <==> LitInt(0) <= x#0 && x#0 < 4294967296);

// $IsAlloc axiom for newtype _module.uint32WithMethods
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.uint32WithMethods(), $h) } 
  $IsAlloc(x#0, Tclass._module.uint32WithMethods(), $h));

const unique class._module.uint32WithMethods: ClassName;

function _module.uint32WithMethods.zero() : int
uses {
axiom _module.uint32WithMethods.zero(): int == LitInt(0);
// uint32WithMethods.zero: Type axiom
axiom 1 < $FunctionContextHeight
   ==> $Is(_module.uint32WithMethods.zero(), Tclass._module.uint32WithMethods());
}

procedure {:verboseName "uint32WithMethods.zero (well-formedness)"} CheckWellFormed$$_module.uint32WithMethods.zero();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.zero (well-formedness)"} CheckWellFormed$$_module.uint32WithMethods.zero()
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;

    // AddWellformednessCheck for const field zero
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(0);
    assert {:id "id99"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    newtype$check#1 := LitInt(0);
    assert {:id "id100"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
}



// uint32WithMethods.zero: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.uint32WithMethods.zero(), Tclass._module.uint32WithMethods(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.uint32WithMethods.zero(), Tclass._module.uint32WithMethods(), $h));

function _module.uint32WithMethods.one() : int
uses {
axiom _module.uint32WithMethods.one(): int == _module.uint32WithMethods.zero() + 1;
// uint32WithMethods.one: Type axiom
axiom 2 < $FunctionContextHeight
   ==> $Is(_module.uint32WithMethods.one(), Tclass._module.uint32WithMethods());
}

procedure {:verboseName "uint32WithMethods.one (well-formedness)"} CheckWellFormed$$_module.uint32WithMethods.one();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.one (well-formedness)"} CheckWellFormed$$_module.uint32WithMethods.one()
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;

    // AddWellformednessCheck for const field one
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := LitInt(1);
    assert {:id "id101"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    newtype$check#1 := _module.uint32WithMethods.zero() + 1;
    assert {:id "id102"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    assume true;
}



// uint32WithMethods.one: Allocation axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.uint32WithMethods.one(), Tclass._module.uint32WithMethods(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.uint32WithMethods.one(), Tclass._module.uint32WithMethods(), $h));

function _module.uint32WithMethods.n(this: int) : int
uses {
axiom (forall this: int :: 
  { _module.uint32WithMethods.n(this): int } 
  _module.uint32WithMethods.n(this): int == this);
// uint32WithMethods.n: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: int :: 
    { _module.uint32WithMethods.n($o) } 
    $Is($o, Tclass._module.uint32WithMethods())
       ==> $Is(_module.uint32WithMethods.n($o), TInt));
// uint32WithMethods.n: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: int :: 
    { _module.uint32WithMethods.n($o), $IsAlloc($o, Tclass._module.uint32WithMethods(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.uint32WithMethods())
         && $IsAlloc($o, Tclass._module.uint32WithMethods(), $h)
       ==> $IsAlloc(_module.uint32WithMethods.n($o), TInt, $h));
}

procedure {:verboseName "uint32WithMethods.n (well-formedness)"} CheckWellFormed$$_module.uint32WithMethods.n(this: int where LitInt(0) <= this && this < 4294967296);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.uint32WithMethods.ctor
function _module.uint32WithMethods.ctor(x#0: int) : int
uses {
// consequence axiom for _module.uint32WithMethods.ctor
axiom 2 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.uint32WithMethods.ctor(x#0) } 
    _module.uint32WithMethods.ctor#canCall(x#0) || 2 < $FunctionContextHeight
       ==> LitInt(0) <= _module.uint32WithMethods.ctor(x#0)
         && _module.uint32WithMethods.ctor(x#0) < 4294967296);
// definition axiom for _module.uint32WithMethods.ctor (revealed)
axiom {:id "id103"} 2 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.uint32WithMethods.ctor(x#0) } 
    _module.uint32WithMethods.ctor#canCall(x#0) || 2 < $FunctionContextHeight
       ==> _module.uint32WithMethods.ctor(x#0)
         == (if LitInt(0) <= x#0 && x#0 < 4294967296
           then x#0
           else _module.uint32WithMethods.zero()));
// definition axiom for _module.uint32WithMethods.ctor for all literals (revealed)
axiom {:id "id104"} 2 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.uint32WithMethods.ctor(LitInt(x#0)) } 
    _module.uint32WithMethods.ctor#canCall(LitInt(x#0))
         || 2 < $FunctionContextHeight
       ==> _module.uint32WithMethods.ctor(LitInt(x#0))
         == (if LitInt(0) <= LitInt(x#0) && x#0 < 4294967296
           then x#0
           else _module.uint32WithMethods.zero()));
}

function _module.uint32WithMethods.ctor#canCall(x#0: int) : bool;

function _module.uint32WithMethods.ctor#requires(int) : bool;

// #requires axiom for _module.uint32WithMethods.ctor
axiom (forall x#0: int :: 
  { _module.uint32WithMethods.ctor#requires(x#0) } 
  _module.uint32WithMethods.ctor#requires(x#0) == true);

procedure {:verboseName "uint32WithMethods.ctor (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.ctor(x#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.ctor (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.ctor(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.uint32WithMethods.ctor(x#0)
           && _module.uint32WithMethods.ctor(x#0) < 4294967296;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (LitInt(0) <= x#0)
        {
        }

        if (LitInt(0) <= x#0 && x#0 < 4294967296)
        {
            newtype$check#0 := x#0;
            assert {:id "id105"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
            newtype$check#1 := x#0;
            assert {:id "id106"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
            assume {:id "id107"} _module.uint32WithMethods.ctor(x#0) == x#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.uint32WithMethods.ctor(x#0), Tclass._module.uint32WithMethods());
            return;
        }
        else
        {
            assume {:id "id108"} _module.uint32WithMethods.ctor(x#0) == _module.uint32WithMethods.zero();
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.uint32WithMethods.ctor(x#0), Tclass._module.uint32WithMethods());
            return;
        }

        assume false;
    }
}



// function declaration for _module.uint32WithMethods.plus
function _module.uint32WithMethods.plus(this: int, y#0: int) : int
uses {
// consequence axiom for _module.uint32WithMethods.plus
axiom 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.plus(this, y#0) } 
    _module.uint32WithMethods.plus#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296
           && this + y#0 < 4294967296)
       ==> LitInt(0) <= _module.uint32WithMethods.plus(this, y#0)
         && _module.uint32WithMethods.plus(this, y#0) < 4294967296);
// definition axiom for _module.uint32WithMethods.plus (revealed)
axiom {:id "id109"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.plus(this, y#0) } 
    _module.uint32WithMethods.plus#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296
           && this + y#0 < 4294967296)
       ==> _module.uint32WithMethods.plus(this, y#0) == this + y#0);
// definition axiom for _module.uint32WithMethods.plus for all literals (revealed)
axiom {:id "id110"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    {:weight 3} { _module.uint32WithMethods.plus(LitInt(this), LitInt(y#0)) } 
    _module.uint32WithMethods.plus#canCall(LitInt(this), LitInt(y#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296
           && Lit(this + y#0 < 4294967296))
       ==> _module.uint32WithMethods.plus(LitInt(this), LitInt(y#0)) == LitInt(this + y#0));
}

function _module.uint32WithMethods.plus#canCall(this: int, y#0: int) : bool;

function _module.uint32WithMethods.plus#requires(int, int) : bool;

// #requires axiom for _module.uint32WithMethods.plus
axiom (forall this: int, y#0: int :: 
  { _module.uint32WithMethods.plus#requires(this, y#0) } 
  LitInt(0) <= this && this < 4294967296 && LitInt(0) <= y#0 && y#0 < 4294967296
     ==> _module.uint32WithMethods.plus#requires(this, y#0) == (this + y#0 < 4294967296));

procedure {:verboseName "uint32WithMethods.plus (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.plus(this: int where LitInt(0) <= this && this < 4294967296, 
    y#0: int where LitInt(0) <= y#0 && y#0 < 4294967296);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.plus (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.plus(this: int, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id111"} this + y#0 < 4294967296;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.uint32WithMethods.plus(this, y#0)
           && _module.uint32WithMethods.plus(this, y#0) < 4294967296;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := this + y#0;
        assert {:id "id112"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
        assume {:id "id113"} _module.uint32WithMethods.plus(this, y#0) == this + y#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.uint32WithMethods.plus(this, y#0), Tclass._module.uint32WithMethods());
        return;

        assume false;
    }
}



// function declaration for _module.uint32WithMethods.plus_overflow
function _module.uint32WithMethods.plus__overflow(this: int, y#0: int) : int
uses {
// consequence axiom for _module.uint32WithMethods.plus__overflow
axiom 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.plus__overflow(this, y#0) } 
    _module.uint32WithMethods.plus__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> LitInt(0) <= _module.uint32WithMethods.plus__overflow(this, y#0)
         && _module.uint32WithMethods.plus__overflow(this, y#0) < 4294967296);
// definition axiom for _module.uint32WithMethods.plus__overflow (revealed)
axiom {:id "id114"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.plus__overflow(this, y#0) } 
    _module.uint32WithMethods.plus__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> _module.uint32WithMethods.plus__overflow(this, y#0)
         == nat_from_bv32(add_bv32(nat_to_bv32(this), nat_to_bv32(y#0))));
// definition axiom for _module.uint32WithMethods.plus__overflow for all literals (revealed)
axiom {:id "id115"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    {:weight 3} { _module.uint32WithMethods.plus__overflow(LitInt(this), LitInt(y#0)) } 
    _module.uint32WithMethods.plus__overflow#canCall(LitInt(this), LitInt(y#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> _module.uint32WithMethods.plus__overflow(LitInt(this), LitInt(y#0))
         == nat_from_bv32(add_bv32(nat_to_bv32(LitInt(this)), nat_to_bv32(LitInt(y#0)))));
}

function _module.uint32WithMethods.plus__overflow#canCall(this: int, y#0: int) : bool;

function _module.uint32WithMethods.plus__overflow#requires(int, int) : bool;

// #requires axiom for _module.uint32WithMethods.plus__overflow
axiom (forall this: int, y#0: int :: 
  { _module.uint32WithMethods.plus__overflow#requires(this, y#0) } 
  LitInt(0) <= this && this < 4294967296 && LitInt(0) <= y#0 && y#0 < 4294967296
     ==> _module.uint32WithMethods.plus__overflow#requires(this, y#0) == true);

procedure {:verboseName "uint32WithMethods.plus_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.plus__overflow(this: int where LitInt(0) <= this && this < 4294967296, 
    y#0: int where LitInt(0) <= y#0 && y#0 < 4294967296);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.plus_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.plus__overflow(this: int, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: bv32;
  var newtype$check#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.uint32WithMethods.plus__overflow(this, y#0)
           && _module.uint32WithMethods.plus__overflow(this, y#0) < 4294967296;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := this;
        assert {:id "id116"} 0 <= newtype$check#0 && newtype$check#0 < 4294967296;
        newtype$check#1 := y#0;
        assert {:id "id117"} 0 <= newtype$check#1 && newtype$check#1 < 4294967296;
        newtype$check#2 := add_bv32(nat_to_bv32(this), nat_to_bv32(y#0));
        assert {:id "id118"} LitInt(0) <= nat_from_bv32(newtype$check#2)
           && nat_from_bv32(newtype$check#2) < 4294967296;
        newtype$check#3 := nat_from_bv32(add_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assert {:id "id119"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
        assume {:id "id120"} _module.uint32WithMethods.plus__overflow(this, y#0)
           == nat_from_bv32(add_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.uint32WithMethods.plus__overflow(this, y#0), 
          Tclass._module.uint32WithMethods());
        return;

        assume false;
    }
}



// function declaration for _module.uint32WithMethods.minus_overflow
function _module.uint32WithMethods.minus__overflow(this: int, y#0: int) : int
uses {
// consequence axiom for _module.uint32WithMethods.minus__overflow
axiom 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.minus__overflow(this, y#0) } 
    _module.uint32WithMethods.minus__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> LitInt(0) <= _module.uint32WithMethods.minus__overflow(this, y#0)
         && _module.uint32WithMethods.minus__overflow(this, y#0) < 4294967296);
// definition axiom for _module.uint32WithMethods.minus__overflow (revealed)
axiom {:id "id121"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.minus__overflow(this, y#0) } 
    _module.uint32WithMethods.minus__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> _module.uint32WithMethods.minus__overflow(this, y#0)
         == nat_from_bv32(sub_bv32(nat_to_bv32(this), nat_to_bv32(y#0))));
// definition axiom for _module.uint32WithMethods.minus__overflow for all literals (revealed)
axiom {:id "id122"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    {:weight 3} { _module.uint32WithMethods.minus__overflow(LitInt(this), LitInt(y#0)) } 
    _module.uint32WithMethods.minus__overflow#canCall(LitInt(this), LitInt(y#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> _module.uint32WithMethods.minus__overflow(LitInt(this), LitInt(y#0))
         == nat_from_bv32(sub_bv32(nat_to_bv32(LitInt(this)), nat_to_bv32(LitInt(y#0)))));
}

function _module.uint32WithMethods.minus__overflow#canCall(this: int, y#0: int) : bool;

function _module.uint32WithMethods.minus__overflow#requires(int, int) : bool;

// #requires axiom for _module.uint32WithMethods.minus__overflow
axiom (forall this: int, y#0: int :: 
  { _module.uint32WithMethods.minus__overflow#requires(this, y#0) } 
  LitInt(0) <= this && this < 4294967296 && LitInt(0) <= y#0 && y#0 < 4294967296
     ==> _module.uint32WithMethods.minus__overflow#requires(this, y#0) == true);

procedure {:verboseName "uint32WithMethods.minus_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.minus__overflow(this: int where LitInt(0) <= this && this < 4294967296, 
    y#0: int where LitInt(0) <= y#0 && y#0 < 4294967296);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.minus_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.minus__overflow(this: int, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: bv32;
  var newtype$check#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.uint32WithMethods.minus__overflow(this, y#0)
           && _module.uint32WithMethods.minus__overflow(this, y#0) < 4294967296;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := this;
        assert {:id "id123"} 0 <= newtype$check#0 && newtype$check#0 < 4294967296;
        newtype$check#1 := y#0;
        assert {:id "id124"} 0 <= newtype$check#1 && newtype$check#1 < 4294967296;
        newtype$check#2 := sub_bv32(nat_to_bv32(this), nat_to_bv32(y#0));
        assert {:id "id125"} LitInt(0) <= nat_from_bv32(newtype$check#2)
           && nat_from_bv32(newtype$check#2) < 4294967296;
        newtype$check#3 := nat_from_bv32(sub_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assert {:id "id126"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
        assume {:id "id127"} _module.uint32WithMethods.minus__overflow(this, y#0)
           == nat_from_bv32(sub_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.uint32WithMethods.minus__overflow(this, y#0), 
          Tclass._module.uint32WithMethods());
        return;

        assume false;
    }
}



// function declaration for _module.uint32WithMethods.times_overflow
function _module.uint32WithMethods.times__overflow(this: int, y#0: int) : int
uses {
// consequence axiom for _module.uint32WithMethods.times__overflow
axiom 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.times__overflow(this, y#0) } 
    _module.uint32WithMethods.times__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> LitInt(0) <= _module.uint32WithMethods.times__overflow(this, y#0)
         && _module.uint32WithMethods.times__overflow(this, y#0) < 4294967296);
// definition axiom for _module.uint32WithMethods.times__overflow (revealed)
axiom {:id "id128"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.times__overflow(this, y#0) } 
    _module.uint32WithMethods.times__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> _module.uint32WithMethods.times__overflow(this, y#0)
         == nat_from_bv32(mul_bv32(nat_to_bv32(this), nat_to_bv32(y#0))));
// definition axiom for _module.uint32WithMethods.times__overflow for all literals (revealed)
axiom {:id "id129"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    {:weight 3} { _module.uint32WithMethods.times__overflow(LitInt(this), LitInt(y#0)) } 
    _module.uint32WithMethods.times__overflow#canCall(LitInt(this), LitInt(y#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296)
       ==> _module.uint32WithMethods.times__overflow(LitInt(this), LitInt(y#0))
         == nat_from_bv32(mul_bv32(nat_to_bv32(LitInt(this)), nat_to_bv32(LitInt(y#0)))));
}

function _module.uint32WithMethods.times__overflow#canCall(this: int, y#0: int) : bool;

function _module.uint32WithMethods.times__overflow#requires(int, int) : bool;

// #requires axiom for _module.uint32WithMethods.times__overflow
axiom (forall this: int, y#0: int :: 
  { _module.uint32WithMethods.times__overflow#requires(this, y#0) } 
  LitInt(0) <= this && this < 4294967296 && LitInt(0) <= y#0 && y#0 < 4294967296
     ==> _module.uint32WithMethods.times__overflow#requires(this, y#0) == true);

procedure {:verboseName "uint32WithMethods.times_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.times__overflow(this: int where LitInt(0) <= this && this < 4294967296, 
    y#0: int where LitInt(0) <= y#0 && y#0 < 4294967296);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.times_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.times__overflow(this: int, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: bv32;
  var newtype$check#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.uint32WithMethods.times__overflow(this, y#0)
           && _module.uint32WithMethods.times__overflow(this, y#0) < 4294967296;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#0 := this;
        assert {:id "id130"} 0 <= newtype$check#0 && newtype$check#0 < 4294967296;
        newtype$check#1 := y#0;
        assert {:id "id131"} 0 <= newtype$check#1 && newtype$check#1 < 4294967296;
        newtype$check#2 := mul_bv32(nat_to_bv32(this), nat_to_bv32(y#0));
        assert {:id "id132"} LitInt(0) <= nat_from_bv32(newtype$check#2)
           && nat_from_bv32(newtype$check#2) < 4294967296;
        newtype$check#3 := nat_from_bv32(mul_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assert {:id "id133"} LitInt(0) <= newtype$check#3 && newtype$check#3 < 4294967296;
        assume {:id "id134"} _module.uint32WithMethods.times__overflow(this, y#0)
           == nat_from_bv32(mul_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.uint32WithMethods.times__overflow(this, y#0), 
          Tclass._module.uint32WithMethods());
        return;

        assume false;
    }
}



// function declaration for _module.uint32WithMethods.div_overflow
function _module.uint32WithMethods.div__overflow(this: int, y#0: int) : int
uses {
// consequence axiom for _module.uint32WithMethods.div__overflow
axiom 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.div__overflow(this, y#0) } 
    _module.uint32WithMethods.div__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296
           && y#0 != 0)
       ==> LitInt(0) <= _module.uint32WithMethods.div__overflow(this, y#0)
         && _module.uint32WithMethods.div__overflow(this, y#0) < 4294967296);
// definition axiom for _module.uint32WithMethods.div__overflow (revealed)
axiom {:id "id135"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    { _module.uint32WithMethods.div__overflow(this, y#0) } 
    _module.uint32WithMethods.div__overflow#canCall(this, y#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296
           && y#0 != 0)
       ==> _module.uint32WithMethods.div__overflow(this, y#0)
         == nat_from_bv32(div_bv32(nat_to_bv32(this), nat_to_bv32(y#0))));
// definition axiom for _module.uint32WithMethods.div__overflow for all literals (revealed)
axiom {:id "id136"} 1 <= $FunctionContextHeight
   ==> (forall this: int, y#0: int :: 
    {:weight 3} { _module.uint32WithMethods.div__overflow(LitInt(this), LitInt(y#0)) } 
    _module.uint32WithMethods.div__overflow#canCall(LitInt(this), LitInt(y#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= this
           && this < 4294967296
           && 
          LitInt(0) <= y#0
           && y#0 < 4294967296
           && Lit(y#0 != 0))
       ==> _module.uint32WithMethods.div__overflow(LitInt(this), LitInt(y#0))
         == nat_from_bv32(div_bv32(nat_to_bv32(LitInt(this)), nat_to_bv32(LitInt(y#0)))));
}

function _module.uint32WithMethods.div__overflow#canCall(this: int, y#0: int) : bool;

function _module.uint32WithMethods.div__overflow#requires(int, int) : bool;

// #requires axiom for _module.uint32WithMethods.div__overflow
axiom (forall this: int, y#0: int :: 
  { _module.uint32WithMethods.div__overflow#requires(this, y#0) } 
  LitInt(0) <= this && this < 4294967296 && LitInt(0) <= y#0 && y#0 < 4294967296
     ==> _module.uint32WithMethods.div__overflow#requires(this, y#0) == (y#0 != 0));

procedure {:verboseName "uint32WithMethods.div_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.div__overflow(this: int where LitInt(0) <= this && this < 4294967296, 
    y#0: int where LitInt(0) <= y#0 && y#0 < 4294967296);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "uint32WithMethods.div_overflow (well-formedness)"} CheckWellformed$$_module.uint32WithMethods.div__overflow(this: int, y#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: bv32;
  var newtype$check#4: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    newtype$check#0 := LitInt(0);
    assert {:id "id137"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 4294967296;
    assume {:id "id138"} y#0 != 0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.uint32WithMethods.div__overflow(this, y#0)
           && _module.uint32WithMethods.div__overflow(this, y#0) < 4294967296;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        newtype$check#1 := this;
        assert {:id "id139"} 0 <= newtype$check#1 && newtype$check#1 < 4294967296;
        newtype$check#2 := y#0;
        assert {:id "id140"} 0 <= newtype$check#2 && newtype$check#2 < 4294967296;
        assert {:id "id141"} nat_to_bv32(y#0) != 0bv32;
        newtype$check#3 := div_bv32(nat_to_bv32(this), nat_to_bv32(y#0));
        assert {:id "id142"} LitInt(0) <= nat_from_bv32(newtype$check#3)
           && nat_from_bv32(newtype$check#3) < 4294967296;
        newtype$check#4 := nat_from_bv32(div_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assert {:id "id143"} LitInt(0) <= newtype$check#4 && newtype$check#4 < 4294967296;
        assume {:id "id144"} _module.uint32WithMethods.div__overflow(this, y#0)
           == nat_from_bv32(div_bv32(nat_to_bv32(this), nat_to_bv32(y#0)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.uint32WithMethods.div__overflow(this, y#0), 
          Tclass._module.uint32WithMethods());
        return;

        assume false;
    }
}



procedure {:verboseName "IntWrapper (well-formedness)"} CheckWellFormed$$_module.IntWrapper();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for newtype _module.IntWrapper
axiom (forall c0#0: int :: 
  { $Is(c0#0, Tclass._module.IntWrapper()) } 
  $Is(c0#0, Tclass._module.IntWrapper()) <==> Lit(true));

// $IsAlloc axiom for newtype _module.IntWrapper
axiom (forall c1#0: int, $h: Heap :: 
  { $IsAlloc(c1#0, Tclass._module.IntWrapper(), $h) } 
  $IsAlloc(c1#0, Tclass._module.IntWrapper(), $h));

const unique class._module.IntWrapper: ClassName;

function _module.IntWrapper.zero(this: int) : int
uses {
axiom (forall this: int :: 
  { _module.IntWrapper.zero(this): int } 
  _module.IntWrapper.zero(this): int == LitInt(0));
// IntWrapper.zero: Type axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $o: int :: 
    { _module.IntWrapper.zero($o) } 
    $Is($o, Tclass._module.IntWrapper())
       ==> $Is(_module.IntWrapper.zero($o), Tclass._module.IntWrapper()));
// IntWrapper.zero: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: int :: 
    { _module.IntWrapper.zero($o), $IsAlloc($o, Tclass._module.IntWrapper(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.IntWrapper())
         && $IsAlloc($o, Tclass._module.IntWrapper(), $h)
       ==> $IsAlloc(_module.IntWrapper.zero($o), Tclass._module.IntWrapper(), $h));
}

procedure {:verboseName "IntWrapper.zero (well-formedness)"} CheckWellFormed$$_module.IntWrapper.zero(this: int where Lit(true));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntWrapper.even (well-formedness)"} CheckWellFormed$$_module.IntWrapper.even(this: int where Lit(true));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntWrapper.even (well-formedness)"} CheckWellFormed$$_module.IntWrapper.even(this: int)
{
  var $_ReadsFrame: [ref,Field]bool;

    // AddWellformednessCheck for const field even
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id145"} LitInt(2) != 0;
    assume true;
}



// function declaration for _module.IntWrapper.len
function _module.IntWrapper.len($ly: LayerType, this: int) : int
uses {
// definition axiom for _module.IntWrapper.len (revealed)
axiom {:id "id146"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: int :: 
    { _module.IntWrapper.len($LS($ly), this) } 
    _module.IntWrapper.len#canCall(this)
         || (0 < $FunctionContextHeight && Lit(true) && this >= LitInt(0))
       ==> (this != LitInt(0) ==> _module.IntWrapper.len#canCall(Div(this, LitInt(2))))
         && _module.IntWrapper.len($LS($ly), this)
           == (if this == LitInt(0)
             then 0
             else 1 + _module.IntWrapper.len($ly, Div(this, LitInt(2)))));
// definition axiom for _module.IntWrapper.len for all literals (revealed)
axiom {:id "id147"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: int :: 
    {:weight 3} { _module.IntWrapper.len($LS($ly), LitInt(this)) } 
    _module.IntWrapper.len#canCall(LitInt(this))
         || (0 < $FunctionContextHeight && Lit(true) && LitInt(this) >= LitInt(0))
       ==> (LitInt(this) != LitInt(0)
           ==> _module.IntWrapper.len#canCall(LitInt(Div(this, LitInt(2)))))
         && _module.IntWrapper.len($LS($ly), LitInt(this))
           == (if LitInt(this) == LitInt(0)
             then 0
             else 1 + _module.IntWrapper.len($LS($ly), LitInt(Div(this, LitInt(2))))));
}

function _module.IntWrapper.len#canCall(this: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: int :: 
  { _module.IntWrapper.len($LS($ly), this) } 
  _module.IntWrapper.len($LS($ly), this) == _module.IntWrapper.len($ly, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: int :: 
  { _module.IntWrapper.len(AsFuelBottom($ly), this) } 
  _module.IntWrapper.len($ly, this) == _module.IntWrapper.len($LZ, this));

function _module.IntWrapper.len#requires(LayerType, int) : bool;

// #requires axiom for _module.IntWrapper.len
axiom (forall $ly: LayerType, this: int :: 
  { _module.IntWrapper.len#requires($ly, this) } 
  Lit(true) ==> _module.IntWrapper.len#requires($ly, this) == (this >= LitInt(0)));

procedure {:verboseName "IntWrapper.len (well-formedness)"} CheckWellformed$$_module.IntWrapper.len(this: int where Lit(true));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntWrapper.len (well-formedness)"} CheckWellformed$$_module.IntWrapper.len(this: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    newtype$check#0 := LitInt(0);
    assume {:id "id148"} this >= LitInt(0);
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
        newtype$check#1 := LitInt(0);
        if (this == LitInt(0))
        {
            assume {:id "id149"} _module.IntWrapper.len($LS($LZ), this) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.IntWrapper.len($LS($LZ), this), TInt);
            return;
        }
        else
        {
            newtype$check#2 := LitInt(2);
            assert {:id "id150"} LitInt(2) != 0;
            newtype$check#3 := Div(this, LitInt(2));
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(Div(this, LitInt(2))), Tclass._module.IntWrapper(), $Heap);
            assert {:id "id151"} {:subsumption 0} Div(this, LitInt(2)) >= LitInt(0);
            assume Div(this, LitInt(2)) >= LitInt(0);
            assert {:id "id152"} 0 <= this || Div(this, LitInt(2)) == this;
            assert {:id "id153"} Div(this, LitInt(2)) < this;
            assume _module.IntWrapper.len#canCall(Div(this, LitInt(2)));
            assume {:id "id154"} _module.IntWrapper.len($LS($LZ), this)
               == 1 + _module.IntWrapper.len($LS($LZ), Div(this, LitInt(2)));
            assume _module.IntWrapper.len#canCall(Div(this, LitInt(2)));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.IntWrapper.len($LS($LZ), this), TInt);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "IntWrapper.firstTwoBits (well-formedness)"} CheckWellFormed$$_module.IntWrapper.firstTwoBits(this: int where Lit(true), 
    maxDepth#0: int where LitInt(0) <= maxDepth#0 && maxDepth#0 < 4294967296)
   returns (output#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntWrapper.firstTwoBits (call)"} Call$$_module.IntWrapper.firstTwoBits(this: int where Lit(true), 
    maxDepth#0: int where LitInt(0) <= maxDepth#0 && maxDepth#0 < 4294967296)
   returns (output#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntWrapper.firstTwoBits (correctness)"} Impl$$_module.IntWrapper.firstTwoBits(this: int where Lit(true), 
    maxDepth#0: int where LitInt(0) <= maxDepth#0 && maxDepth#0 < 4294967296)
   returns (output#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntWrapper.firstTwoBits (correctness)"} Impl$$_module.IntWrapper.firstTwoBits(this: int, maxDepth#0: int) returns (output#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $rhs##1_0: int;
  var newtype$check#1_0: int;
  var newtype$check#1_1: int;
  var maxDepth##1_0: int;
  var newtype$check#1_2: int;
  var newtype$check#1_3: int;

    // AddMethodImpl: firstTwoBits, Impl$$_module.IntWrapper.firstTwoBits
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(66,5)
    newtype$check#0 := LitInt(3);
    if (LitInt(3) < this)
    {
        newtype$check#1 := LitInt(0);
        assert {:id "id155"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    }

    assume true;
    if (this <= LitInt(3) || maxDepth#0 == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(67,14)
        assume true;
        assume true;
        output#0 := this;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(69,40)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        newtype$check#1_0 := LitInt(2);
        assert {:id "id157"} LitInt(2) != 0;
        newtype$check#1_1 := Div(this, LitInt(2));
        assume true;
        newtype$check#1_2 := LitInt(1);
        assert {:id "id158"} LitInt(0) <= newtype$check#1_2 && newtype$check#1_2 < 4294967296;
        newtype$check#1_3 := maxDepth#0 - 1;
        assert {:id "id159"} LitInt(0) <= newtype$check#1_3 && newtype$check#1_3 < 4294967296;
        assume true;
        // ProcessCallStmt: CheckSubrange
        maxDepth##1_0 := maxDepth#0 - 1;
        assert {:id "id160"} 0 <= this || Div(this, LitInt(2)) == this;
        assert {:id "id161"} 0 <= maxDepth#0 || Div(this, LitInt(2)) < this || maxDepth##1_0 == maxDepth#0;
        assert {:id "id162"} Div(this, LitInt(2)) < this
           || (Div(this, LitInt(2)) == this && maxDepth##1_0 < maxDepth#0);
        call {:id "id163"} $rhs##1_0 := Call$$_module.IntWrapper.firstTwoBits(Div(this, LitInt(2)), maxDepth##1_0);
        // TrCallStmt: After ProcessCallStmt
        output#0 := $rhs##1_0;
    }
}



procedure {:verboseName "IntWrapper.firstTwoBitsAreThree (well-formedness)"} CheckWellFormed$$_module.IntWrapper.firstTwoBitsAreThree(this: int where Lit(true), 
    maxDepth#0: int where LitInt(0) <= maxDepth#0 && maxDepth#0 < 4294967296)
   returns (output#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IntWrapper.firstTwoBitsAreThree (call)"} Call$$_module.IntWrapper.firstTwoBitsAreThree(this: int where Lit(true), 
    maxDepth#0: int where LitInt(0) <= maxDepth#0 && maxDepth#0 < 4294967296)
   returns (output#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IntWrapper.firstTwoBitsAreThree (correctness)"} Impl$$_module.IntWrapper.firstTwoBitsAreThree(this: int where Lit(true), 
    maxDepth#0: int where LitInt(0) <= maxDepth#0 && maxDepth#0 < 4294967296)
   returns (output#0: bool, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntWrapper.firstTwoBitsAreThree (correctness)"} Impl$$_module.IntWrapper.firstTwoBitsAreThree(this: int, maxDepth#0: int) returns (output#0: bool, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#0_0: int;
  var $rhs##1_0: bool;
  var newtype$check#1_0: int;
  var newtype$check#1_1: int;
  var maxDepth##1_0: int;
  var newtype$check#1_2: int;
  var newtype$check#1_3: int;

    // AddMethodImpl: firstTwoBitsAreThree, Impl$$_module.IntWrapper.firstTwoBitsAreThree
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(74,5)
    newtype$check#0 := LitInt(3);
    if (LitInt(3) < this)
    {
        newtype$check#1 := LitInt(0);
        assert {:id "id165"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 4294967296;
    }

    assume true;
    if (this <= LitInt(3) || maxDepth#0 == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(75,14)
        assume true;
        newtype$check#0_0 := LitInt(3);
        assume true;
        output#0 := this == LitInt(3);
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/rust/newtypes.dfy(77,48)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        newtype$check#1_0 := LitInt(2);
        assert {:id "id167"} LitInt(2) != 0;
        newtype$check#1_1 := Div(this, LitInt(2));
        assume true;
        newtype$check#1_2 := LitInt(1);
        assert {:id "id168"} LitInt(0) <= newtype$check#1_2 && newtype$check#1_2 < 4294967296;
        newtype$check#1_3 := maxDepth#0 - 1;
        assert {:id "id169"} LitInt(0) <= newtype$check#1_3 && newtype$check#1_3 < 4294967296;
        assume true;
        // ProcessCallStmt: CheckSubrange
        maxDepth##1_0 := maxDepth#0 - 1;
        assert {:id "id170"} 0 <= this || Div(this, LitInt(2)) == this;
        assert {:id "id171"} 0 <= maxDepth#0 || Div(this, LitInt(2)) < this || maxDepth##1_0 == maxDepth#0;
        assert {:id "id172"} Div(this, LitInt(2)) < this
           || (Div(this, LitInt(2)) == this && maxDepth##1_0 < maxDepth#0);
        call {:id "id173"} $rhs##1_0 := Call$$_module.IntWrapper.firstTwoBitsAreThree(Div(this, LitInt(2)), maxDepth##1_0);
        // TrCallStmt: After ProcessCallStmt
        output#0 := $rhs##1_0;
    }
}



// function declaration for _module.IntWrapper.add
function _module.IntWrapper.add(this: int, other#0: int) : int
uses {
// consequence axiom for _module.IntWrapper.add
axiom 1 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    { _module.IntWrapper.add(this, other#0) } 
    _module.IntWrapper.add#canCall(this, other#0)
         || (1 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> Lit(true));
// definition axiom for _module.IntWrapper.add (revealed)
axiom {:id "id175"} 1 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    { _module.IntWrapper.add(this, other#0) } 
    _module.IntWrapper.add#canCall(this, other#0)
         || (1 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.IntWrapper.add(this, other#0) == this + other#0);
// definition axiom for _module.IntWrapper.add for all literals (revealed)
axiom {:id "id176"} 1 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    {:weight 3} { _module.IntWrapper.add(LitInt(this), LitInt(other#0)) } 
    _module.IntWrapper.add#canCall(LitInt(this), LitInt(other#0))
         || (1 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.IntWrapper.add(LitInt(this), LitInt(other#0)) == LitInt(this + other#0));
}

function _module.IntWrapper.add#canCall(this: int, other#0: int) : bool;

function _module.IntWrapper.add#requires(int, int) : bool;

// #requires axiom for _module.IntWrapper.add
axiom (forall this: int, other#0: int :: 
  { _module.IntWrapper.add#requires(this, other#0) } 
  Lit(true) && Lit(true)
     ==> _module.IntWrapper.add#requires(this, other#0) == true);

procedure {:verboseName "IntWrapper.add (well-formedness)"} CheckWellformed$$_module.IntWrapper.add(this: int where Lit(true), other#0: int where Lit(true));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.IntWrapper.DoublePlus
function _module.IntWrapper.DoublePlus(this: int, plus#0: int) : int
uses {
// consequence axiom for _module.IntWrapper.DoublePlus
axiom 2 <= $FunctionContextHeight
   ==> (forall this: int, plus#0: int :: 
    { _module.IntWrapper.DoublePlus(this, plus#0) } 
    _module.IntWrapper.DoublePlus#canCall(this, plus#0)
         || (2 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> Lit(true));
// definition axiom for _module.IntWrapper.DoublePlus (revealed)
axiom {:id "id178"} 2 <= $FunctionContextHeight
   ==> (forall this: int, plus#0: int :: 
    { _module.IntWrapper.DoublePlus(this, plus#0) } 
    _module.IntWrapper.DoublePlus#canCall(this, plus#0)
         || (2 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.IntWrapper.AddZero#canCall(_module.IntWrapper.zero(plus#0))
         && _module.IntWrapper.DoublePlus(this, plus#0)
           == Mul(this, LitInt(2))
             + plus#0
             + _module.IntWrapper.AddZero(_module.IntWrapper.zero(plus#0)));
// definition axiom for _module.IntWrapper.DoublePlus for all literals (revealed)
axiom {:id "id179"} 2 <= $FunctionContextHeight
   ==> (forall this: int, plus#0: int :: 
    {:weight 3} { _module.IntWrapper.DoublePlus(LitInt(this), LitInt(plus#0)) } 
    _module.IntWrapper.DoublePlus#canCall(LitInt(this), LitInt(plus#0))
         || (2 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.IntWrapper.AddZero#canCall(_module.IntWrapper.zero(LitInt(plus#0)))
         && _module.IntWrapper.DoublePlus(LitInt(this), LitInt(plus#0))
           == Mul(LitInt(this), LitInt(2))
             + plus#0
             + _module.IntWrapper.AddZero(_module.IntWrapper.zero(LitInt(plus#0))));
}

function _module.IntWrapper.DoublePlus#canCall(this: int, plus#0: int) : bool;

function _module.IntWrapper.DoublePlus#requires(int, int) : bool;

// #requires axiom for _module.IntWrapper.DoublePlus
axiom (forall this: int, plus#0: int :: 
  { _module.IntWrapper.DoublePlus#requires(this, plus#0) } 
  Lit(true) && Lit(true)
     ==> _module.IntWrapper.DoublePlus#requires(this, plus#0) == true);

procedure {:verboseName "IntWrapper.DoublePlus (well-formedness)"} CheckWellformed$$_module.IntWrapper.DoublePlus(this: int where Lit(true), plus#0: int where Lit(true));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.IntWrapper.AddZero
function _module.IntWrapper.AddZero(this: int) : int
uses {
// consequence axiom for _module.IntWrapper.AddZero
axiom 1 <= $FunctionContextHeight
   ==> (forall this: int :: 
    { _module.IntWrapper.AddZero(this) } 
    _module.IntWrapper.AddZero#canCall(this)
         || (1 < $FunctionContextHeight && Lit(true))
       ==> Lit(true));
// definition axiom for _module.IntWrapper.AddZero (revealed)
axiom {:id "id181"} 1 <= $FunctionContextHeight
   ==> (forall this: int :: 
    { _module.IntWrapper.AddZero(this) } 
    _module.IntWrapper.AddZero#canCall(this)
         || (1 < $FunctionContextHeight && Lit(true))
       ==> _module.IntWrapper.AddZero(this) == this);
// definition axiom for _module.IntWrapper.AddZero for all literals (revealed)
axiom {:id "id182"} 1 <= $FunctionContextHeight
   ==> (forall this: int :: 
    {:weight 3} { _module.IntWrapper.AddZero(LitInt(this)) } 
    _module.IntWrapper.AddZero#canCall(LitInt(this))
         || (1 < $FunctionContextHeight && Lit(true))
       ==> _module.IntWrapper.AddZero(LitInt(this)) == LitInt(this));
}

function _module.IntWrapper.AddZero#canCall(this: int) : bool;

function _module.IntWrapper.AddZero#requires(int) : bool;

// #requires axiom for _module.IntWrapper.AddZero
axiom (forall this: int :: 
  { _module.IntWrapper.AddZero#requires(this) } 
  Lit(true) ==> _module.IntWrapper.AddZero#requires(this) == true);

procedure {:verboseName "IntWrapper.AddZero (well-formedness)"} CheckWellformed$$_module.IntWrapper.AddZero(this: int where Lit(true));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.IntWrapper.less
function _module.IntWrapper.less(this: int, other#0: int) : bool
uses {
// definition axiom for _module.IntWrapper.less (revealed)
axiom {:id "id184"} 1 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    { _module.IntWrapper.less(this, other#0) } 
    _module.IntWrapper.less#canCall(this, other#0)
         || (1 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.IntWrapper.less(this, other#0) == (this < other#0));
// definition axiom for _module.IntWrapper.less for all literals (revealed)
axiom {:id "id185"} 1 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    {:weight 3} { _module.IntWrapper.less(LitInt(this), LitInt(other#0)) } 
    _module.IntWrapper.less#canCall(LitInt(this), LitInt(other#0))
         || (1 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.IntWrapper.less(LitInt(this), LitInt(other#0)) == Lit(this < other#0));
}

function _module.IntWrapper.less#canCall(this: int, other#0: int) : bool;

function _module.IntWrapper.less#requires(int, int) : bool;

// #requires axiom for _module.IntWrapper.less
axiom (forall this: int, other#0: int :: 
  { _module.IntWrapper.less#requires(this, other#0) } 
  Lit(true) && Lit(true)
     ==> _module.IntWrapper.less#requires(this, other#0) == true);

procedure {:verboseName "IntWrapper.less (well-formedness)"} CheckWellformed$$_module.IntWrapper.less(this: int where Lit(true), other#0: int where Lit(true));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NestedIntWrapper (well-formedness)"} CheckWellFormed$$_module.NestedIntWrapper();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.NestedIntWrapper() : Ty
uses {
// Tclass._module.NestedIntWrapper Tag
axiom Tag(Tclass._module.NestedIntWrapper()) == Tagclass._module.NestedIntWrapper
   && TagFamily(Tclass._module.NestedIntWrapper()) == tytagFamily$NestedIntWrapper;
}

const unique Tagclass._module.NestedIntWrapper: TyTag;

// Box/unbox axiom for Tclass._module.NestedIntWrapper
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NestedIntWrapper()) } 
  $IsBox(bx, Tclass._module.NestedIntWrapper())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.NestedIntWrapper()));

// $Is axiom for newtype _module.NestedIntWrapper
axiom (forall c0#0: int :: 
  { $Is(c0#0, Tclass._module.NestedIntWrapper()) } 
  $Is(c0#0, Tclass._module.NestedIntWrapper()) <==> Lit(true));

// $IsAlloc axiom for newtype _module.NestedIntWrapper
axiom (forall c1#0: int, $h: Heap :: 
  { $IsAlloc(c1#0, Tclass._module.NestedIntWrapper(), $h) } 
  $IsAlloc(c1#0, Tclass._module.NestedIntWrapper(), $h));

const unique class._module.NestedIntWrapper: ClassName;

// function declaration for _module.NestedIntWrapper.DoubleMinus
function _module.NestedIntWrapper.DoubleMinus(this: int, other#0: int) : int
uses {
// consequence axiom for _module.NestedIntWrapper.DoubleMinus
axiom 2 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    { _module.NestedIntWrapper.DoubleMinus(this, other#0) } 
    _module.NestedIntWrapper.DoubleMinus#canCall(this, other#0)
         || (2 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> Lit(true));
// definition axiom for _module.NestedIntWrapper.DoubleMinus (revealed)
axiom {:id "id187"} 2 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    { _module.NestedIntWrapper.DoubleMinus(this, other#0) } 
    _module.NestedIntWrapper.DoubleMinus#canCall(this, other#0)
         || (2 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.NestedIntWrapper.DoubleMinus(this, other#0)
         == Mul(this, LitInt(47)) - other#0);
// definition axiom for _module.NestedIntWrapper.DoubleMinus for all literals (revealed)
axiom {:id "id188"} 2 <= $FunctionContextHeight
   ==> (forall this: int, other#0: int :: 
    {:weight 3} { _module.NestedIntWrapper.DoubleMinus(LitInt(this), LitInt(other#0)) } 
    _module.NestedIntWrapper.DoubleMinus#canCall(LitInt(this), LitInt(other#0))
         || (2 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.NestedIntWrapper.DoubleMinus(LitInt(this), LitInt(other#0))
         == LitInt(Mul(LitInt(this), LitInt(47)) - other#0));
}

function _module.NestedIntWrapper.DoubleMinus#canCall(this: int, other#0: int) : bool;

function _module.NestedIntWrapper.DoubleMinus#requires(int, int) : bool;

// #requires axiom for _module.NestedIntWrapper.DoubleMinus
axiom (forall this: int, other#0: int :: 
  { _module.NestedIntWrapper.DoubleMinus#requires(this, other#0) } 
  Lit(true) && Lit(true)
     ==> _module.NestedIntWrapper.DoubleMinus#requires(this, other#0) == true);

procedure {:verboseName "NestedIntWrapper.DoubleMinus (well-formedness)"} CheckWellformed$$_module.NestedIntWrapper.DoubleMinus(this: int where Lit(true), other#0: int where Lit(true));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #_module.UInt32Pair.UInt32Pair(int, int) : DatatypeType;

const unique ##_module.UInt32Pair.UInt32Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: int :: 
  { #_module.UInt32Pair.UInt32Pair(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.UInt32Pair.UInt32Pair(a#0#0#0, a#0#1#0))
     == ##_module.UInt32Pair.UInt32Pair);
}

function _module.UInt32Pair.UInt32Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.UInt32Pair.UInt32Pair_q(d) } 
  _module.UInt32Pair.UInt32Pair_q(d)
     <==> DatatypeCtorId(d) == ##_module.UInt32Pair.UInt32Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.UInt32Pair.UInt32Pair_q(d) } 
  _module.UInt32Pair.UInt32Pair_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: int :: 
      d == #_module.UInt32Pair.UInt32Pair(a#1#0#0, a#1#1#0)));

function Tclass._module.UInt32Pair() : Ty
uses {
// Tclass._module.UInt32Pair Tag
axiom Tag(Tclass._module.UInt32Pair()) == Tagclass._module.UInt32Pair
   && TagFamily(Tclass._module.UInt32Pair()) == tytagFamily$UInt32Pair;
}

const unique Tagclass._module.UInt32Pair: TyTag;

// Box/unbox axiom for Tclass._module.UInt32Pair
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.UInt32Pair()) } 
  $IsBox(bx, Tclass._module.UInt32Pair())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.UInt32Pair()));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: int :: 
  { $Is(#_module.UInt32Pair.UInt32Pair(a#2#0#0, a#2#1#0), Tclass._module.UInt32Pair()) } 
  $Is(#_module.UInt32Pair.UInt32Pair(a#2#0#0, a#2#1#0), Tclass._module.UInt32Pair())
     <==> $Is(a#2#0#0, Tclass._module.uint32WithMethods())
       && $Is(a#2#1#0, Tclass._module.uint32WithMethods()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.UInt32Pair.first(d), Tclass._module.uint32WithMethods(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.UInt32Pair.UInt32Pair_q(d)
       && $IsAlloc(d, Tclass._module.UInt32Pair(), $h)
     ==> $IsAlloc(_module.UInt32Pair.first(d), Tclass._module.uint32WithMethods(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.UInt32Pair.second(d), Tclass._module.uint32WithMethods(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.UInt32Pair.UInt32Pair_q(d)
       && $IsAlloc(d, Tclass._module.UInt32Pair(), $h)
     ==> $IsAlloc(_module.UInt32Pair.second(d), Tclass._module.uint32WithMethods(), $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: int :: 
  { #_module.UInt32Pair.UInt32Pair(LitInt(a#3#0#0), LitInt(a#3#1#0)) } 
  #_module.UInt32Pair.UInt32Pair(LitInt(a#3#0#0), LitInt(a#3#1#0))
     == Lit(#_module.UInt32Pair.UInt32Pair(a#3#0#0, a#3#1#0)));

function _module.UInt32Pair.first(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: int :: 
  { #_module.UInt32Pair.UInt32Pair(a#4#0#0, a#4#1#0) } 
  _module.UInt32Pair.first(#_module.UInt32Pair.UInt32Pair(a#4#0#0, a#4#1#0))
     == a#4#0#0);

function _module.UInt32Pair.second(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: int :: 
  { #_module.UInt32Pair.UInt32Pair(a#5#0#0, a#5#1#0) } 
  _module.UInt32Pair.second(#_module.UInt32Pair.UInt32Pair(a#5#0#0, a#5#1#0))
     == a#5#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.UInt32Pair(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.UInt32Pair())
     ==> $IsAlloc(d, Tclass._module.UInt32Pair(), $h));

// Depth-one case-split function
function $IsA#_module.UInt32Pair(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.UInt32Pair(d) } 
  $IsA#_module.UInt32Pair(d) ==> _module.UInt32Pair.UInt32Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.UInt32Pair.UInt32Pair_q(d), $Is(d, Tclass._module.UInt32Pair()) } 
  $Is(d, Tclass._module.UInt32Pair()) ==> _module.UInt32Pair.UInt32Pair_q(d));

// Datatype extensional equality declaration
function _module.UInt32Pair#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.UInt32Pair.UInt32Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.UInt32Pair#Equal(a, b) } 
  _module.UInt32Pair#Equal(a, b)
     <==> _module.UInt32Pair.first(a) == _module.UInt32Pair.first(b)
       && _module.UInt32Pair.second(a) == _module.UInt32Pair.second(b));

// Datatype extensionality axiom: _module.UInt32Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.UInt32Pair#Equal(a, b) } 
  _module.UInt32Pair#Equal(a, b) <==> a == b);

const unique class._module.UInt32Pair: ClassName;

// Constructor function declaration
function #_module.PairInts.PairInts(DatatypeType) : DatatypeType;

const unique ##_module.PairInts.PairInts: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: DatatypeType :: 
  { #_module.PairInts.PairInts(a#6#0#0) } 
  DatatypeCtorId(#_module.PairInts.PairInts(a#6#0#0))
     == ##_module.PairInts.PairInts);
}

function _module.PairInts.PairInts_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.PairInts.PairInts_q(d) } 
  _module.PairInts.PairInts_q(d)
     <==> DatatypeCtorId(d) == ##_module.PairInts.PairInts);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.PairInts.PairInts_q(d) } 
  _module.PairInts.PairInts_q(d)
     ==> (exists a#7#0#0: DatatypeType :: d == #_module.PairInts.PairInts(a#7#0#0)));

function Tclass._module.PairInts() : Ty
uses {
// Tclass._module.PairInts Tag
axiom Tag(Tclass._module.PairInts()) == Tagclass._module.PairInts
   && TagFamily(Tclass._module.PairInts()) == tytagFamily$PairInts;
}

const unique Tagclass._module.PairInts: TyTag;

// Box/unbox axiom for Tclass._module.PairInts
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.PairInts()) } 
  $IsBox(bx, Tclass._module.PairInts())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.PairInts()));

// Constructor $Is
axiom (forall a#8#0#0: DatatypeType :: 
  { $Is(#_module.PairInts.PairInts(a#8#0#0), Tclass._module.PairInts()) } 
  $Is(#_module.PairInts.PairInts(a#8#0#0), Tclass._module.PairInts())
     <==> $Is(a#8#0#0, 
      Tclass._System.Tuple2(Tclass._module.IntWrapper(), Tclass._module.IntWrapper())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.PairInts.pair(d), 
      Tclass._System.Tuple2(Tclass._module.IntWrapper(), Tclass._module.IntWrapper()), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.PairInts.PairInts_q(d)
       && $IsAlloc(d, Tclass._module.PairInts(), $h)
     ==> $IsAlloc(_module.PairInts.pair(d), 
      Tclass._System.Tuple2(Tclass._module.IntWrapper(), Tclass._module.IntWrapper()), 
      $h));

// Constructor literal
axiom (forall a#9#0#0: DatatypeType :: 
  { #_module.PairInts.PairInts(Lit(a#9#0#0)) } 
  #_module.PairInts.PairInts(Lit(a#9#0#0))
     == Lit(#_module.PairInts.PairInts(a#9#0#0)));

function _module.PairInts.pair(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType :: 
  { #_module.PairInts.PairInts(a#10#0#0) } 
  _module.PairInts.pair(#_module.PairInts.PairInts(a#10#0#0)) == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType :: 
  { #_module.PairInts.PairInts(a#11#0#0) } 
  DtRank(a#11#0#0) < DtRank(#_module.PairInts.PairInts(a#11#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.PairInts(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.PairInts())
     ==> $IsAlloc(d, Tclass._module.PairInts(), $h));

// Depth-one case-split function
function $IsA#_module.PairInts(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.PairInts(d) } 
  $IsA#_module.PairInts(d) ==> _module.PairInts.PairInts_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.PairInts.PairInts_q(d), $Is(d, Tclass._module.PairInts()) } 
  $Is(d, Tclass._module.PairInts()) ==> _module.PairInts.PairInts_q(d));

// Datatype extensional equality declaration
function _module.PairInts#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.PairInts.PairInts
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PairInts#Equal(a, b) } 
  _module.PairInts#Equal(a, b)
     <==> _System.Tuple2#Equal(_module.PairInts.pair(a), _module.PairInts.pair(b)));

// Datatype extensionality axiom: _module.PairInts
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PairInts#Equal(a, b) } 
  _module.PairInts#Equal(a, b) <==> a == b);

const unique class._module.PairInts: ClassName;

// function declaration for _module.PairInts.build
function _module.PairInts.build(i#0: int, j#0: int) : DatatypeType
uses {
// consequence axiom for _module.PairInts.build
axiom 3 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { _module.PairInts.build(i#0, j#0) } 
    _module.PairInts.build#canCall(i#0, j#0)
         || (3 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> $Is(_module.PairInts.build(i#0, j#0), Tclass._module.PairInts()));
// definition axiom for _module.PairInts.build (revealed)
axiom {:id "id190"} 3 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    { _module.PairInts.build(i#0, j#0) } 
    _module.PairInts.build#canCall(i#0, j#0)
         || (3 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.PairInts.build(i#0, j#0)
         == #_module.PairInts.PairInts(#_System._tuple#2._#Make2($Box(i#0), $Box(j#0))));
// definition axiom for _module.PairInts.build for all literals (revealed)
axiom {:id "id191"} 3 <= $FunctionContextHeight
   ==> (forall i#0: int, j#0: int :: 
    {:weight 3} { _module.PairInts.build(LitInt(i#0), LitInt(j#0)) } 
    _module.PairInts.build#canCall(LitInt(i#0), LitInt(j#0))
         || (3 < $FunctionContextHeight && Lit(true) && Lit(true))
       ==> _module.PairInts.build(LitInt(i#0), LitInt(j#0))
         == Lit(#_module.PairInts.PairInts(Lit(#_System._tuple#2._#Make2($Box(LitInt(i#0)), $Box(LitInt(j#0)))))));
}

function _module.PairInts.build#canCall(i#0: int, j#0: int) : bool;

function _module.PairInts.build#requires(int, int) : bool;

// #requires axiom for _module.PairInts.build
axiom (forall i#0: int, j#0: int :: 
  { _module.PairInts.build#requires(i#0, j#0) } 
  Lit(true) && Lit(true) ==> _module.PairInts.build#requires(i#0, j#0) == true);

procedure {:verboseName "PairInts.build (well-formedness)"} CheckWellformed$$_module.PairInts.build(i#0: int where Lit(true), j#0: int where Lit(true));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.PairInts.add
function _module.PairInts.add(this: DatatypeType, other#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.PairInts.add
axiom 3 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    { _module.PairInts.add(this, other#0) } 
    _module.PairInts.add#canCall(this, other#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.PairInts())
           && $Is(other#0, Tclass._module.PairInts()))
       ==> $Is(_module.PairInts.add(this, other#0), Tclass._module.PairInts()));
// definition axiom for _module.PairInts.add (revealed)
axiom {:id "id193"} 3 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    { _module.PairInts.add(this, other#0) } 
    _module.PairInts.add#canCall(this, other#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.PairInts())
           && $Is(other#0, Tclass._module.PairInts()))
       ==> _module.PairInts.PairInts_q(this)
         && _System.Tuple2.___hMake2_q(_module.PairInts.pair(this))
         && 
        _module.PairInts.PairInts_q(other#0)
         && _System.Tuple2.___hMake2_q(_module.PairInts.pair(other#0))
         && 
        _module.PairInts.PairInts_q(this)
         && _System.Tuple2.___hMake2_q(_module.PairInts.pair(this))
         && 
        _module.PairInts.PairInts_q(other#0)
         && _System.Tuple2.___hMake2_q(_module.PairInts.pair(other#0))
         && _module.PairInts.add(this, other#0)
           == #_module.PairInts.PairInts(#_System._tuple#2._#Make2($Box($Unbox(_System.Tuple2._0(_module.PairInts.pair(this))): int
                   + $Unbox(_System.Tuple2._0(_module.PairInts.pair(other#0))): int), 
              $Box($Unbox(_System.Tuple2._1(_module.PairInts.pair(this))): int
                   + $Unbox(_System.Tuple2._1(_module.PairInts.pair(other#0))): int))));
// definition axiom for _module.PairInts.add for all literals (revealed)
axiom {:id "id194"} 3 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, other#0: DatatypeType :: 
    {:weight 3} { _module.PairInts.add(Lit(this), Lit(other#0)) } 
    _module.PairInts.add#canCall(Lit(this), Lit(other#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.PairInts())
           && $Is(other#0, Tclass._module.PairInts()))
       ==> _module.PairInts.PairInts_q(Lit(this))
         && _System.Tuple2.___hMake2_q(Lit(_module.PairInts.pair(Lit(this))))
         && 
        _module.PairInts.PairInts_q(Lit(other#0))
         && _System.Tuple2.___hMake2_q(Lit(_module.PairInts.pair(Lit(other#0))))
         && 
        _module.PairInts.PairInts_q(Lit(this))
         && _System.Tuple2.___hMake2_q(Lit(_module.PairInts.pair(Lit(this))))
         && 
        _module.PairInts.PairInts_q(Lit(other#0))
         && _System.Tuple2.___hMake2_q(Lit(_module.PairInts.pair(Lit(other#0))))
         && _module.PairInts.add(Lit(this), Lit(other#0))
           == Lit(#_module.PairInts.PairInts(Lit(#_System._tuple#2._#Make2($Box(LitInt($Unbox(_System.Tuple2._0(Lit(_module.PairInts.pair(Lit(this))))): int
                         + $Unbox(_System.Tuple2._0(Lit(_module.PairInts.pair(Lit(other#0))))): int)), 
                  $Box(LitInt($Unbox(_System.Tuple2._1(Lit(_module.PairInts.pair(Lit(this))))): int
                         + $Unbox(_System.Tuple2._1(Lit(_module.PairInts.pair(Lit(other#0))))): int)))))));
}

function _module.PairInts.add#canCall(this: DatatypeType, other#0: DatatypeType) : bool;

function _module.PairInts.add#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.PairInts.add
axiom (forall this: DatatypeType, other#0: DatatypeType :: 
  { _module.PairInts.add#requires(this, other#0) } 
  $Is(this, Tclass._module.PairInts()) && $Is(other#0, Tclass._module.PairInts())
     ==> _module.PairInts.add#requires(this, other#0) == true);

procedure {:verboseName "PairInts.add (well-formedness)"} CheckWellformed$$_module.PairInts.add(this: DatatypeType
       where $Is(this, Tclass._module.PairInts())
         && $IsAlloc(this, Tclass._module.PairInts(), $Heap), 
    other#0: DatatypeType where $Is(other#0, Tclass._module.PairInts()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.PairInts.second_
function _module.PairInts.second__(this: DatatypeType) : int
uses {
// consequence axiom for _module.PairInts.second__
axiom 1 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.PairInts.second__(this) } 
    _module.PairInts.second__#canCall(this)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.PairInts()))
       ==> Lit(true));
// definition axiom for _module.PairInts.second__ (revealed)
axiom {:id "id196"} 1 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.PairInts.second__(this) } 
    _module.PairInts.second__#canCall(this)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.PairInts()))
       ==> _module.PairInts.PairInts_q(this)
         && _System.Tuple2.___hMake2_q(_module.PairInts.pair(this))
         && _module.PairInts.second__(this)
           == $Unbox(_System.Tuple2._1(_module.PairInts.pair(this))): int);
// definition axiom for _module.PairInts.second__ for all literals (revealed)
axiom {:id "id197"} 1 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.PairInts.second__(Lit(this)) } 
    _module.PairInts.second__#canCall(Lit(this))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.PairInts()))
       ==> _module.PairInts.PairInts_q(Lit(this))
         && _System.Tuple2.___hMake2_q(Lit(_module.PairInts.pair(Lit(this))))
         && _module.PairInts.second__(Lit(this))
           == LitInt($Unbox(_System.Tuple2._1(Lit(_module.PairInts.pair(Lit(this))))): int));
}

function _module.PairInts.second__#canCall(this: DatatypeType) : bool;

function _module.PairInts.second__#requires(DatatypeType) : bool;

// #requires axiom for _module.PairInts.second__
axiom (forall this: DatatypeType :: 
  { _module.PairInts.second__#requires(this) } 
  $Is(this, Tclass._module.PairInts())
     ==> _module.PairInts.second__#requires(this) == true);

procedure {:verboseName "PairInts.second_ (well-formedness)"} CheckWellformed$$_module.PairInts.second__(this: DatatypeType
       where $Is(this, Tclass._module.PairInts())
         && $IsAlloc(this, Tclass._module.PairInts(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function _module.PairInts.second(this: DatatypeType) : int
uses {
axiom (forall this: DatatypeType :: 
  { _module.PairInts.second(this): int } 
  _module.PairInts.second(this): int == _module.PairInts.second__(this));
// PairInts.second: Type axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $o: DatatypeType :: 
    { _module.PairInts.second($o) } 
    $Is($o, Tclass._module.PairInts())
       ==> $Is(_module.PairInts.second($o), Tclass._module.IntWrapper()));
// PairInts.second: Allocation axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: DatatypeType :: 
    { _module.PairInts.second($o), $IsAlloc($o, Tclass._module.PairInts(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.PairInts())
         && $IsAlloc($o, Tclass._module.PairInts(), $h)
       ==> $IsAlloc(_module.PairInts.second($o), Tclass._module.IntWrapper(), $h));
}

procedure {:verboseName "PairInts.second (well-formedness)"} CheckWellFormed$$_module.PairInts.second(this: DatatypeType
       where $Is(this, Tclass._module.PairInts())
         && $IsAlloc(this, Tclass._module.PairInts(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #_module.TwoIntWrappers.TwoIntWrappers(int, int) : DatatypeType;

const unique ##_module.TwoIntWrappers.TwoIntWrappers: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: int :: 
  { #_module.TwoIntWrappers.TwoIntWrappers(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.TwoIntWrappers.TwoIntWrappers(a#0#0#0, a#0#1#0))
     == ##_module.TwoIntWrappers.TwoIntWrappers);
}

function _module.TwoIntWrappers.TwoIntWrappers_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.TwoIntWrappers.TwoIntWrappers_q(d) } 
  _module.TwoIntWrappers.TwoIntWrappers_q(d)
     <==> DatatypeCtorId(d) == ##_module.TwoIntWrappers.TwoIntWrappers);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.TwoIntWrappers.TwoIntWrappers_q(d) } 
  _module.TwoIntWrappers.TwoIntWrappers_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: int :: 
      d == #_module.TwoIntWrappers.TwoIntWrappers(a#1#0#0, a#1#1#0)));

function Tclass._module.TwoIntWrappers() : Ty
uses {
// Tclass._module.TwoIntWrappers Tag
axiom Tag(Tclass._module.TwoIntWrappers()) == Tagclass._module.TwoIntWrappers
   && TagFamily(Tclass._module.TwoIntWrappers()) == tytagFamily$TwoIntWrappers;
}

const unique Tagclass._module.TwoIntWrappers: TyTag;

// Box/unbox axiom for Tclass._module.TwoIntWrappers
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TwoIntWrappers()) } 
  $IsBox(bx, Tclass._module.TwoIntWrappers())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.TwoIntWrappers()));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: int :: 
  { $Is(#_module.TwoIntWrappers.TwoIntWrappers(a#2#0#0, a#2#1#0), 
      Tclass._module.TwoIntWrappers()) } 
  $Is(#_module.TwoIntWrappers.TwoIntWrappers(a#2#0#0, a#2#1#0), 
      Tclass._module.TwoIntWrappers())
     <==> $Is(a#2#0#0, Tclass._module.IntWrapper())
       && $Is(a#2#1#0, Tclass._module.IntWrapper()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.TwoIntWrappers.first(d), Tclass._module.IntWrapper(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.TwoIntWrappers.TwoIntWrappers_q(d)
       && $IsAlloc(d, Tclass._module.TwoIntWrappers(), $h)
     ==> $IsAlloc(_module.TwoIntWrappers.first(d), Tclass._module.IntWrapper(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.TwoIntWrappers.second(d), Tclass._module.IntWrapper(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.TwoIntWrappers.TwoIntWrappers_q(d)
       && $IsAlloc(d, Tclass._module.TwoIntWrappers(), $h)
     ==> $IsAlloc(_module.TwoIntWrappers.second(d), Tclass._module.IntWrapper(), $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: int :: 
  { #_module.TwoIntWrappers.TwoIntWrappers(LitInt(a#3#0#0), LitInt(a#3#1#0)) } 
  #_module.TwoIntWrappers.TwoIntWrappers(LitInt(a#3#0#0), LitInt(a#3#1#0))
     == Lit(#_module.TwoIntWrappers.TwoIntWrappers(a#3#0#0, a#3#1#0)));

function _module.TwoIntWrappers.first(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: int :: 
  { #_module.TwoIntWrappers.TwoIntWrappers(a#4#0#0, a#4#1#0) } 
  _module.TwoIntWrappers.first(#_module.TwoIntWrappers.TwoIntWrappers(a#4#0#0, a#4#1#0))
     == a#4#0#0);

function _module.TwoIntWrappers.second(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: int :: 
  { #_module.TwoIntWrappers.TwoIntWrappers(a#5#0#0, a#5#1#0) } 
  _module.TwoIntWrappers.second(#_module.TwoIntWrappers.TwoIntWrappers(a#5#0#0, a#5#1#0))
     == a#5#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.TwoIntWrappers(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.TwoIntWrappers())
     ==> $IsAlloc(d, Tclass._module.TwoIntWrappers(), $h));

// Depth-one case-split function
function $IsA#_module.TwoIntWrappers(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.TwoIntWrappers(d) } 
  $IsA#_module.TwoIntWrappers(d) ==> _module.TwoIntWrappers.TwoIntWrappers_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.TwoIntWrappers.TwoIntWrappers_q(d), $Is(d, Tclass._module.TwoIntWrappers()) } 
  $Is(d, Tclass._module.TwoIntWrappers())
     ==> _module.TwoIntWrappers.TwoIntWrappers_q(d));

// Datatype extensional equality declaration
function _module.TwoIntWrappers#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.TwoIntWrappers.TwoIntWrappers
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.TwoIntWrappers#Equal(a, b) } 
  _module.TwoIntWrappers#Equal(a, b)
     <==> _module.TwoIntWrappers.first(a) == _module.TwoIntWrappers.first(b)
       && _module.TwoIntWrappers.second(a) == _module.TwoIntWrappers.second(b));

// Datatype extensionality axiom: _module.TwoIntWrappers
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.TwoIntWrappers#Equal(a, b) } 
  _module.TwoIntWrappers#Equal(a, b) <==> a == b);

const unique class._module.TwoIntWrappers: ClassName;

// function declaration for _module.TwoIntWrappers.PairIntsFirstZero
function _module.TwoIntWrappers.PairIntsFirstZero(this: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.TwoIntWrappers.PairIntsFirstZero
axiom 4 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.TwoIntWrappers.PairIntsFirstZero(this) } 
    _module.TwoIntWrappers.PairIntsFirstZero#canCall(this)
         || (4 < $FunctionContextHeight && $Is(this, Tclass._module.TwoIntWrappers()))
       ==> $Is(_module.TwoIntWrappers.PairIntsFirstZero(this), Tclass._module.PairInts()));
// definition axiom for _module.TwoIntWrappers.PairIntsFirstZero (revealed)
axiom {:id "id199"} 4 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.TwoIntWrappers.PairIntsFirstZero(this) } 
    _module.TwoIntWrappers.PairIntsFirstZero#canCall(this)
         || (4 < $FunctionContextHeight && $Is(this, Tclass._module.TwoIntWrappers()))
       ==> _module.TwoIntWrappers.TwoIntWrappers_q(this)
         && _module.PairInts.build#canCall(LitInt(0), _module.TwoIntWrappers.second(this))
         && _module.TwoIntWrappers.PairIntsFirstZero(this)
           == _module.PairInts.build(LitInt(0), _module.TwoIntWrappers.second(this)));
// definition axiom for _module.TwoIntWrappers.PairIntsFirstZero for all literals (revealed)
axiom {:id "id200"} 4 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.TwoIntWrappers.PairIntsFirstZero(Lit(this)) } 
    _module.TwoIntWrappers.PairIntsFirstZero#canCall(Lit(this))
         || (4 < $FunctionContextHeight && $Is(this, Tclass._module.TwoIntWrappers()))
       ==> _module.TwoIntWrappers.TwoIntWrappers_q(Lit(this))
         && _module.PairInts.build#canCall(LitInt(0), LitInt(_module.TwoIntWrappers.second(Lit(this))))
         && _module.TwoIntWrappers.PairIntsFirstZero(Lit(this))
           == Lit(_module.PairInts.build(LitInt(0), LitInt(_module.TwoIntWrappers.second(Lit(this))))));
}

function _module.TwoIntWrappers.PairIntsFirstZero#canCall(this: DatatypeType) : bool;

function _module.TwoIntWrappers.PairIntsFirstZero#requires(DatatypeType) : bool;

// #requires axiom for _module.TwoIntWrappers.PairIntsFirstZero
axiom (forall this: DatatypeType :: 
  { _module.TwoIntWrappers.PairIntsFirstZero#requires(this) } 
  $Is(this, Tclass._module.TwoIntWrappers())
     ==> _module.TwoIntWrappers.PairIntsFirstZero#requires(this) == true);

procedure {:verboseName "TwoIntWrappers.PairIntsFirstZero (well-formedness)"} CheckWellformed$$_module.TwoIntWrappers.PairIntsFirstZero(this: DatatypeType
       where $Is(this, Tclass._module.TwoIntWrappers())
         && $IsAlloc(this, Tclass._module.TwoIntWrappers(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



function _module.TwoIntWrappers.firstZero(this: DatatypeType) : DatatypeType
uses {
axiom (forall this: DatatypeType :: 
  { _module.TwoIntWrappers.firstZero(this): DatatypeType } 
  _module.TwoIntWrappers.firstZero(this): DatatypeType
     == _module.TwoIntWrappers.PairIntsFirstZero(this));
// TwoIntWrappers.firstZero: Type axiom
axiom 5 < $FunctionContextHeight
   ==> (forall $o: DatatypeType :: 
    { _module.TwoIntWrappers.firstZero($o) } 
    $Is($o, Tclass._module.TwoIntWrappers())
       ==> $Is(_module.TwoIntWrappers.firstZero($o), Tclass._module.PairInts()));
// TwoIntWrappers.firstZero: Allocation axiom
axiom 5 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: DatatypeType :: 
    { _module.TwoIntWrappers.firstZero($o), $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.TwoIntWrappers())
         && $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h)
       ==> $IsAlloc(_module.TwoIntWrappers.firstZero($o), Tclass._module.PairInts(), $h));
}

procedure {:verboseName "TwoIntWrappers.firstZero (well-formedness)"} CheckWellFormed$$_module.TwoIntWrappers.firstZero(this: DatatypeType
       where $Is(this, Tclass._module.TwoIntWrappers())
         && $IsAlloc(this, Tclass._module.TwoIntWrappers(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



function _module.TwoIntWrappers.secondZero(this: DatatypeType) : DatatypeType
uses {
axiom (forall this: DatatypeType :: 
  { _module.TwoIntWrappers.secondZero(this): DatatypeType } 
  _module.TwoIntWrappers.secondZero(this): DatatypeType
     == _module.PairInts.build(_module.TwoIntWrappers.first(this), LitInt(0)));
// TwoIntWrappers.secondZero: Type axiom
axiom 4 < $FunctionContextHeight
   ==> (forall $o: DatatypeType :: 
    { _module.TwoIntWrappers.secondZero($o) } 
    $Is($o, Tclass._module.TwoIntWrappers())
       ==> $Is(_module.TwoIntWrappers.secondZero($o), Tclass._module.PairInts()));
// TwoIntWrappers.secondZero: Allocation axiom
axiom 4 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: DatatypeType :: 
    { _module.TwoIntWrappers.secondZero($o), $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.TwoIntWrappers())
         && $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h)
       ==> $IsAlloc(_module.TwoIntWrappers.secondZero($o), Tclass._module.PairInts(), $h));
}

procedure {:verboseName "TwoIntWrappers.secondZero (well-formedness)"} CheckWellFormed$$_module.TwoIntWrappers.secondZero(this: DatatypeType
       where $Is(this, Tclass._module.TwoIntWrappers())
         && $IsAlloc(this, Tclass._module.TwoIntWrappers(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



function _module.TwoIntWrappers.underlying(this: DatatypeType) : DatatypeType
uses {
axiom (forall this: DatatypeType :: 
  { _module.TwoIntWrappers.underlying(this): DatatypeType } 
  _module.TwoIntWrappers.underlying(this): DatatypeType
     == _module.PairInts.add(_module.TwoIntWrappers.firstZero(this), _module.TwoIntWrappers.secondZero(this)));
// TwoIntWrappers.underlying: Type axiom
axiom 6 < $FunctionContextHeight
   ==> (forall $o: DatatypeType :: 
    { _module.TwoIntWrappers.underlying($o) } 
    $Is($o, Tclass._module.TwoIntWrappers())
       ==> $Is(_module.TwoIntWrappers.underlying($o), Tclass._module.PairInts()));
// TwoIntWrappers.underlying: Allocation axiom
axiom 6 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: DatatypeType :: 
    { _module.TwoIntWrappers.underlying($o), $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.TwoIntWrappers())
         && $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h)
       ==> $IsAlloc(_module.TwoIntWrappers.underlying($o), Tclass._module.PairInts(), $h));
}

procedure {:verboseName "TwoIntWrappers.underlying (well-formedness)"} CheckWellFormed$$_module.TwoIntWrappers.underlying(this: DatatypeType
       where $Is(this, Tclass._module.TwoIntWrappers())
         && $IsAlloc(this, Tclass._module.TwoIntWrappers(), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



function _module.TwoIntWrappers.origin() : DatatypeType
uses {
axiom _module.TwoIntWrappers.origin(): DatatypeType
   == Lit(#_module.TwoIntWrappers.TwoIntWrappers(LitInt(0), LitInt(0)));
// TwoIntWrappers.origin: Type axiom
axiom 2 < $FunctionContextHeight
   ==> $Is(_module.TwoIntWrappers.origin(), Tclass._module.TwoIntWrappers());
}

procedure {:verboseName "TwoIntWrappers.origin (well-formedness)"} CheckWellFormed$$_module.TwoIntWrappers.origin();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// TwoIntWrappers.origin: Allocation axiom
axiom 2 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.TwoIntWrappers.origin(), Tclass._module.TwoIntWrappers(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.TwoIntWrappers.origin(), Tclass._module.TwoIntWrappers(), $h));

function _module.TwoIntWrappers.total(this: DatatypeType) : int
uses {
axiom (forall this: DatatypeType :: 
  { _module.TwoIntWrappers.total(this): int } 
  _module.TwoIntWrappers.total(this): int
     == _module.TwoIntWrappers.first(this) + _module.TwoIntWrappers.second(this));
// TwoIntWrappers.total: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: DatatypeType :: 
    { _module.TwoIntWrappers.total($o) } 
    $Is($o, Tclass._module.TwoIntWrappers())
       ==> $Is(_module.TwoIntWrappers.total($o), Tclass._module.IntWrapper()));
// TwoIntWrappers.total: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: DatatypeType :: 
    { _module.TwoIntWrappers.total($o), $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass._module.TwoIntWrappers())
         && $IsAlloc($o, Tclass._module.TwoIntWrappers(), $h)
       ==> $IsAlloc(_module.TwoIntWrappers.total($o), Tclass._module.IntWrapper(), $h));
}

procedure {:verboseName "TwoIntWrappers.total (well-formedness)"} CheckWellFormed$$_module.TwoIntWrappers.total(this: DatatypeType
       where $Is(this, Tclass._module.TwoIntWrappers())
         && $IsAlloc(this, Tclass._module.TwoIntWrappers(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.TwoIntWrappers.plus
function _module.TwoIntWrappers.plus(this: DatatypeType, a#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.TwoIntWrappers.plus
axiom 6 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, a#0: DatatypeType :: 
    { _module.TwoIntWrappers.plus(this, a#0) } 
    _module.TwoIntWrappers.plus#canCall(this, a#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.TwoIntWrappers())
           && $Is(a#0, Tclass._module.TwoIntWrappers()))
       ==> $Is(_module.TwoIntWrappers.plus(this, a#0), Tclass._module.TwoIntWrappers()));
// definition axiom for _module.TwoIntWrappers.plus (revealed)
axiom {:id "id202"} 6 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, a#0: DatatypeType :: 
    { _module.TwoIntWrappers.plus(this, a#0) } 
    _module.TwoIntWrappers.plus#canCall(this, a#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.TwoIntWrappers())
           && $Is(a#0, Tclass._module.TwoIntWrappers()))
       ==> _module.TwoIntWrappers.TwoIntWrappers_q(this)
         && _module.TwoIntWrappers.TwoIntWrappers_q(a#0)
         && _module.IntWrapper.add#canCall(_module.TwoIntWrappers.first(this), _module.TwoIntWrappers.first(a#0))
         && _module.PairInts.add#canCall(_module.TwoIntWrappers.firstZero(this), _module.TwoIntWrappers.firstZero(a#0))
         && _module.TwoIntWrappers.plus(this, a#0)
           == #_module.TwoIntWrappers.TwoIntWrappers(_module.IntWrapper.add(_module.TwoIntWrappers.first(this), _module.TwoIntWrappers.first(a#0)), 
            _module.PairInts.second(_module.PairInts.add(_module.TwoIntWrappers.firstZero(this), _module.TwoIntWrappers.firstZero(a#0)))));
// definition axiom for _module.TwoIntWrappers.plus for all literals (revealed)
axiom {:id "id203"} 6 <= $FunctionContextHeight
   ==> (forall this: DatatypeType, a#0: DatatypeType :: 
    {:weight 3} { _module.TwoIntWrappers.plus(Lit(this), Lit(a#0)) } 
    _module.TwoIntWrappers.plus#canCall(Lit(this), Lit(a#0))
         || (6 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.TwoIntWrappers())
           && $Is(a#0, Tclass._module.TwoIntWrappers()))
       ==> _module.TwoIntWrappers.TwoIntWrappers_q(Lit(this))
         && _module.TwoIntWrappers.TwoIntWrappers_q(Lit(a#0))
         && _module.IntWrapper.add#canCall(LitInt(_module.TwoIntWrappers.first(Lit(this))), 
          LitInt(_module.TwoIntWrappers.first(Lit(a#0))))
         && _module.PairInts.add#canCall(_module.TwoIntWrappers.firstZero(Lit(this)), 
          _module.TwoIntWrappers.firstZero(Lit(a#0)))
         && _module.TwoIntWrappers.plus(Lit(this), Lit(a#0))
           == #_module.TwoIntWrappers.TwoIntWrappers(LitInt(_module.IntWrapper.add(LitInt(_module.TwoIntWrappers.first(Lit(this))), 
                LitInt(_module.TwoIntWrappers.first(Lit(a#0))))), 
            _module.PairInts.second(_module.PairInts.add(_module.TwoIntWrappers.firstZero(Lit(this)), 
                _module.TwoIntWrappers.firstZero(Lit(a#0))))));
}

function _module.TwoIntWrappers.plus#canCall(this: DatatypeType, a#0: DatatypeType) : bool;

function _module.TwoIntWrappers.plus#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.TwoIntWrappers.plus
axiom (forall this: DatatypeType, a#0: DatatypeType :: 
  { _module.TwoIntWrappers.plus#requires(this, a#0) } 
  $Is(this, Tclass._module.TwoIntWrappers())
       && $Is(a#0, Tclass._module.TwoIntWrappers())
     ==> _module.TwoIntWrappers.plus#requires(this, a#0) == true);

procedure {:verboseName "TwoIntWrappers.plus (well-formedness)"} CheckWellformed$$_module.TwoIntWrappers.plus(this: DatatypeType
       where $Is(this, Tclass._module.TwoIntWrappers())
         && $IsAlloc(this, Tclass._module.TwoIntWrappers(), $Heap), 
    a#0: DatatypeType where $Is(a#0, Tclass._module.TwoIntWrappers()))
   returns (r#0: DatatypeType);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



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

const unique tytagFamily$int2: TyTagFamily;

const unique tytagFamily$zero: TyTagFamily;

const unique tytagFamily$uint8: TyTagFamily;

const unique tytagFamily$uint32WithMethods: TyTagFamily;

const unique tytagFamily$IntWrapper: TyTagFamily;

const unique tytagFamily$int16: TyTagFamily;

const unique tytagFamily$uint32: TyTagFamily;

const unique tytagFamily$NewNat: TyTagFamily;

const unique tytagFamily$uint32_noterased: TyTagFamily;

const unique tytagFamily$another_int: TyTagFamily;

const unique tytagFamily$NestedIntWrapper: TyTagFamily;

const unique tytagFamily$UInt32Pair: TyTagFamily;

const unique tytagFamily$PairInts: TyTagFamily;

const unique tytagFamily$TwoIntWrappers: TyTagFamily;
