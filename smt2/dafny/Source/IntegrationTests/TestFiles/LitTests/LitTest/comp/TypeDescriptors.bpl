// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy

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

// Box/unbox axiom for bv21
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(21)) } 
  $IsBox(bx, TBitvector(21))
     ==> $Box($Unbox(bx): bv21) == bx && $Is($Unbox(bx): bv21, TBitvector(21)));

axiom (forall v: bv21 :: { $Is(v, TBitvector(21)) } $Is(v, TBitvector(21)));

axiom (forall v: bv21, heap: Heap :: 
  { $IsAlloc(v, TBitvector(21), heap) } 
  $IsAlloc(v, TBitvector(21), heap));

function {:bvbuiltin "bvand"} and_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvor"} or_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvxor"} xor_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvnot"} not_bv21(bv21) : bv21;

function {:bvbuiltin "bvadd"} add_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvsub"} sub_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvmul"} mul_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvudiv"} div_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvurem"} mod_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvult"} lt_bv21(bv21, bv21) : bool;

function {:bvbuiltin "bvule"} le_bv21(bv21, bv21) : bool;

function {:bvbuiltin "bvuge"} ge_bv21(bv21, bv21) : bool;

function {:bvbuiltin "bvugt"} gt_bv21(bv21, bv21) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "bvlshr"} RightShift_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv21(bv21, bv21) : bv21;

function {:bvbuiltin "(_ int2bv 21)"} nat_to_bv21(int) : bv21;

function {:bvbuiltin "bv2int"} smt_nat_from_bv21(bv21) : int;

function nat_from_bv21(bv21) : int;

axiom (forall b: bv21 :: 
  { nat_from_bv21(b) } 
  0 <= nat_from_bv21(b)
     && nat_from_bv21(b) < 2097152
     && nat_from_bv21(b) == smt_nat_from_bv21(b));

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

// Box/unbox axiom for bv191
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(191)) } 
  $IsBox(bx, TBitvector(191))
     ==> $Box($Unbox(bx): bv191) == bx && $Is($Unbox(bx): bv191, TBitvector(191)));

axiom (forall v: bv191 :: { $Is(v, TBitvector(191)) } $Is(v, TBitvector(191)));

axiom (forall v: bv191, heap: Heap :: 
  { $IsAlloc(v, TBitvector(191), heap) } 
  $IsAlloc(v, TBitvector(191), heap));

function {:bvbuiltin "bvand"} and_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvor"} or_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvxor"} xor_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvnot"} not_bv191(bv191) : bv191;

function {:bvbuiltin "bvadd"} add_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvsub"} sub_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvmul"} mul_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvudiv"} div_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvurem"} mod_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvult"} lt_bv191(bv191, bv191) : bool;

function {:bvbuiltin "bvule"} le_bv191(bv191, bv191) : bool;

function {:bvbuiltin "bvuge"} ge_bv191(bv191, bv191) : bool;

function {:bvbuiltin "bvugt"} gt_bv191(bv191, bv191) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "bvlshr"} RightShift_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv191(bv191, bv191) : bv191;

function {:bvbuiltin "(_ int2bv 191)"} nat_to_bv191(int) : bv191;

function {:bvbuiltin "bv2int"} smt_nat_from_bv191(bv191) : int;

function nat_from_bv191(bv191) : int;

axiom (forall b: bv191 :: 
  { nat_from_bv191(b) } 
  0 <= nat_from_bv191(b)
     && nat_from_bv191(b) < 3138550867693340381917894711603833208051177722232017256448
     && nat_from_bv191(b) == smt_nat_from_bv191(b));

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

procedure {:verboseName "Method (well-formedness)"} CheckWellFormed$$_module.__default.Method(_module._default.Method$G: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    g#0: Box
       where $IsBox(g#0, _module._default.Method$G)
         && $IsAllocBox(g#0, _module._default.Method$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Method (call)"} Call$$_module.__default.Method(_module._default.Method$G: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    g#0: Box
       where $IsBox(g#0, _module._default.Method$G)
         && $IsAllocBox(g#0, _module._default.Method$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Method (correctness)"} Impl$$_module.__default.Method(_module._default.Method$G: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    g#0: Box
       where $IsBox(g#0, _module._default.Method$G)
         && $IsAllocBox(g#0, _module._default.Method$G, $Heap))
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



procedure {:verboseName "MethodX (well-formedness)"} CheckWellFormed$$_module.__default.MethodX(_module._default.MethodX$G: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    g#0: Box
       where $IsBox(g#0, _module._default.MethodX$G)
         && $IsAllocBox(g#0, _module._default.MethodX$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MethodX (call)"} Call$$_module.__default.MethodX(_module._default.MethodX$G: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    g#0: Box
       where $IsBox(g#0, _module._default.MethodX$G)
         && $IsAllocBox(g#0, _module._default.MethodX$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MethodX (correctness)"} Impl$$_module.__default.MethodX(_module._default.MethodX$G: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    g#0: Box
       where $IsBox(g#0, _module._default.MethodX$G)
         && $IsAllocBox(g#0, _module._default.MethodX$G, $Heap))
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



procedure {:verboseName "Get (well-formedness)"} CheckWellFormed$$_module.__default.Get(_module._default.Get$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.Get$G)
         && $IsAllocBox(g#0, _module._default.Get$G, $Heap))
   returns (zero#0: Box
       where $IsBox(zero#0, _module._default.Get$G)
         && $IsAllocBox(zero#0, _module._default.Get$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Get (call)"} Call$$_module.__default.Get(_module._default.Get$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.Get$G)
         && $IsAllocBox(g#0, _module._default.Get$G, $Heap))
   returns (zero#0: Box
       where $IsBox(zero#0, _module._default.Get$G)
         && $IsAllocBox(zero#0, _module._default.Get$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Get (correctness)"} Impl$$_module.__default.Get(_module._default.Get$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.Get$G)
         && $IsAllocBox(g#0, _module._default.Get$G, $Heap))
   returns (zero#0: Box
       where $IsBox(zero#0, _module._default.Get$G)
         && $IsAllocBox(zero#0, _module._default.Get$G, $Heap), 
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



procedure {:verboseName "MethodChar (well-formedness)"} CheckWellFormed$$_module.__default.MethodChar(s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    ch#0: char where $Is(ch#0, TChar));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MethodChar (call)"} Call$$_module.__default.MethodChar(s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    ch#0: char where $Is(ch#0, TChar));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MethodChar (correctness)"} Impl$$_module.__default.MethodChar(s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    ch#0: char where $Is(ch#0, TChar))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MethodChar (correctness)"} Impl$$_module.__default.MethodChar(s#0: Seq, ch#0: char) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zero#0: char where $Is(zero#0, TChar);
  var $rhs##0: char;
  var g##0: char;
  var $tmp##0: Box;
  var ##ch#0: char;
  var ##ch#1: char;

    // AddMethodImpl: MethodChar, Impl$$_module.__default.MethodChar
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(17,18)
    assume true;
    // TrCallStmt: Adding lhs with type char
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := ch#0;
    call {:id "id0"} $tmp##0 := Call$$_module.__default.Get(TChar, $Box(g##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): char;
    // TrCallStmt: After ProcessCallStmt
    zero#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(18,3)
    assume true;
    assume true;
    ##ch#0 := ch#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ch#0, TChar, $Heap);
    assume _module.__default.PrCh#canCall(ch#0);
    assume _module.__default.PrCh#canCall(ch#0);
    assume true;
    ##ch#1 := zero#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ch#1, TChar, $Heap);
    assume _module.__default.PrCh#canCall(zero#0);
    assume _module.__default.PrCh#canCall(zero#0);
    assume true;
}



// function declaration for _module._default.PrCh
function _module.__default.PrCh(ch#0: char) : Seq
uses {
// consequence axiom for _module.__default.PrCh
axiom 0 <= $FunctionContextHeight
   ==> (forall ch#0: char :: 
    { _module.__default.PrCh(ch#0) } 
    _module.__default.PrCh#canCall(ch#0)
         || (0 < $FunctionContextHeight && $Is(ch#0, TChar))
       ==> $Is(_module.__default.PrCh(ch#0), TSeq(TChar)));
// definition axiom for _module.__default.PrCh (revealed)
axiom {:id "id2"} 0 <= $FunctionContextHeight
   ==> (forall ch#0: char :: 
    { _module.__default.PrCh(ch#0) } 
    _module.__default.PrCh#canCall(ch#0)
         || (0 < $FunctionContextHeight && $Is(ch#0, TChar))
       ==> _module.__default.PrCh(ch#0)
         == (if ch#0 == Lit(char#FromInt(0))
           then Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(92))), 
              $Box(char#FromInt(48))), 
            $Box(char#FromInt(39)))
           else (if ch#0 == Lit(char#FromInt(68))
             then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(68))), 
              $Box(char#FromInt(39)))
             else (if ch#0 == Lit(char#FromInt(114))
               then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(114))), 
                $Box(char#FromInt(39)))
               else Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(40))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(116))), 
                                  $Box(char#FromInt(104))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(114))), 
                            $Box(char#FromInt(32))), 
                          $Box(char#FromInt(99))), 
                        $Box(char#FromInt(104))), 
                      $Box(char#FromInt(97))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(41))), 
                $Box(char#FromInt(39)))))));
// definition axiom for _module.__default.PrCh for all literals (revealed)
axiom {:id "id3"} 0 <= $FunctionContextHeight
   ==> (forall ch#0: char :: 
    {:weight 3} { _module.__default.PrCh(Lit(ch#0)) } 
    _module.__default.PrCh#canCall(Lit(ch#0))
         || (0 < $FunctionContextHeight && $Is(ch#0, TChar))
       ==> _module.__default.PrCh(Lit(ch#0))
         == (if Lit(ch#0) == Lit(char#FromInt(0))
           then Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(92))), 
              $Box(char#FromInt(48))), 
            $Box(char#FromInt(39)))
           else (if Lit(ch#0) == Lit(char#FromInt(68))
             then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(68))), 
              $Box(char#FromInt(39)))
             else (if Lit(ch#0) == Lit(char#FromInt(114))
               then Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(114))), 
                $Box(char#FromInt(39)))
               else Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(39))), $Box(char#FromInt(40))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(116))), 
                                  $Box(char#FromInt(104))), 
                                $Box(char#FromInt(101))), 
                              $Box(char#FromInt(114))), 
                            $Box(char#FromInt(32))), 
                          $Box(char#FromInt(99))), 
                        $Box(char#FromInt(104))), 
                      $Box(char#FromInt(97))), 
                    $Box(char#FromInt(114))), 
                  $Box(char#FromInt(41))), 
                $Box(char#FromInt(39)))))));
}

function _module.__default.PrCh#canCall(ch#0: char) : bool;

function _module.__default.PrCh#requires(char) : bool;

// #requires axiom for _module.__default.PrCh
axiom (forall ch#0: char :: 
  { _module.__default.PrCh#requires(ch#0) } 
  $Is(ch#0, TChar) ==> _module.__default.PrCh#requires(ch#0) == true);

procedure {:verboseName "PrCh (well-formedness)"} CheckWellformed$$_module.__default.PrCh(ch#0: char where $Is(ch#0, TChar));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 2 == $FunctionContextHeight;
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
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.pos() : Ty
uses {
// Tclass._module.pos Tag
axiom Tag(Tclass._module.pos()) == Tagclass._module.pos
   && TagFamily(Tclass._module.pos()) == tytagFamily$pos;
}

const unique Tagclass._module.pos: TyTag;

// Box/unbox axiom for Tclass._module.pos
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.pos()) } 
  $IsBox(bx, Tclass._module.pos())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.pos()));

function Tclass._module.Hundred() : Ty
uses {
// Tclass._module.Hundred Tag
axiom Tag(Tclass._module.Hundred()) == Tagclass._module.Hundred
   && TagFamily(Tclass._module.Hundred()) == tytagFamily$Hundred;
}

const unique Tagclass._module.Hundred: TyTag;

// Box/unbox axiom for Tclass._module.Hundred
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Hundred()) } 
  $IsBox(bx, Tclass._module.Hundred())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Hundred()));

function Tclass._module.HundredOdd() : Ty
uses {
// Tclass._module.HundredOdd Tag
axiom Tag(Tclass._module.HundredOdd()) == Tagclass._module.HundredOdd
   && TagFamily(Tclass._module.HundredOdd()) == tytagFamily$HundredOdd;
}

const unique Tagclass._module.HundredOdd: TyTag;

// Box/unbox axiom for Tclass._module.HundredOdd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.HundredOdd()) } 
  $IsBox(bx, Tclass._module.HundredOdd())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.HundredOdd()));

function Tclass._module.JustOdd() : Ty
uses {
// Tclass._module.JustOdd Tag
axiom Tag(Tclass._module.JustOdd()) == Tagclass._module.JustOdd
   && TagFamily(Tclass._module.JustOdd()) == tytagFamily$JustOdd;
}

const unique Tagclass._module.JustOdd: TyTag;

// Box/unbox axiom for Tclass._module.JustOdd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.JustOdd()) } 
  $IsBox(bx, Tclass._module.JustOdd())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.JustOdd()));

function Tclass._module.AtomicShells(Ty) : Ty;

const unique Tagclass._module.AtomicShells: TyTag;

// Tclass._module.AtomicShells Tag
axiom (forall _module.AtomicShells$A: Ty :: 
  { Tclass._module.AtomicShells(_module.AtomicShells$A) } 
  Tag(Tclass._module.AtomicShells(_module.AtomicShells$A))
       == Tagclass._module.AtomicShells
     && TagFamily(Tclass._module.AtomicShells(_module.AtomicShells$A))
       == tytagFamily$AtomicShells);

function Tclass._module.AtomicShells_0(Ty) : Ty;

// Tclass._module.AtomicShells injectivity 0
axiom (forall _module.AtomicShells$A: Ty :: 
  { Tclass._module.AtomicShells(_module.AtomicShells$A) } 
  Tclass._module.AtomicShells_0(Tclass._module.AtomicShells(_module.AtomicShells$A))
     == _module.AtomicShells$A);

// Box/unbox axiom for Tclass._module.AtomicShells
axiom (forall _module.AtomicShells$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.AtomicShells(_module.AtomicShells$A)) } 
  $IsBox(bx, Tclass._module.AtomicShells(_module.AtomicShells$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.AtomicShells(_module.AtomicShells$A)));

function Tclass._module.Class(Ty, Ty) : Ty;

const unique Tagclass._module.Class: TyTag;

// Tclass._module.Class Tag
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty :: 
  { Tclass._module.Class(_module.Class$A, _module.Class$B) } 
  Tag(Tclass._module.Class(_module.Class$A, _module.Class$B))
       == Tagclass._module.Class
     && TagFamily(Tclass._module.Class(_module.Class$A, _module.Class$B))
       == tytagFamily$Class);

function Tclass._module.Class_0(Ty) : Ty;

// Tclass._module.Class injectivity 0
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty :: 
  { Tclass._module.Class(_module.Class$A, _module.Class$B) } 
  Tclass._module.Class_0(Tclass._module.Class(_module.Class$A, _module.Class$B))
     == _module.Class$A);

function Tclass._module.Class_1(Ty) : Ty;

// Tclass._module.Class injectivity 1
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty :: 
  { Tclass._module.Class(_module.Class$A, _module.Class$B) } 
  Tclass._module.Class_1(Tclass._module.Class(_module.Class$A, _module.Class$B))
     == _module.Class$B);

// Box/unbox axiom for Tclass._module.Class
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Class(_module.Class$A, _module.Class$B)) } 
  $IsBox(bx, Tclass._module.Class(_module.Class$A, _module.Class$B))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Class(_module.Class$A, _module.Class$B)));

function Tclass._module.Class?(Ty, Ty) : Ty
uses {
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty :: 
  implements$_module.Trait(Tclass._module.Class?(_module.Class$A, _module.Class$B), TSeq(_module.Class$A)));
}

const unique Tagclass._module.Class?: TyTag;

// Tclass._module.Class? Tag
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty :: 
  { Tclass._module.Class?(_module.Class$A, _module.Class$B) } 
  Tag(Tclass._module.Class?(_module.Class$A, _module.Class$B))
       == Tagclass._module.Class?
     && TagFamily(Tclass._module.Class?(_module.Class$A, _module.Class$B))
       == tytagFamily$Class);

function Tclass._module.Class?_0(Ty) : Ty;

// Tclass._module.Class? injectivity 0
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty :: 
  { Tclass._module.Class?(_module.Class$A, _module.Class$B) } 
  Tclass._module.Class?_0(Tclass._module.Class?(_module.Class$A, _module.Class$B))
     == _module.Class$A);

function Tclass._module.Class?_1(Ty) : Ty;

// Tclass._module.Class? injectivity 1
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty :: 
  { Tclass._module.Class?(_module.Class$A, _module.Class$B) } 
  Tclass._module.Class?_1(Tclass._module.Class?(_module.Class$A, _module.Class$B))
     == _module.Class$B);

// Box/unbox axiom for Tclass._module.Class?
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Class?(_module.Class$A, _module.Class$B)) } 
  $IsBox(bx, Tclass._module.Class?(_module.Class$A, _module.Class$B))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Class?(_module.Class$A, _module.Class$B)));

function Tclass._module.Record(Ty, Ty, Ty) : Ty;

const unique Tagclass._module.Record: TyTag;

// Tclass._module.Record Tag
axiom (forall _module.Record$Compiled: Ty, _module.Record$Ghost: Ty, _module.Record$Unused: Ty :: 
  { Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused) } 
  Tag(Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
       == Tagclass._module.Record
     && TagFamily(Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
       == tytagFamily$Record);

function Tclass._module.Record_0(Ty) : Ty;

// Tclass._module.Record injectivity 0
axiom (forall _module.Record$Compiled: Ty, _module.Record$Ghost: Ty, _module.Record$Unused: Ty :: 
  { Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused) } 
  Tclass._module.Record_0(Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
     == _module.Record$Compiled);

function Tclass._module.Record_1(Ty) : Ty;

// Tclass._module.Record injectivity 1
axiom (forall _module.Record$Compiled: Ty, _module.Record$Ghost: Ty, _module.Record$Unused: Ty :: 
  { Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused) } 
  Tclass._module.Record_1(Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
     == _module.Record$Ghost);

function Tclass._module.Record_2(Ty) : Ty;

// Tclass._module.Record injectivity 2
axiom (forall _module.Record$Compiled: Ty, _module.Record$Ghost: Ty, _module.Record$Unused: Ty :: 
  { Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused) } 
  Tclass._module.Record_2(Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
     == _module.Record$Unused);

// Box/unbox axiom for Tclass._module.Record
axiom (forall _module.Record$Compiled: Ty, 
    _module.Record$Ghost: Ty, 
    _module.Record$Unused: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused)) } 
  $IsBox(bx, 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused)));

function Tclass._module.TypeParameterViaClass(Ty) : Ty;

const unique Tagclass._module.TypeParameterViaClass: TyTag;

// Tclass._module.TypeParameterViaClass Tag
axiom (forall _module.TypeParameterViaClass$B: Ty :: 
  { Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B) } 
  Tag(Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
       == Tagclass._module.TypeParameterViaClass
     && TagFamily(Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
       == tytagFamily$TypeParameterViaClass);

function Tclass._module.TypeParameterViaClass_0(Ty) : Ty;

// Tclass._module.TypeParameterViaClass injectivity 0
axiom (forall _module.TypeParameterViaClass$B: Ty :: 
  { Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B) } 
  Tclass._module.TypeParameterViaClass_0(Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
     == _module.TypeParameterViaClass$B);

// Box/unbox axiom for Tclass._module.TypeParameterViaClass
axiom (forall _module.TypeParameterViaClass$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B)) } 
  $IsBox(bx, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B)));

function Tclass._module.TypeParameterViaDatatype(Ty) : Ty;

const unique Tagclass._module.TypeParameterViaDatatype: TyTag;

// Tclass._module.TypeParameterViaDatatype Tag
axiom (forall _module.TypeParameterViaDatatype$B: Ty :: 
  { Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B) } 
  Tag(Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
       == Tagclass._module.TypeParameterViaDatatype
     && TagFamily(Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
       == tytagFamily$TypeParameterViaDatatype);

function Tclass._module.TypeParameterViaDatatype_0(Ty) : Ty;

// Tclass._module.TypeParameterViaDatatype injectivity 0
axiom (forall _module.TypeParameterViaDatatype$B: Ty :: 
  { Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B) } 
  Tclass._module.TypeParameterViaDatatype_0(Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
     == _module.TypeParameterViaDatatype$B);

// Box/unbox axiom for Tclass._module.TypeParameterViaDatatype
axiom (forall _module.TypeParameterViaDatatype$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B)) } 
  $IsBox(bx, Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B)));

function Tclass._module.Stream(Ty) : Ty;

const unique Tagclass._module.Stream: TyTag;

// Tclass._module.Stream Tag
axiom (forall _module.Stream$B: Ty :: 
  { Tclass._module.Stream(_module.Stream$B) } 
  Tag(Tclass._module.Stream(_module.Stream$B)) == Tagclass._module.Stream
     && TagFamily(Tclass._module.Stream(_module.Stream$B)) == tytagFamily$Stream);

function Tclass._module.Stream_0(Ty) : Ty;

// Tclass._module.Stream injectivity 0
axiom (forall _module.Stream$B: Ty :: 
  { Tclass._module.Stream(_module.Stream$B) } 
  Tclass._module.Stream_0(Tclass._module.Stream(_module.Stream$B))
     == _module.Stream$B);

// Box/unbox axiom for Tclass._module.Stream
axiom (forall _module.Stream$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream(_module.Stream$B)) } 
  $IsBox(bx, Tclass._module.Stream(_module.Stream$B))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream(_module.Stream$B)));

function Tclass._module.Trait?(Ty) : Ty;

const unique Tagclass._module.Trait?: TyTag;

// Tclass._module.Trait? Tag
axiom (forall _module.Trait$T: Ty :: 
  { Tclass._module.Trait?(_module.Trait$T) } 
  Tag(Tclass._module.Trait?(_module.Trait$T)) == Tagclass._module.Trait?
     && TagFamily(Tclass._module.Trait?(_module.Trait$T)) == tytagFamily$Trait);

function Tclass._module.Trait?_0(Ty) : Ty;

// Tclass._module.Trait? injectivity 0
axiom (forall _module.Trait$T: Ty :: 
  { Tclass._module.Trait?(_module.Trait$T) } 
  Tclass._module.Trait?_0(Tclass._module.Trait?(_module.Trait$T))
     == _module.Trait$T);

// Box/unbox axiom for Tclass._module.Trait?
axiom (forall _module.Trait$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Trait?(_module.Trait$T)) } 
  $IsBox(bx, Tclass._module.Trait?(_module.Trait$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Trait?(_module.Trait$T)));

function _module.__default.IntBoolFunctionPartial#Handle() : HandleType;

// function declaration for _module._default.IntBoolFunctionPartial
function _module.__default.IntBoolFunctionPartial(x#0: int) : bool
uses {
// definition axiom for _module.__default.IntBoolFunctionPartial (revealed)
axiom {:id "id81"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.IntBoolFunctionPartial(x#0) } 
    _module.__default.IntBoolFunctionPartial#canCall(x#0)
         || (0 < $FunctionContextHeight && x#0 < 67)
       ==> _module.__default.IntBoolFunctionPartial(x#0)
         == 
        (Mod(x#0, LitInt(2))
         == LitInt(0)));
// definition axiom for _module.__default.IntBoolFunctionPartial for all literals (revealed)
axiom {:id "id82"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.IntBoolFunctionPartial(LitInt(x#0)) } 
    _module.__default.IntBoolFunctionPartial#canCall(LitInt(x#0))
         || (0 < $FunctionContextHeight && Lit(x#0 < 67))
       ==> _module.__default.IntBoolFunctionPartial(LitInt(x#0))
         == 
        (LitInt(Mod(x#0, LitInt(2)))
         == LitInt(0)));
}

function _module.__default.IntBoolFunctionPartial#canCall(x#0: int) : bool;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(TInt, TBool, $heap, _module.__default.IntBoolFunctionPartial#Handle(), $fh$0x#0) } 
  Apply1(TInt, TBool, $heap, _module.__default.IntBoolFunctionPartial#Handle(), $fh$0x#0)
     == $Box(_module.__default.IntBoolFunctionPartial($Unbox($fh$0x#0): int)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(TInt, TBool, $heap, _module.__default.IntBoolFunctionPartial#Handle(), $fh$0x#0) } 
  Requires1(TInt, TBool, $heap, _module.__default.IntBoolFunctionPartial#Handle(), $fh$0x#0)
     == _module.__default.IntBoolFunctionPartial#requires($Unbox($fh$0x#0): int));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(TInt, TBool, $heap, _module.__default.IntBoolFunctionPartial#Handle(), $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(TInt, TBool, $heap, _module.__default.IntBoolFunctionPartial#Handle(), $fh$0x#0), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: int :: 
  { _module.__default.IntBoolFunctionPartial($fh$0x#0), $IsGoodHeap($heap) } 
  _module.__default.IntBoolFunctionPartial($fh$0x#0)
     == $Unbox(Apply1(TInt, 
        TBool, 
        $heap, 
        _module.__default.IntBoolFunctionPartial#Handle(), 
        $Box($fh$0x#0))): bool);

function _module.__default.IntBoolFunctionReads#Handle() : HandleType;

// function declaration for _module._default.IntBoolFunctionReads
function _module.__default.IntBoolFunctionReads($heap: Heap, a#0: ref) : bool
uses {
// definition axiom for _module.__default.IntBoolFunctionReads (revealed)
axiom {:id "id86"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, a#0: ref :: 
    { _module.__default.IntBoolFunctionReads($Heap, a#0), $IsGoodHeap($Heap) } 
    _module.__default.IntBoolFunctionReads#canCall($Heap, a#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(a#0, Tclass._System.array?(TInt))
           && a#0 != null)
       ==> _module.__default.IntBoolFunctionReads($Heap, a#0) == Lit(true));
}

function _module.__default.IntBoolFunctionReads#canCall($heap: Heap, a#0: ref) : bool;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass._System.array?(TInt), 
      TBool, 
      $heap, 
      _module.__default.IntBoolFunctionReads#Handle(), 
      $fh$0x#0) } 
  Apply1(Tclass._System.array?(TInt), 
      TBool, 
      $heap, 
      _module.__default.IntBoolFunctionReads#Handle(), 
      $fh$0x#0)
     == $Box(_module.__default.IntBoolFunctionReads($heap, $Unbox($fh$0x#0): ref)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass._System.array?(TInt), 
      TBool, 
      $heap, 
      _module.__default.IntBoolFunctionReads#Handle(), 
      $fh$0x#0) } 
  Requires1(Tclass._System.array?(TInt), 
      TBool, 
      $heap, 
      _module.__default.IntBoolFunctionReads#Handle(), 
      $fh$0x#0)
     == _module.__default.IntBoolFunctionReads#requires($heap, $Unbox($fh$0x#0): ref));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.array?(TInt), 
        TBool, 
        $heap, 
        _module.__default.IntBoolFunctionReads#Handle(), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.array?(TInt), 
        TBool, 
        $heap, 
        _module.__default.IntBoolFunctionReads#Handle(), 
        $fh$0x#0), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $Unbox($fh$0x#0): ref));

axiom (forall $heap: Heap, $fh$0x#0: ref :: 
  { _module.__default.IntBoolFunctionReads($heap, $fh$0x#0) } 
  _module.__default.IntBoolFunctionReads($heap, $fh$0x#0)
     == $Unbox(Apply1(Tclass._System.array?(TInt), 
        TBool, 
        $heap, 
        _module.__default.IntBoolFunctionReads#Handle(), 
        $Box($fh$0x#0))): bool);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s##0: Seq;
  var g##0: int;
  var s##1: Seq;
  var g##1: bool;
  var s##2: Seq;
  var ch##0: char;
  var s##3: Seq;
  var g##2: real;
  var ord#0: Box;
  var s##4: Seq;
  var g##3: Bv0;
  var newtype$check#0: int;
  var s##5: Seq;
  var g##4: bv21;
  var newtype$check#1: int;
  var s##6: Seq;
  var g##5: bv32;
  var newtype$check#2: int;
  var s##7: Seq;
  var g##6: bv191;
  var newtype$check#3: int;
  var s##8: Seq;
  var g##7: Set;
  var s##9: Seq;
  var g##8: MultiSet;
  var s##10: Seq;
  var g##9: Seq;
  var s##11: Seq;
  var g##10: Map;
  var s##12: Seq;
  var g##11: int;
  var newtype$check#4: int;
  var newtype$check#5: int;
  var s##13: Seq;
  var g##12: int;
  var newtype$check#6: int;
  var newtype$check#7: int;
  var s##14: Seq;
  var g##13: int;
  var newtype$check#8: int;
  var newtype$check#9: int;
  var s##15: Seq;
  var g##14: int;
  var newtype$check#10: int;
  var newtype$check#11: int;
  var s##16: Seq;
  var g##15: DatatypeType;
  var s##17: Seq;
  var g##16: DatatypeType;
  var s##18: Seq;
  var g##17: DatatypeType;
  var newtype$check#12: int;
  var newtype$check#13: int;
  var s##19: Seq;
  var g##18: DatatypeType;
  var s##20: Seq;
  var g##19: DatatypeType;
  var s##21: Seq;
  var g##20: DatatypeType;
  var newtype$check#14: int;
  var newtype$check#15: int;
  var defass#u#0: bool;
  var u#0: ref
     where defass#u#0
       ==> $Is(u#0, Tclass._module.Class(TInt, TInt))
         && $IsAlloc(u#0, Tclass._module.Class(TInt, TInt), $Heap);
  var $nw: ref;
  var s##22: Seq;
  var g##21: DatatypeType;
  var ##x#0: int;
  var s##23: Seq;
  var a##0: int;
  var defass#cc#0: bool;
  var cc#0: ref
     where defass#cc#0
       ==> $Is(cc#0, Tclass._module.TypeParameterViaClass(TInt))
         && $IsAlloc(cc#0, Tclass._module.TypeParameterViaClass(TInt), $Heap);
  var s##24: Seq;
  var b##0: int;
  var dd#0: DatatypeType
     where $Is(dd#0, Tclass._module.TypeParameterViaDatatype(TSet(TInt)))
       && $IsAlloc(dd#0, Tclass._module.TypeParameterViaDatatype(TSet(TInt)), $Heap);
  var b##1: Set;
  var obj#0: ref
     where $Is(obj#0, Tclass._System.object?())
       && $IsAlloc(obj#0, Tclass._System.object?(), $Heap);
  var s##25: Seq;
  var g##22: ref;
  var uh#0: ref
     where $Is(uh#0, 
        Tclass._module.Class?(Tclass._module.pos(), Tclass._module.Stream(Tclass._System.nat())))
       && $IsAlloc(uh#0, 
        Tclass._module.Class?(Tclass._module.pos(), Tclass._module.Stream(Tclass._System.nat())), 
        $Heap);
  var vh#0: ref
     where $Is(vh#0, Tclass._module.Trait?(TSeq(Tclass._module.pos())))
       && $IsAlloc(vh#0, Tclass._module.Trait?(TSeq(Tclass._module.pos())), $Heap);
  var s##26: Seq;
  var g##23: ref;
  var s##27: Seq;
  var g##24: ref;
  var arr#0: ref
     where $Is(arr#0, Tclass._System.array?(TBool))
       && $IsAlloc(arr#0, Tclass._System.array?(TBool), $Heap);
  var mat#0: ref
     where $Is(mat#0, Tclass._System.array2?(TBool))
       && $IsAlloc(mat#0, Tclass._System.array2?(TBool), $Heap);
  var s##28: Seq;
  var g##25: ref;
  var s##29: Seq;
  var g##26: ref;
  var s##30: Seq;
  var g##27: HandleType;
  var s##31: Seq;
  var g##28: HandleType;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(30,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(110))), 
        $Box(char#FromInt(116))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := LitInt(8);
    call {:id "id8"} Call$$_module.__default.Method(TInt, s##0, $Box(g##0));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(31,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(111))), 
          $Box(char#FromInt(111))), 
        $Box(char#FromInt(108))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##1 := Lit(true);
    call {:id "id9"} Call$$_module.__default.Method(TBool, s##1, $Box(g##1));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(32,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(99))), $Box(char#FromInt(104))), 
          $Box(char#FromInt(97))), 
        $Box(char#FromInt(114))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    ch##0 := Lit(char#FromInt(114));
    call {:id "id10"} Call$$_module.__default.MethodChar(s##2, ch##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(33,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(114))), $Box(char#FromInt(101))), 
          $Box(char#FromInt(97))), 
        $Box(char#FromInt(108))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##2 := LitReal(1618e-3);
    call {:id "id11"} Call$$_module.__default.Method(TReal, s##3, $Box(g##2));
    // TrCallStmt: After ProcessCallStmt
    havoc ord#0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(35,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(36,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##4 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(118))), 
        $Box(char#FromInt(48))));
    newtype$check#0 := LitInt(0);
    assert {:id "id12"} 0 <= newtype$check#0 && newtype$check#0 < 1;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##3 := 0;
    call {:id "id13"} Call$$_module.__default.Method(TBitvector(0), s##4, $Box(g##3));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(37,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(118))), 
          $Box(char#FromInt(50))), 
        $Box(char#FromInt(49))));
    newtype$check#1 := LitInt(121);
    assert {:id "id14"} 0 <= newtype$check#1 && newtype$check#1 < 2097152;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##4 := 121bv21;
    call {:id "id15"} Call$$_module.__default.Method(TBitvector(21), s##5, $Box(g##4));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(38,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##6 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(118))), 
          $Box(char#FromInt(51))), 
        $Box(char#FromInt(50))));
    newtype$check#2 := LitInt(132);
    assert {:id "id16"} 0 <= newtype$check#2 && newtype$check#2 < 4294967296;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##5 := 132bv32;
    call {:id "id17"} Call$$_module.__default.Method(TBitvector(32), s##6, $Box(g##5));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(39,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##7 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(98))), $Box(char#FromInt(118))), 
            $Box(char#FromInt(49))), 
          $Box(char#FromInt(57))), 
        $Box(char#FromInt(49))));
    newtype$check#3 := LitInt(191);
    assert {:id "id18"} 0 <= newtype$check#3
       && newtype$check#3 < 3138550867693340381917894711603833208051177722232017256448;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##6 := 191bv191;
    call {:id "id19"} Call$$_module.__default.Method(TBitvector(191), s##7, $Box(g##6));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(42,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##8 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(101))), 
                  $Box(char#FromInt(116))), 
                $Box(char#FromInt(60))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##7 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(7))));
    call {:id "id20"} Call$$_module.__default.Method(TSet(TInt), s##8, $Box(g##7));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(43,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##9 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(109))), $Box(char#FromInt(117))), 
                            $Box(char#FromInt(108))), 
                          $Box(char#FromInt(116))), 
                        $Box(char#FromInt(105))), 
                      $Box(char#FromInt(115))), 
                    $Box(char#FromInt(101))), 
                  $Box(char#FromInt(116))), 
                $Box(char#FromInt(60))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##8 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(7))), $Box(LitInt(7))));
    call {:id "id21"} Call$$_module.__default.Method(TMultiSet(TInt), s##9, $Box(g##8));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(44,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##10 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(115))), $Box(char#FromInt(101))), 
                  $Box(char#FromInt(113))), 
                $Box(char#FromInt(60))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##9 := Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(7))));
    call {:id "id22"} Call$$_module.__default.Method(TSeq(TInt), s##10, $Box(g##9));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(45,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##11 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(109))), $Box(char#FromInt(97))), 
                            $Box(char#FromInt(112))), 
                          $Box(char#FromInt(60))), 
                        $Box(char#FromInt(105))), 
                      $Box(char#FromInt(110))), 
                    $Box(char#FromInt(116))), 
                  $Box(char#FromInt(44))), 
                $Box(char#FromInt(32))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(110))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##10 := Lit(Map#Build(Map#Empty(): Map, $Box(LitInt(2)), $Box(LitInt(7))));
    call {:id "id23"} Call$$_module.__default.Method(TMap(TInt, TInt), s##11, $Box(g##10));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(48,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##12 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(112))), $Box(char#FromInt(111))), 
        $Box(char#FromInt(115))));
    newtype$check#4 := LitInt(3);
    assert {:id "id24"} LitInt(1) <= newtype$check#4;
    newtype$check#5 := LitInt(3);
    assert {:id "id25"} LitInt(1) <= newtype$check#5;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##11 := LitInt(3);
    call {:id "id26"} Call$$_module.__default.Method(Tclass._module.pos(), s##12, $Box(g##11));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(51,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##13 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(72))), $Box(char#FromInt(117))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(100))), 
            $Box(char#FromInt(114))), 
          $Box(char#FromInt(101))), 
        $Box(char#FromInt(100))));
    newtype$check#6 := LitInt(6);
    assert {:id "id27"} LitInt(0) <= newtype$check#6 && newtype$check#6 < 100;
    newtype$check#7 := LitInt(6);
    assert {:id "id28"} LitInt(0) <= newtype$check#7 && newtype$check#7 < 100;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##12 := LitInt(6);
    call {:id "id29"} Call$$_module.__default.Method(Tclass._module.Hundred(), s##13, $Box(g##12));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(52,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##14 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(72))), $Box(char#FromInt(117))), 
                      $Box(char#FromInt(110))), 
                    $Box(char#FromInt(100))), 
                  $Box(char#FromInt(114))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(100))), 
            $Box(char#FromInt(79))), 
          $Box(char#FromInt(100))), 
        $Box(char#FromInt(100))));
    newtype$check#8 := LitInt(13);
    assert {:id "id30"} LitInt(0) <= newtype$check#8
       && newtype$check#8 < 100
       && Mod(newtype$check#8, LitInt(2)) == LitInt(1);
    newtype$check#9 := LitInt(13);
    assert {:id "id31"} LitInt(0) <= newtype$check#9
       && newtype$check#9 < 100
       && Mod(newtype$check#9, LitInt(2)) == LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##13 := LitInt(13);
    call {:id "id32"} Call$$_module.__default.Method(Tclass._module.HundredOdd(), s##14, $Box(g##13));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(53,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##15 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(74))), $Box(char#FromInt(117))), 
                $Box(char#FromInt(115))), 
              $Box(char#FromInt(116))), 
            $Box(char#FromInt(79))), 
          $Box(char#FromInt(100))), 
        $Box(char#FromInt(100))));
    newtype$check#10 := LitInt(131);
    assert {:id "id33"} Mod(newtype$check#10, LitInt(2)) == LitInt(1);
    newtype$check#11 := LitInt(131);
    assert {:id "id34"} Mod(newtype$check#11, LitInt(2)) == LitInt(1);
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##14 := LitInt(131);
    call {:id "id35"} Call$$_module.__default.Method(Tclass._module.JustOdd(), s##15, $Box(g##14));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(56,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##16 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(40))), $Box(char#FromInt(41))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##15 := Lit(#_System._tuple#0._#Make0());
    call {:id "id36"} Call$$_module.__default.Method(Tclass._System.Tuple0(), s##16, $Box(g##15));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(57,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##17 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(40))), $Box(char#FromInt(105))), 
                        $Box(char#FromInt(110))), 
                      $Box(char#FromInt(116))), 
                    $Box(char#FromInt(44))), 
                  $Box(char#FromInt(32))), 
                $Box(char#FromInt(114))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(97))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(41))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##16 := Lit(#_System._tuple#2._#Make2($Box(LitInt(2)), $Box(LitReal(32e-1))));
    call {:id "id37"} Call$$_module.__default.Method(Tclass._System.Tuple2(TInt, TReal), s##17, $Box(g##16));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(58,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##18 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(40))), $Box(char#FromInt(105))), 
                      $Box(char#FromInt(110))), 
                    $Box(char#FromInt(116))), 
                  $Box(char#FromInt(44))), 
                $Box(char#FromInt(32))), 
              $Box(char#FromInt(112))), 
            $Box(char#FromInt(111))), 
          $Box(char#FromInt(115))), 
        $Box(char#FromInt(41))));
    newtype$check#12 := LitInt(3);
    assert {:id "id38"} LitInt(1) <= newtype$check#12;
    newtype$check#13 := LitInt(3);
    assert {:id "id39"} LitInt(1) <= newtype$check#13;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##17 := Lit(#_System._tuple#2._#Make2($Box(LitInt(2)), $Box(LitInt(3))));
    call {:id "id40"} Call$$_module.__default.Method(Tclass._System.Tuple2(TInt, Tclass._module.pos()), s##18, $Box(g##17));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(61,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##19 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(65))), $Box(char#FromInt(116))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(109))), 
                                  $Box(char#FromInt(105))), 
                                $Box(char#FromInt(99))), 
                              $Box(char#FromInt(83))), 
                            $Box(char#FromInt(104))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(108))), 
                    $Box(char#FromInt(115))), 
                  $Box(char#FromInt(60))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(111))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##18 := Lit(#_module.AtomicShells.Atom($Box(Lit(true))));
    call {:id "id41"} Call$$_module.__default.Method(Tclass._module.AtomicShells(TBool), s##19, $Box(g##18));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(62,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##20 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(65))), $Box(char#FromInt(116))), 
                                                                $Box(char#FromInt(111))), 
                                                              $Box(char#FromInt(109))), 
                                                            $Box(char#FromInt(105))), 
                                                          $Box(char#FromInt(99))), 
                                                        $Box(char#FromInt(83))), 
                                                      $Box(char#FromInt(104))), 
                                                    $Box(char#FromInt(101))), 
                                                  $Box(char#FromInt(108))), 
                                                $Box(char#FromInt(108))), 
                                              $Box(char#FromInt(115))), 
                                            $Box(char#FromInt(60))), 
                                          $Box(char#FromInt(65))), 
                                        $Box(char#FromInt(116))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(109))), 
                                  $Box(char#FromInt(105))), 
                                $Box(char#FromInt(99))), 
                              $Box(char#FromInt(83))), 
                            $Box(char#FromInt(104))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(108))), 
                    $Box(char#FromInt(115))), 
                  $Box(char#FromInt(60))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(110))), 
            $Box(char#FromInt(116))), 
          $Box(char#FromInt(62))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##19 := Lit(#_module.AtomicShells.Atom($Box(Lit(#_module.AtomicShells.Atom($Box(LitInt(3)))))));
    call {:id "id42"} Call$$_module.__default.Method(Tclass._module.AtomicShells(Tclass._module.AtomicShells(TInt)), s##20, $Box(g##19));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(63,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##21 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(65))), $Box(char#FromInt(116))), 
                                                                $Box(char#FromInt(111))), 
                                                              $Box(char#FromInt(109))), 
                                                            $Box(char#FromInt(105))), 
                                                          $Box(char#FromInt(99))), 
                                                        $Box(char#FromInt(83))), 
                                                      $Box(char#FromInt(104))), 
                                                    $Box(char#FromInt(101))), 
                                                  $Box(char#FromInt(108))), 
                                                $Box(char#FromInt(108))), 
                                              $Box(char#FromInt(115))), 
                                            $Box(char#FromInt(60))), 
                                          $Box(char#FromInt(65))), 
                                        $Box(char#FromInt(116))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(109))), 
                                  $Box(char#FromInt(105))), 
                                $Box(char#FromInt(99))), 
                              $Box(char#FromInt(83))), 
                            $Box(char#FromInt(104))), 
                          $Box(char#FromInt(101))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(108))), 
                    $Box(char#FromInt(115))), 
                  $Box(char#FromInt(60))), 
                $Box(char#FromInt(112))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(62))), 
        $Box(char#FromInt(62))));
    newtype$check#14 := LitInt(3);
    assert {:id "id43"} LitInt(1) <= newtype$check#14;
    newtype$check#15 := LitInt(3);
    assert {:id "id44"} LitInt(1) <= newtype$check#15;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##20 := Lit(#_module.AtomicShells.Atom($Box(Lit(#_module.AtomicShells.Atom($Box(LitInt(3)))))));
    call {:id "id45"} Call$$_module.__default.Method(Tclass._module.AtomicShells(Tclass._module.AtomicShells(Tclass._module.pos())), s##21, $Box(g##20));
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(64,16)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Class?(TInt, TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    u#0 := $nw;
    defass#u#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(65,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##22 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(82))), $Box(char#FromInt(101))), 
                                                                                                $Box(char#FromInt(99))), 
                                                                                              $Box(char#FromInt(111))), 
                                                                                            $Box(char#FromInt(114))), 
                                                                                          $Box(char#FromInt(100))), 
                                                                                        $Box(char#FromInt(60))), 
                                                                                      $Box(char#FromInt(105))), 
                                                                                    $Box(char#FromInt(110))), 
                                                                                  $Box(char#FromInt(116))), 
                                                                                $Box(char#FromInt(44))), 
                                                                              $Box(char#FromInt(32))), 
                                                                            $Box(char#FromInt(67))), 
                                                                          $Box(char#FromInt(108))), 
                                                                        $Box(char#FromInt(97))), 
                                                                      $Box(char#FromInt(115))), 
                                                                    $Box(char#FromInt(115))), 
                                                                  $Box(char#FromInt(60))), 
                                                                $Box(char#FromInt(105))), 
                                                              $Box(char#FromInt(110))), 
                                                            $Box(char#FromInt(116))), 
                                                          $Box(char#FromInt(44))), 
                                                        $Box(char#FromInt(32))), 
                                                      $Box(char#FromInt(105))), 
                                                    $Box(char#FromInt(110))), 
                                                  $Box(char#FromInt(116))), 
                                                $Box(char#FromInt(62))), 
                                              $Box(char#FromInt(44))), 
                                            $Box(char#FromInt(32))), 
                                          $Box(char#FromInt(67))), 
                                        $Box(char#FromInt(108))), 
                                      $Box(char#FromInt(97))), 
                                    $Box(char#FromInt(115))), 
                                  $Box(char#FromInt(115))), 
                                $Box(char#FromInt(60))), 
                              $Box(char#FromInt(114))), 
                            $Box(char#FromInt(101))), 
                          $Box(char#FromInt(97))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(44))), 
                    $Box(char#FromInt(32))), 
                  $Box(char#FromInt(114))), 
                $Box(char#FromInt(101))), 
              $Box(char#FromInt(97))), 
            $Box(char#FromInt(108))), 
          $Box(char#FromInt(62))), 
        $Box(char#FromInt(62))));
    assert {:id "id47"} defass#u#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##21 := #_module.Record.SimpleRecord($Box(LitInt(5)), $Box(u#0));
    call {:id "id48"} Call$$_module.__default.Method(Tclass._module.Record(TInt, Tclass._module.Class?(TInt, TInt), Tclass._module.Class(TReal, TReal)), s##22, $Box(g##21));
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(68,3)
    assume true;
    ##x#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.__default.Up#canCall(LitInt(0));
    assume _module.Stream.More_q(Lit(_module.__default.Up($LS($LZ), LitInt(0))));
    assume _module.__default.Up#canCall(LitInt(0));
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(72,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##23 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(110))), 
        $Box(char#FromInt(116))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := LitInt(15);
    call {:id "id49"} Call$$_module.__default.TypeParameterViaMember(TInt, s##23, $Box(a##0));
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(73,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(73,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##24 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(110))), 
        $Box(char#FromInt(116))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := LitInt(16);
    call {:id "id50"} $nw := Call$$_module.TypeParameterViaClass.__ctor(TInt, s##24, $Box(b##0));
    // TrCallStmt: After ProcessCallStmt
    cc#0 := $nw;
    defass#cc#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(74,14)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id52"} defass#cc#0;
    assume true;
    assert {:id "id53"} cc#0 != null;
    call {:id "id54"} Call$$_module.TypeParameterViaClass.ItIsTime(TInt, cc#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(75,10)
    assume true;
    assume true;
    dd#0 := Lit(#_module.TypeParameterViaDatatype.TPVD());
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(76,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##1 := Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(14))));
    call {:id "id56"} Call$$_module.TypeParameterViaDatatype.CallMethod(TSet(TInt), dd#0, $Box(b##1));
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(78,20)
    assume true;
    havoc $nw;
    assume $nw != null;
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    obj#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(79,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##25 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(111))), $Box(char#FromInt(98))), 
                $Box(char#FromInt(106))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(99))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(63))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##22 := obj#0;
    call {:id "id58"} Call$$_module.__default.MethodX(Tclass._System.object?(), s##25, $Box(g##22));
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(81,18)
    assume true;
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._module.Class?(Tclass._module.pos(), Tclass._module.Stream(Tclass._System.nat())));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    uh#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(82,18)
    assume true;
    assume true;
    vh#0 := uh#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(83,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##26 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(67))), $Box(char#FromInt(108))), 
                                                  $Box(char#FromInt(97))), 
                                                $Box(char#FromInt(115))), 
                                              $Box(char#FromInt(115))), 
                                            $Box(char#FromInt(63))), 
                                          $Box(char#FromInt(60))), 
                                        $Box(char#FromInt(112))), 
                                      $Box(char#FromInt(111))), 
                                    $Box(char#FromInt(115))), 
                                  $Box(char#FromInt(44))), 
                                $Box(char#FromInt(32))), 
                              $Box(char#FromInt(83))), 
                            $Box(char#FromInt(116))), 
                          $Box(char#FromInt(114))), 
                        $Box(char#FromInt(101))), 
                      $Box(char#FromInt(97))), 
                    $Box(char#FromInt(109))), 
                  $Box(char#FromInt(60))), 
                $Box(char#FromInt(110))), 
              $Box(char#FromInt(97))), 
            $Box(char#FromInt(116))), 
          $Box(char#FromInt(62))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##23 := uh#0;
    call {:id "id61"} Call$$_module.__default.MethodX(Tclass._module.Class?(Tclass._module.pos(), Tclass._module.Stream(Tclass._System.nat())), s##26, $Box(g##23));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(84,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##27 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(84))), $Box(char#FromInt(114))), 
                                  $Box(char#FromInt(97))), 
                                $Box(char#FromInt(105))), 
                              $Box(char#FromInt(116))), 
                            $Box(char#FromInt(63))), 
                          $Box(char#FromInt(60))), 
                        $Box(char#FromInt(115))), 
                      $Box(char#FromInt(101))), 
                    $Box(char#FromInt(113))), 
                  $Box(char#FromInt(60))), 
                $Box(char#FromInt(112))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(115))), 
          $Box(char#FromInt(62))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##24 := vh#0;
    call {:id "id62"} Call$$_module.__default.MethodX(Tclass._module.Trait?(TSeq(Tclass._module.pos())), s##27, $Box(g##24));
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(86,25)
    assume true;
    assert {:id "id63"} 0 <= LitInt(25);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TBool));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(25);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    arr#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(87,26)
    assume true;
    assert {:id "id65"} 0 <= LitInt(25);
    assert {:id "id66"} 0 <= LitInt(20);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TBool));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(25);
    assume _System.array2.Length1($nw) == LitInt(20);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    mat#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(88,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##28 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))), $Box(char#FromInt(114))), 
                          $Box(char#FromInt(114))), 
                        $Box(char#FromInt(97))), 
                      $Box(char#FromInt(121))), 
                    $Box(char#FromInt(63))), 
                  $Box(char#FromInt(60))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(111))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##25 := arr#0;
    call {:id "id68"} Call$$_module.__default.MethodX(Tclass._System.array?(TBool), s##28, $Box(g##25));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(89,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##29 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))), $Box(char#FromInt(114))), 
                            $Box(char#FromInt(114))), 
                          $Box(char#FromInt(97))), 
                        $Box(char#FromInt(121))), 
                      $Box(char#FromInt(50))), 
                    $Box(char#FromInt(63))), 
                  $Box(char#FromInt(60))), 
                $Box(char#FromInt(98))), 
              $Box(char#FromInt(111))), 
            $Box(char#FromInt(111))), 
          $Box(char#FromInt(108))), 
        $Box(char#FromInt(62))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##26 := mat#0;
    call {:id "id69"} Call$$_module.__default.MethodX(Tclass._System.array2?(TBool), s##29, $Box(g##26));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(93,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##30 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(110))), 
                          $Box(char#FromInt(116))), 
                        $Box(char#FromInt(32))), 
                      $Box(char#FromInt(45))), 
                    $Box(char#FromInt(45))), 
                  $Box(char#FromInt(62))), 
                $Box(char#FromInt(32))), 
              $Box(char#FromInt(98))), 
            $Box(char#FromInt(111))), 
          $Box(char#FromInt(111))), 
        $Box(char#FromInt(108))));
    assert {:id "id70"} 0 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##27 := _module.__default.IntBoolFunctionPartial#Handle();
    call {:id "id71"} Call$$_module.__default.MethodX(Tclass._System.___hPartialFunc1(TInt, TBool), s##30, $Box(g##27));
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(94,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##31 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(97))), $Box(char#FromInt(114))), 
                                        $Box(char#FromInt(114))), 
                                      $Box(char#FromInt(97))), 
                                    $Box(char#FromInt(121))), 
                                  $Box(char#FromInt(63))), 
                                $Box(char#FromInt(60))), 
                              $Box(char#FromInt(105))), 
                            $Box(char#FromInt(110))), 
                          $Box(char#FromInt(116))), 
                        $Box(char#FromInt(62))), 
                      $Box(char#FromInt(32))), 
                    $Box(char#FromInt(126))), 
                  $Box(char#FromInt(62))), 
                $Box(char#FromInt(32))), 
              $Box(char#FromInt(98))), 
            $Box(char#FromInt(111))), 
          $Box(char#FromInt(111))), 
        $Box(char#FromInt(108))));
    assert {:id "id72"} 0 != $FunctionContextHeight;
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##28 := _module.__default.IntBoolFunctionReads#Handle();
    call {:id "id73"} Call$$_module.__default.MethodX(Tclass._System.___hFunc1(Tclass._System.array?(TInt), TBool), s##31, $Box(g##28));
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TypeParameterViaMember (well-formedness)"} CheckWellFormed$$_module.__default.TypeParameterViaMember(_module._default.TypeParameterViaMember$A: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.TypeParameterViaMember$A)
         && $IsAllocBox(a#0, _module._default.TypeParameterViaMember$A, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeParameterViaMember (call)"} Call$$_module.__default.TypeParameterViaMember(_module._default.TypeParameterViaMember$A: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.TypeParameterViaMember$A)
         && $IsAllocBox(a#0, _module._default.TypeParameterViaMember$A, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeParameterViaMember (correctness)"} Impl$$_module.__default.TypeParameterViaMember(_module._default.TypeParameterViaMember$A: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    a#0: Box
       where $IsBox(a#0, _module._default.TypeParameterViaMember$A)
         && $IsAllocBox(a#0, _module._default.TypeParameterViaMember$A, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeParameterViaMember (correctness)"} Impl$$_module.__default.TypeParameterViaMember(_module._default.TypeParameterViaMember$A: Ty, s#0: Seq, a#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s##0: Seq;
  var g##0: Box;

    // AddMethodImpl: TypeParameterViaMember, Impl$$_module.__default.TypeParameterViaMember
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(98,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Seq#Append(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(65))), $Box(char#FromInt(61))), 
      s#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := a#0;
    call {:id "id74"} Call$$_module.__default.Method(_module._default.TypeParameterViaMember$A, s##0, g##0);
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.Up
function _module.__default.Up($ly: LayerType, x#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Up
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: int :: 
    { _module.__default.Up($ly, x#0) } 
    _module.__default.Up#canCall(x#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Up($ly, x#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Up (revealed)
axiom {:id "id75"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: int :: 
    { _module.__default.Up($LS($ly), x#0) } 
    _module.__default.Up#canCall(x#0) || 1 < $FunctionContextHeight
       ==> _module.__default.Up#canCall(x#0 + 1)
         && _module.__default.Up($LS($ly), x#0)
           == #_module.Stream.More($Box(x#0), _module.__default.Up($ly, x#0 + 1)));
}

function _module.__default.Up#canCall(x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { _module.__default.Up($LS($ly), x#0) } 
  _module.__default.Up($LS($ly), x#0) == _module.__default.Up($ly, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { _module.__default.Up(AsFuelBottom($ly), x#0) } 
  _module.__default.Up($ly, x#0) == _module.__default.Up($LZ, x#0));

function _module.__default.Up#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Up
axiom (forall $ly: LayerType, x#0: int :: 
  { _module.__default.Up#requires($ly, x#0) } 
  _module.__default.Up#requires($ly, x#0) == true);

procedure {:verboseName "Up (well-formedness)"} CheckWellformed$$_module.__default.Up(x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IntBoolFunction
function _module.__default.IntBoolFunction(x#0: int) : bool
uses {
// definition axiom for _module.__default.IntBoolFunction (revealed)
axiom {:id "id77"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.__default.IntBoolFunction(x#0) } 
    _module.__default.IntBoolFunction#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.__default.IntBoolFunction(x#0) == (Mod(x#0, LitInt(2)) == LitInt(0)));
// definition axiom for _module.__default.IntBoolFunction for all literals (revealed)
axiom {:id "id78"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.__default.IntBoolFunction(LitInt(x#0)) } 
    _module.__default.IntBoolFunction#canCall(LitInt(x#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.IntBoolFunction(LitInt(x#0))
         == 
        (LitInt(Mod(x#0, LitInt(2)))
         == LitInt(0)));
}

function _module.__default.IntBoolFunction#canCall(x#0: int) : bool;

function _module.__default.IntBoolFunction#requires(int) : bool;

// #requires axiom for _module.__default.IntBoolFunction
axiom (forall x#0: int :: 
  { _module.__default.IntBoolFunction#requires(x#0) } 
  _module.__default.IntBoolFunction#requires(x#0) == true);

procedure {:verboseName "IntBoolFunction (well-formedness)"} CheckWellformed$$_module.__default.IntBoolFunction(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntBoolFunction (well-formedness)"} CheckWellformed$$_module.__default.IntBoolFunction(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


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
        assert {:id "id79"} LitInt(2) != 0;
        assume {:id "id80"} _module.__default.IntBoolFunction(x#0) == (Mod(x#0, LitInt(2)) == LitInt(0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.IntBoolFunction(x#0), TBool);
        return;

        assume false;
    }
}



function _module.__default.IntBoolFunctionPartial#requires(int) : bool;

// #requires axiom for _module.__default.IntBoolFunctionPartial
axiom (forall x#0: int :: 
  { _module.__default.IntBoolFunctionPartial#requires(x#0) } 
  _module.__default.IntBoolFunctionPartial#requires(x#0) == (x#0 < 67));

procedure {:verboseName "IntBoolFunctionPartial (well-formedness)"} CheckWellformed$$_module.__default.IntBoolFunctionPartial(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IntBoolFunctionPartial (well-formedness)"} CheckWellformed$$_module.__default.IntBoolFunctionPartial(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id83"} x#0 < 67;
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
        assert {:id "id84"} LitInt(2) != 0;
        assume {:id "id85"} _module.__default.IntBoolFunctionPartial(x#0)
           == 
          (Mod(x#0, LitInt(2))
           == LitInt(0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.IntBoolFunctionPartial(x#0), TBool);
        return;

        assume false;
    }
}



// frame axiom for _module.__default.IntBoolFunctionReads
axiom (forall $h0: Heap, $h1: Heap, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.IntBoolFunctionReads($h1, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.IntBoolFunctionReads#canCall($h0, a#0)
         || $Is(a#0, Tclass._System.array?(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == a#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.IntBoolFunctionReads($h0, a#0)
       == _module.__default.IntBoolFunctionReads($h1, a#0));

function _module.__default.IntBoolFunctionReads#requires(Heap, ref) : bool;

// #requires axiom for _module.__default.IntBoolFunctionReads
axiom (forall $Heap: Heap, a#0: ref :: 
  { _module.__default.IntBoolFunctionReads#requires($Heap, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(a#0, Tclass._System.array?(TInt))
     ==> _module.__default.IntBoolFunctionReads#requires($Heap, a#0) == (a#0 != null));

procedure {:verboseName "IntBoolFunctionReads (well-formedness)"} CheckWellformed$$_module.__default.IntBoolFunctionReads(a#0: ref where $Is(a#0, Tclass._System.array?(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class._module.TypeParameterViaClass?: ClassName;

function Tclass._module.TypeParameterViaClass?(Ty) : Ty;

const unique Tagclass._module.TypeParameterViaClass?: TyTag;

// Tclass._module.TypeParameterViaClass? Tag
axiom (forall _module.TypeParameterViaClass$B: Ty :: 
  { Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B) } 
  Tag(Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B))
       == Tagclass._module.TypeParameterViaClass?
     && TagFamily(Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B))
       == tytagFamily$TypeParameterViaClass);

function Tclass._module.TypeParameterViaClass?_0(Ty) : Ty;

// Tclass._module.TypeParameterViaClass? injectivity 0
axiom (forall _module.TypeParameterViaClass$B: Ty :: 
  { Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B) } 
  Tclass._module.TypeParameterViaClass?_0(Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B))
     == _module.TypeParameterViaClass$B);

// Box/unbox axiom for Tclass._module.TypeParameterViaClass?
axiom (forall _module.TypeParameterViaClass$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)) } 
  $IsBox(bx, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)));

// $Is axiom for class TypeParameterViaClass
axiom (forall _module.TypeParameterViaClass$B: Ty, $o: ref :: 
  { $Is($o, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)) } 
  $Is($o, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B))
     <==> $o == null
       || dtype($o)
         == Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B));

// $IsAlloc axiom for class TypeParameterViaClass
axiom (forall _module.TypeParameterViaClass$B: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B), $h) } 
  $IsAlloc($o, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.TypeParameterViaClass.s: Field
uses {
axiom FDim(_module.TypeParameterViaClass.s) == 0
   && FieldOfDecl(class._module.TypeParameterViaClass?, field$s)
     == _module.TypeParameterViaClass.s
   && !$IsGhostField(_module.TypeParameterViaClass.s);
}

// TypeParameterViaClass.s: Type axiom
axiom (forall _module.TypeParameterViaClass$B: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TypeParameterViaClass.s)): Seq, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)
     ==> $Is($Unbox(read($h, $o, _module.TypeParameterViaClass.s)): Seq, TSeq(TChar)));

// TypeParameterViaClass.s: Allocation axiom
axiom (forall _module.TypeParameterViaClass$B: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TypeParameterViaClass.s)): Seq, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.TypeParameterViaClass.s)): Seq, TSeq(TChar), $h));

const _module.TypeParameterViaClass.b: Field
uses {
axiom FDim(_module.TypeParameterViaClass.b) == 0
   && FieldOfDecl(class._module.TypeParameterViaClass?, field$b)
     == _module.TypeParameterViaClass.b
   && !$IsGhostField(_module.TypeParameterViaClass.b);
}

// TypeParameterViaClass.b: Type axiom
axiom (forall _module.TypeParameterViaClass$B: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.TypeParameterViaClass.b), Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)
     ==> $IsBox(read($h, $o, _module.TypeParameterViaClass.b), _module.TypeParameterViaClass$B));

// TypeParameterViaClass.b: Allocation axiom
axiom (forall _module.TypeParameterViaClass$B: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.TypeParameterViaClass.b), Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.TypeParameterViaClass.b), 
      _module.TypeParameterViaClass$B, 
      $h));

procedure {:verboseName "TypeParameterViaClass._ctor (well-formedness)"} CheckWellFormed$$_module.TypeParameterViaClass.__ctor(_module.TypeParameterViaClass$B: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.TypeParameterViaClass$B)
         && $IsAllocBox(b#0, _module.TypeParameterViaClass$B, $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeParameterViaClass._ctor (call)"} Call$$_module.TypeParameterViaClass.__ctor(_module.TypeParameterViaClass$B: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.TypeParameterViaClass$B)
         && $IsAllocBox(b#0, _module.TypeParameterViaClass$B, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
         && $IsAlloc(this, 
          Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B), 
          $Heap));
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



procedure {:verboseName "TypeParameterViaClass._ctor (correctness)"} Impl$$_module.TypeParameterViaClass.__ctor(_module.TypeParameterViaClass$B: Ty, 
    s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.TypeParameterViaClass$B)
         && $IsAllocBox(b#0, _module.TypeParameterViaClass$B, $Heap))
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



procedure {:verboseName "TypeParameterViaClass.ItIsTime (well-formedness)"} CheckWellFormed$$_module.TypeParameterViaClass.ItIsTime(_module.TypeParameterViaClass$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
         && $IsAlloc(this, 
          Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B), 
          $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeParameterViaClass.ItIsTime (call)"} Call$$_module.TypeParameterViaClass.ItIsTime(_module.TypeParameterViaClass$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
         && $IsAlloc(this, 
          Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeParameterViaClass.ItIsTime (correctness)"} Impl$$_module.TypeParameterViaClass.ItIsTime(_module.TypeParameterViaClass$B: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
         && $IsAlloc(this, 
          Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B), 
          $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeParameterViaClass.ItIsTime (correctness)"} Impl$$_module.TypeParameterViaClass.ItIsTime(_module.TypeParameterViaClass$B: Ty, this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s##0: Seq;
  var g##0: Box;

    // AddMethodImpl: ItIsTime, Impl$$_module.TypeParameterViaClass.ItIsTime
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(108,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Seq#Append(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(66))), $Box(char#FromInt(61))), 
      $Unbox(read($Heap, this, _module.TypeParameterViaClass.s)): Seq);
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := read($Heap, this, _module.TypeParameterViaClass.b);
    call {:id "id93"} Call$$_module.__default.Method(_module.TypeParameterViaClass$B, s##0, g##0);
    // TrCallStmt: After ProcessCallStmt
}



// $Is axiom for non-null type _module.TypeParameterViaClass
axiom (forall _module.TypeParameterViaClass$B: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B)) } 
    { $Is(c#0, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B)) } 
  $Is(c#0, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B))
     <==> $Is(c#0, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B))
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.TypeParameterViaClass
axiom (forall _module.TypeParameterViaClass$B: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B), $h) } 
    { $IsAlloc(c#0, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B), $h) } 
  $IsAlloc(c#0, Tclass._module.TypeParameterViaClass(_module.TypeParameterViaClass$B), $h)
     <==> $IsAlloc(c#0, Tclass._module.TypeParameterViaClass?(_module.TypeParameterViaClass$B), $h));

// Constructor function declaration
function #_module.TypeParameterViaDatatype.TPVD() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.TypeParameterViaDatatype.TPVD())
   == ##_module.TypeParameterViaDatatype.TPVD;
// Constructor literal
axiom #_module.TypeParameterViaDatatype.TPVD()
   == Lit(#_module.TypeParameterViaDatatype.TPVD());
}

const unique ##_module.TypeParameterViaDatatype.TPVD: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.TypeParameterViaDatatype.TPVD())
   == ##_module.TypeParameterViaDatatype.TPVD;
}

function _module.TypeParameterViaDatatype.TPVD_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.TypeParameterViaDatatype.TPVD_q(d) } 
  _module.TypeParameterViaDatatype.TPVD_q(d)
     <==> DatatypeCtorId(d) == ##_module.TypeParameterViaDatatype.TPVD);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.TypeParameterViaDatatype.TPVD_q(d) } 
  _module.TypeParameterViaDatatype.TPVD_q(d)
     ==> d == #_module.TypeParameterViaDatatype.TPVD());

// Constructor $Is
axiom (forall _module.TypeParameterViaDatatype$B: Ty :: 
  { $Is(#_module.TypeParameterViaDatatype.TPVD(), 
      Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B)) } 
  $Is(#_module.TypeParameterViaDatatype.TPVD(), 
    Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B)));

// Constructor $IsAlloc
axiom (forall _module.TypeParameterViaDatatype$B: Ty, $h: Heap :: 
  { $IsAlloc(#_module.TypeParameterViaDatatype.TPVD(), 
      Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.TypeParameterViaDatatype.TPVD(), 
      Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B), 
      $h));

// Depth-one case-split function
function $IsA#_module.TypeParameterViaDatatype(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.TypeParameterViaDatatype(d) } 
  $IsA#_module.TypeParameterViaDatatype(d)
     ==> _module.TypeParameterViaDatatype.TPVD_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.TypeParameterViaDatatype$B: Ty, d: DatatypeType :: 
  { _module.TypeParameterViaDatatype.TPVD_q(d), $Is(d, Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B)) } 
  $Is(d, Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
     ==> _module.TypeParameterViaDatatype.TPVD_q(d));

// Datatype extensional equality declaration
function _module.TypeParameterViaDatatype#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.TypeParameterViaDatatype.TPVD
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.TypeParameterViaDatatype#Equal(a, b) } 
  _module.TypeParameterViaDatatype#Equal(a, b));

// Datatype extensionality axiom: _module.TypeParameterViaDatatype
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.TypeParameterViaDatatype#Equal(a, b) } 
  _module.TypeParameterViaDatatype#Equal(a, b) <==> a == b);

const unique class._module.TypeParameterViaDatatype: ClassName;

procedure {:verboseName "TypeParameterViaDatatype.CallMethod (well-formedness)"} CheckWellFormed$$_module.TypeParameterViaDatatype.CallMethod(_module.TypeParameterViaDatatype$B: Ty, 
    this: DatatypeType
       where $Is(this, 
          Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
         && $IsAlloc(this, 
          Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B), 
          $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.TypeParameterViaDatatype$B)
         && $IsAllocBox(b#0, _module.TypeParameterViaDatatype$B, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeParameterViaDatatype.CallMethod (call)"} Call$$_module.TypeParameterViaDatatype.CallMethod(_module.TypeParameterViaDatatype$B: Ty, 
    this: DatatypeType
       where $Is(this, 
          Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
         && $IsAlloc(this, 
          Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B), 
          $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.TypeParameterViaDatatype$B)
         && $IsAllocBox(b#0, _module.TypeParameterViaDatatype$B, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeParameterViaDatatype.CallMethod (correctness)"} Impl$$_module.TypeParameterViaDatatype.CallMethod(_module.TypeParameterViaDatatype$B: Ty, 
    this: DatatypeType
       where $Is(this, 
          Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B))
         && $IsAlloc(this, 
          Tclass._module.TypeParameterViaDatatype(_module.TypeParameterViaDatatype$B), 
          $Heap), 
    b#0: Box
       where $IsBox(b#0, _module.TypeParameterViaDatatype$B)
         && $IsAllocBox(b#0, _module.TypeParameterViaDatatype$B, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TypeParameterViaDatatype.CallMethod (correctness)"} Impl$$_module.TypeParameterViaDatatype.CallMethod(_module.TypeParameterViaDatatype$B: Ty, this: DatatypeType, b#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s##0: Seq;
  var g##0: Box;

    // AddMethodImpl: CallMethod, Impl$$_module.TypeParameterViaDatatype.CallMethod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TypeDescriptors.dfy(114,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(100))), $Box(char#FromInt(97))), 
                        $Box(char#FromInt(116))), 
                      $Box(char#FromInt(97))), 
                    $Box(char#FromInt(116))), 
                  $Box(char#FromInt(121))), 
                $Box(char#FromInt(112))), 
              $Box(char#FromInt(101))), 
            $Box(char#FromInt(46))), 
          $Box(char#FromInt(66))), 
        $Box(char#FromInt(61))));
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := b#0;
    call {:id "id94"} Call$$_module.__default.Method(_module.TypeParameterViaDatatype$B, s##0, g##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "pos (well-formedness)"} CheckWellFormed$$_module.pos(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "pos (well-formedness)"} CheckWellFormed$$_module.pos(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type pos
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume {:id "id95"} LitInt(1) <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id96"} LitInt(1) <= LitInt(1);
        assume false;
    }
}



// $Is axiom for subset type _module.pos
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.pos()) } 
  $Is(x#0, Tclass._module.pos()) <==> LitInt(1) <= x#0);

// $IsAlloc axiom for subset type _module.pos
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.pos(), $h) } 
  $IsAlloc(x#0, Tclass._module.pos(), $h));

procedure {:verboseName "Hundred (well-formedness)"} CheckWellFormed$$_module.Hundred(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Hundred (well-formedness)"} CheckWellFormed$$_module.Hundred(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype Hundred
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id97"} LitInt(0) <= x#0 && x#0 < 100;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id98"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id99"} {:subsumption 0} Lit(0 < 100);
        assume false;
    }
}



// $Is axiom for newtype _module.Hundred
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.Hundred()) } 
  $Is(x#0, Tclass._module.Hundred()) <==> LitInt(0) <= x#0 && x#0 < 100);

// $IsAlloc axiom for newtype _module.Hundred
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.Hundred(), $h) } 
  $IsAlloc(x#0, Tclass._module.Hundred(), $h));

const unique class._module.Hundred: ClassName;

procedure {:verboseName "HundredOdd (well-formedness)"} CheckWellFormed$$_module.HundredOdd(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "HundredOdd (well-formedness)"} CheckWellFormed$$_module.HundredOdd(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype HundredOdd
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id100"} LitInt(0) <= x#0 && x#0 < 100;
        assert {:id "id101"} LitInt(2) != 0;
        assume {:id "id102"} Mod(x#0, LitInt(2)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id103"} {:subsumption 0} LitInt(0) <= LitInt(19);
        assert {:id "id104"} {:subsumption 0} Lit(19 < 100);
        assert {:id "id105"} {:subsumption 0} LitInt(Mod(19, LitInt(2))) == LitInt(1);
        assume false;
    }
}



// $Is axiom for newtype _module.HundredOdd
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.HundredOdd()) } 
  $Is(x#0, Tclass._module.HundredOdd())
     <==> LitInt(0) <= x#0 && x#0 < 100 && Mod(x#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for newtype _module.HundredOdd
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.HundredOdd(), $h) } 
  $IsAlloc(x#0, Tclass._module.HundredOdd(), $h));

const unique class._module.HundredOdd: ClassName;

procedure {:verboseName "JustOdd (well-formedness)"} CheckWellFormed$$_module.JustOdd(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "JustOdd (well-formedness)"} CheckWellFormed$$_module.JustOdd(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype JustOdd
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assert {:id "id106"} LitInt(2) != 0;
        assume {:id "id107"} Mod(x#0, LitInt(2)) == LitInt(1);
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id108"} LitInt(Mod(5, LitInt(2))) == LitInt(1);
        assume false;
    }
}



// $Is axiom for newtype _module.JustOdd
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.JustOdd()) } 
  $Is(x#0, Tclass._module.JustOdd()) <==> Mod(x#0, LitInt(2)) == LitInt(1));

// $IsAlloc axiom for newtype _module.JustOdd
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.JustOdd(), $h) } 
  $IsAlloc(x#0, Tclass._module.JustOdd(), $h));

const unique class._module.JustOdd: ClassName;

// Constructor function declaration
function #_module.AtomicShells.Atom(Box) : DatatypeType;

const unique ##_module.AtomicShells.Atom: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.AtomicShells.Atom(a#0#0#0) } 
  DatatypeCtorId(#_module.AtomicShells.Atom(a#0#0#0))
     == ##_module.AtomicShells.Atom);
}

function _module.AtomicShells.Atom_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.AtomicShells.Atom_q(d) } 
  _module.AtomicShells.Atom_q(d)
     <==> DatatypeCtorId(d) == ##_module.AtomicShells.Atom);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.AtomicShells.Atom_q(d) } 
  _module.AtomicShells.Atom_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.AtomicShells.Atom(a#1#0#0)));

// Constructor $Is
axiom (forall _module.AtomicShells$A: Ty, a#2#0#0: Box :: 
  { $Is(#_module.AtomicShells.Atom(a#2#0#0), 
      Tclass._module.AtomicShells(_module.AtomicShells$A)) } 
  $Is(#_module.AtomicShells.Atom(a#2#0#0), 
      Tclass._module.AtomicShells(_module.AtomicShells$A))
     <==> $IsBox(a#2#0#0, _module.AtomicShells$A));

// Constructor $IsAlloc
axiom (forall _module.AtomicShells$A: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.AtomicShells.Atom(a#2#0#0), 
      Tclass._module.AtomicShells(_module.AtomicShells$A), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.AtomicShells.Atom(a#2#0#0), 
        Tclass._module.AtomicShells(_module.AtomicShells$A), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.AtomicShells$A, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.AtomicShells$A: Ty, $h: Heap :: 
  { $IsAllocBox(_module.AtomicShells.a(d), _module.AtomicShells$A, $h) } 
  $IsGoodHeap($h)
       && 
      _module.AtomicShells.Atom_q(d)
       && $IsAlloc(d, Tclass._module.AtomicShells(_module.AtomicShells$A), $h)
     ==> $IsAllocBox(_module.AtomicShells.a(d), _module.AtomicShells$A, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.AtomicShells.Atom(Lit(a#3#0#0)) } 
  #_module.AtomicShells.Atom(Lit(a#3#0#0))
     == Lit(#_module.AtomicShells.Atom(a#3#0#0)));

function _module.AtomicShells.a(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.AtomicShells.Atom(a#4#0#0) } 
  _module.AtomicShells.a(#_module.AtomicShells.Atom(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.AtomicShells.Atom(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.AtomicShells.Atom(a#5#0#0)));

// Constructor function declaration
function #_module.AtomicShells.Shell(DatatypeType) : DatatypeType;

const unique ##_module.AtomicShells.Shell: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: DatatypeType :: 
  { #_module.AtomicShells.Shell(a#6#0#0) } 
  DatatypeCtorId(#_module.AtomicShells.Shell(a#6#0#0))
     == ##_module.AtomicShells.Shell);
}

function _module.AtomicShells.Shell_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.AtomicShells.Shell_q(d) } 
  _module.AtomicShells.Shell_q(d)
     <==> DatatypeCtorId(d) == ##_module.AtomicShells.Shell);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.AtomicShells.Shell_q(d) } 
  _module.AtomicShells.Shell_q(d)
     ==> (exists a#7#0#0: DatatypeType :: d == #_module.AtomicShells.Shell(a#7#0#0)));

// Constructor $Is
axiom (forall _module.AtomicShells$A: Ty, a#8#0#0: DatatypeType :: 
  { $Is(#_module.AtomicShells.Shell(a#8#0#0), 
      Tclass._module.AtomicShells(_module.AtomicShells$A)) } 
  $Is(#_module.AtomicShells.Shell(a#8#0#0), 
      Tclass._module.AtomicShells(_module.AtomicShells$A))
     <==> $Is(a#8#0#0, Tclass._module.AtomicShells(_module.AtomicShells$A)));

// Constructor $IsAlloc
axiom (forall _module.AtomicShells$A: Ty, a#8#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.AtomicShells.Shell(a#8#0#0), 
      Tclass._module.AtomicShells(_module.AtomicShells$A), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.AtomicShells.Shell(a#8#0#0), 
        Tclass._module.AtomicShells(_module.AtomicShells$A), 
        $h)
       <==> $IsAlloc(a#8#0#0, Tclass._module.AtomicShells(_module.AtomicShells$A), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.AtomicShells$A: Ty, $h: Heap :: 
  { $IsAlloc(_module.AtomicShells.inner(d), 
      Tclass._module.AtomicShells(_module.AtomicShells$A), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.AtomicShells.Shell_q(d)
       && $IsAlloc(d, Tclass._module.AtomicShells(_module.AtomicShells$A), $h)
     ==> $IsAlloc(_module.AtomicShells.inner(d), 
      Tclass._module.AtomicShells(_module.AtomicShells$A), 
      $h));

// Constructor literal
axiom (forall a#9#0#0: DatatypeType :: 
  { #_module.AtomicShells.Shell(Lit(a#9#0#0)) } 
  #_module.AtomicShells.Shell(Lit(a#9#0#0))
     == Lit(#_module.AtomicShells.Shell(a#9#0#0)));

function _module.AtomicShells.inner(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType :: 
  { #_module.AtomicShells.Shell(a#10#0#0) } 
  _module.AtomicShells.inner(#_module.AtomicShells.Shell(a#10#0#0)) == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType :: 
  { #_module.AtomicShells.Shell(a#11#0#0) } 
  DtRank(a#11#0#0) < DtRank(#_module.AtomicShells.Shell(a#11#0#0)));

// Depth-one case-split function
function $IsA#_module.AtomicShells(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.AtomicShells(d) } 
  $IsA#_module.AtomicShells(d)
     ==> _module.AtomicShells.Atom_q(d) || _module.AtomicShells.Shell_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.AtomicShells$A: Ty, d: DatatypeType :: 
  { _module.AtomicShells.Shell_q(d), $Is(d, Tclass._module.AtomicShells(_module.AtomicShells$A)) } 
    { _module.AtomicShells.Atom_q(d), $Is(d, Tclass._module.AtomicShells(_module.AtomicShells$A)) } 
  $Is(d, Tclass._module.AtomicShells(_module.AtomicShells$A))
     ==> _module.AtomicShells.Atom_q(d) || _module.AtomicShells.Shell_q(d));

// Datatype extensional equality declaration
function _module.AtomicShells#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.AtomicShells.Atom
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.AtomicShells#Equal(a, b), _module.AtomicShells.Atom_q(a) } 
    { _module.AtomicShells#Equal(a, b), _module.AtomicShells.Atom_q(b) } 
  _module.AtomicShells.Atom_q(a) && _module.AtomicShells.Atom_q(b)
     ==> (_module.AtomicShells#Equal(a, b)
       <==> _module.AtomicShells.a(a) == _module.AtomicShells.a(b)));

// Datatype extensional equality definition: #_module.AtomicShells.Shell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.AtomicShells#Equal(a, b), _module.AtomicShells.Shell_q(a) } 
    { _module.AtomicShells#Equal(a, b), _module.AtomicShells.Shell_q(b) } 
  _module.AtomicShells.Shell_q(a) && _module.AtomicShells.Shell_q(b)
     ==> (_module.AtomicShells#Equal(a, b)
       <==> _module.AtomicShells#Equal(_module.AtomicShells.inner(a), _module.AtomicShells.inner(b))));

// Datatype extensionality axiom: _module.AtomicShells
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.AtomicShells#Equal(a, b) } 
  _module.AtomicShells#Equal(a, b) <==> a == b);

const unique class._module.AtomicShells: ClassName;

// Constructor function declaration
function #_module.Record.SimpleRecord(Box, Box) : DatatypeType;

const unique ##_module.Record.SimpleRecord: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box :: 
  { #_module.Record.SimpleRecord(a#12#0#0, a#12#1#0) } 
  DatatypeCtorId(#_module.Record.SimpleRecord(a#12#0#0, a#12#1#0))
     == ##_module.Record.SimpleRecord);
}

function _module.Record.SimpleRecord_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Record.SimpleRecord_q(d) } 
  _module.Record.SimpleRecord_q(d)
     <==> DatatypeCtorId(d) == ##_module.Record.SimpleRecord);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Record.SimpleRecord_q(d) } 
  _module.Record.SimpleRecord_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box :: 
      d == #_module.Record.SimpleRecord(a#13#0#0, a#13#1#0)));

// Constructor $Is
axiom (forall _module.Record$Compiled: Ty, 
    _module.Record$Ghost: Ty, 
    _module.Record$Unused: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box :: 
  { $Is(#_module.Record.SimpleRecord(a#14#0#0, a#14#1#0), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused)) } 
  $Is(#_module.Record.SimpleRecord(a#14#0#0, a#14#1#0), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
     <==> $IsBox(a#14#0#0, _module.Record$Compiled)
       && $IsBox(a#14#1#0, _module.Record$Ghost));

// Constructor $IsAlloc
axiom (forall _module.Record$Compiled: Ty, 
    _module.Record$Ghost: Ty, 
    _module.Record$Unused: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_module.Record.SimpleRecord(a#14#0#0, a#14#1#0), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Record.SimpleRecord(a#14#0#0, a#14#1#0), 
        Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _module.Record$Compiled, $h)
         && $IsAllocBox(a#14#1#0, _module.Record$Ghost, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Record$Compiled: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Record._h0(d), _module.Record$Compiled, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.SimpleRecord_q(d)
       && (exists _module.Record$Ghost: Ty, _module.Record$Unused: Ty :: 
        { $IsAlloc(d, 
            Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
            $h) } 
        $IsAlloc(d, 
          Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
          $h))
     ==> $IsAllocBox(_module.Record._h0(d), _module.Record$Compiled, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Record$Ghost: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Record._h1(d), _module.Record$Ghost, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.SimpleRecord_q(d)
       && (exists _module.Record$Compiled: Ty, _module.Record$Unused: Ty :: 
        { $IsAlloc(d, 
            Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
            $h) } 
        $IsAlloc(d, 
          Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
          $h))
     ==> $IsAllocBox(_module.Record._h1(d), _module.Record$Ghost, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box :: 
  { #_module.Record.SimpleRecord(Lit(a#15#0#0), Lit(a#15#1#0)) } 
  #_module.Record.SimpleRecord(Lit(a#15#0#0), Lit(a#15#1#0))
     == Lit(#_module.Record.SimpleRecord(a#15#0#0, a#15#1#0)));

function _module.Record._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box :: 
  { #_module.Record.SimpleRecord(a#16#0#0, a#16#1#0) } 
  _module.Record._h0(#_module.Record.SimpleRecord(a#16#0#0, a#16#1#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box :: 
  { #_module.Record.SimpleRecord(a#17#0#0, a#17#1#0) } 
  BoxRank(a#17#0#0) < DtRank(#_module.Record.SimpleRecord(a#17#0#0, a#17#1#0)));

function _module.Record._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box :: 
  { #_module.Record.SimpleRecord(a#18#0#0, a#18#1#0) } 
  _module.Record._h1(#_module.Record.SimpleRecord(a#18#0#0, a#18#1#0)) == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box :: 
  { #_module.Record.SimpleRecord(a#19#0#0, a#19#1#0) } 
  BoxRank(a#19#1#0) < DtRank(#_module.Record.SimpleRecord(a#19#0#0, a#19#1#0)));

// Constructor function declaration
function #_module.Record.ComplicatedAlternative(DatatypeType) : DatatypeType;

const unique ##_module.Record.ComplicatedAlternative: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: DatatypeType :: 
  { #_module.Record.ComplicatedAlternative(a#20#0#0) } 
  DatatypeCtorId(#_module.Record.ComplicatedAlternative(a#20#0#0))
     == ##_module.Record.ComplicatedAlternative);
}

function _module.Record.ComplicatedAlternative_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Record.ComplicatedAlternative_q(d) } 
  _module.Record.ComplicatedAlternative_q(d)
     <==> DatatypeCtorId(d) == ##_module.Record.ComplicatedAlternative);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Record.ComplicatedAlternative_q(d) } 
  _module.Record.ComplicatedAlternative_q(d)
     ==> (exists a#21#0#0: DatatypeType :: 
      d == #_module.Record.ComplicatedAlternative(a#21#0#0)));

// Constructor $Is
axiom (forall _module.Record$Compiled: Ty, 
    _module.Record$Ghost: Ty, 
    _module.Record$Unused: Ty, 
    a#22#0#0: DatatypeType :: 
  { $Is(#_module.Record.ComplicatedAlternative(a#22#0#0), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused)) } 
  $Is(#_module.Record.ComplicatedAlternative(a#22#0#0), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
     <==> $Is(a#22#0#0, 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused)));

// Constructor $IsAlloc
axiom (forall _module.Record$Compiled: Ty, 
    _module.Record$Ghost: Ty, 
    _module.Record$Unused: Ty, 
    a#22#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#_module.Record.ComplicatedAlternative(a#22#0#0), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Record.ComplicatedAlternative(a#22#0#0), 
        Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
        $h)
       <==> $IsAlloc(a#22#0#0, 
        Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
        $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    _module.Record$Compiled: Ty, 
    _module.Record$Ghost: Ty, 
    _module.Record$Unused: Ty, 
    $h: Heap :: 
  { $IsAlloc(_module.Record._h2(d), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.ComplicatedAlternative_q(d)
       && $IsAlloc(d, 
        Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
        $h)
     ==> $IsAlloc(_module.Record._h2(d), 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused), 
      $h));

// Constructor literal
axiom (forall a#23#0#0: DatatypeType :: 
  { #_module.Record.ComplicatedAlternative(Lit(a#23#0#0)) } 
  #_module.Record.ComplicatedAlternative(Lit(a#23#0#0))
     == Lit(#_module.Record.ComplicatedAlternative(a#23#0#0)));

function _module.Record._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType :: 
  { #_module.Record.ComplicatedAlternative(a#24#0#0) } 
  _module.Record._h2(#_module.Record.ComplicatedAlternative(a#24#0#0)) == a#24#0#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType :: 
  { #_module.Record.ComplicatedAlternative(a#25#0#0) } 
  DtRank(a#25#0#0) < DtRank(#_module.Record.ComplicatedAlternative(a#25#0#0)));

// Depth-one case-split function
function $IsA#_module.Record(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Record(d) } 
  $IsA#_module.Record(d)
     ==> _module.Record.SimpleRecord_q(d) || _module.Record.ComplicatedAlternative_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Record$Compiled: Ty, 
    _module.Record$Ghost: Ty, 
    _module.Record$Unused: Ty, 
    d: DatatypeType :: 
  { _module.Record.ComplicatedAlternative_q(d), $Is(d, 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused)) } 
    { _module.Record.SimpleRecord_q(d), $Is(d, 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused)) } 
  $Is(d, 
      Tclass._module.Record(_module.Record$Compiled, _module.Record$Ghost, _module.Record$Unused))
     ==> _module.Record.SimpleRecord_q(d) || _module.Record.ComplicatedAlternative_q(d));

// Datatype extensional equality declaration
function _module.Record#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Record.SimpleRecord
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Record#Equal(a, b), _module.Record.SimpleRecord_q(a) } 
    { _module.Record#Equal(a, b), _module.Record.SimpleRecord_q(b) } 
  _module.Record.SimpleRecord_q(a) && _module.Record.SimpleRecord_q(b)
     ==> (_module.Record#Equal(a, b)
       <==> _module.Record._h0(a) == _module.Record._h0(b)
         && _module.Record._h1(a) == _module.Record._h1(b)));

// Datatype extensional equality definition: #_module.Record.ComplicatedAlternative
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Record#Equal(a, b), _module.Record.ComplicatedAlternative_q(a) } 
    { _module.Record#Equal(a, b), _module.Record.ComplicatedAlternative_q(b) } 
  _module.Record.ComplicatedAlternative_q(a)
       && _module.Record.ComplicatedAlternative_q(b)
     ==> (_module.Record#Equal(a, b)
       <==> _module.Record#Equal(_module.Record._h2(a), _module.Record._h2(b))));

// Datatype extensionality axiom: _module.Record
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Record#Equal(a, b) } 
  _module.Record#Equal(a, b) <==> a == b);

const unique class._module.Record: ClassName;

// Constructor function declaration
function #_module.Stream.More(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.More: DtCtorId
uses {
// Constructor identifier
axiom (forall a#26#0#0: Box, a#26#1#0: DatatypeType :: 
  { #_module.Stream.More(a#26#0#0, a#26#1#0) } 
  DatatypeCtorId(#_module.Stream.More(a#26#0#0, a#26#1#0))
     == ##_module.Stream.More);
}

function _module.Stream.More_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.More_q(d) } 
  _module.Stream.More_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.More);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.More_q(d) } 
  _module.Stream.More_q(d)
     ==> (exists a#27#0#0: Box, a#27#1#0: DatatypeType :: 
      d == #_module.Stream.More(a#27#0#0, a#27#1#0)));

// Constructor $Is
axiom (forall _module.Stream$B: Ty, a#28#0#0: Box, a#28#1#0: DatatypeType :: 
  { $Is(#_module.Stream.More(a#28#0#0, a#28#1#0), 
      Tclass._module.Stream(_module.Stream$B)) } 
  $Is(#_module.Stream.More(a#28#0#0, a#28#1#0), 
      Tclass._module.Stream(_module.Stream$B))
     <==> $IsBox(a#28#0#0, _module.Stream$B)
       && $Is(a#28#1#0, Tclass._module.Stream(_module.Stream$B)));

// Constructor $IsAlloc
axiom (forall _module.Stream$B: Ty, a#28#0#0: Box, a#28#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.More(a#28#0#0, a#28#1#0), 
      Tclass._module.Stream(_module.Stream$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.More(a#28#0#0, a#28#1#0), 
        Tclass._module.Stream(_module.Stream$B), 
        $h)
       <==> $IsAllocBox(a#28#0#0, _module.Stream$B, $h)
         && $IsAlloc(a#28#1#0, Tclass._module.Stream(_module.Stream$B), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$B: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream._h3(d), _module.Stream$B, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.More_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$B), $h)
     ==> $IsAllocBox(_module.Stream._h3(d), _module.Stream$B, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$B: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream._h4(d), Tclass._module.Stream(_module.Stream$B), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.More_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$B), $h)
     ==> $IsAlloc(_module.Stream._h4(d), Tclass._module.Stream(_module.Stream$B), $h));

function _module.Stream._h3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#29#0#0: Box, a#29#1#0: DatatypeType :: 
  { #_module.Stream.More(a#29#0#0, a#29#1#0) } 
  _module.Stream._h3(#_module.Stream.More(a#29#0#0, a#29#1#0)) == a#29#0#0);

function _module.Stream._h4(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#30#0#0: Box, a#30#1#0: DatatypeType :: 
  { #_module.Stream.More(a#30#0#0, a#30#1#0) } 
  _module.Stream._h4(#_module.Stream.More(a#30#0#0, a#30#1#0)) == a#30#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.More_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$B: Ty, d: DatatypeType :: 
  { _module.Stream.More_q(d), $Is(d, Tclass._module.Stream(_module.Stream$B)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$B)) ==> _module.Stream.More_q(d));

function $Eq#_module.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$B#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$B#r))
     ==> ($Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1)
       <==> _module.Stream.More_q(d0)
         && _module.Stream.More_q(d1)
         && (_module.Stream.More_q(d0) && _module.Stream.More_q(d1)
           ==> _module.Stream._h3(d0) == _module.Stream._h3(d1)
             && $Eq#_module.Stream(_module.Stream$B#l, 
              _module.Stream$B#r, 
              ly, 
              _module.Stream._h4(d0), 
              _module.Stream._h4(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$B#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$B#r))
     ==> ($PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.More_q(d0)
             && _module.Stream.More_q(d1)
             && (_module.Stream.More_q(d0) && _module.Stream.More_q(d1)
               ==> _module.Stream._h3(d0) == _module.Stream._h3(d1)
                 && $PrefixEq#_module.Stream(_module.Stream$B#l, 
                  _module.Stream$B#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream._h4(d0), 
                  _module.Stream._h4(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Stream$B#l: Ty, 
    _module.Stream$B#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Stream(_module.Stream$B#l, _module.Stream$B#r, k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

const unique class._module.Trait?: ClassName;

// $Is axiom for trait Trait
axiom (forall _module.Trait$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Trait?(_module.Trait$T)) } 
  $Is($o, Tclass._module.Trait?(_module.Trait$T))
     <==> $o == null || implements$_module.Trait(dtype($o), _module.Trait$T));

// $IsAlloc axiom for trait Trait
axiom (forall _module.Trait$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Trait?(_module.Trait$T), $h) } 
  $IsAlloc($o, Tclass._module.Trait?(_module.Trait$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_module.Trait(ty: Ty, _module.Trait$T: Ty) : bool;

function Tclass._module.Trait(Ty) : Ty;

const unique Tagclass._module.Trait: TyTag;

// Tclass._module.Trait Tag
axiom (forall _module.Trait$T: Ty :: 
  { Tclass._module.Trait(_module.Trait$T) } 
  Tag(Tclass._module.Trait(_module.Trait$T)) == Tagclass._module.Trait
     && TagFamily(Tclass._module.Trait(_module.Trait$T)) == tytagFamily$Trait);

function Tclass._module.Trait_0(Ty) : Ty;

// Tclass._module.Trait injectivity 0
axiom (forall _module.Trait$T: Ty :: 
  { Tclass._module.Trait(_module.Trait$T) } 
  Tclass._module.Trait_0(Tclass._module.Trait(_module.Trait$T)) == _module.Trait$T);

// Box/unbox axiom for Tclass._module.Trait
axiom (forall _module.Trait$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Trait(_module.Trait$T)) } 
  $IsBox(bx, Tclass._module.Trait(_module.Trait$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Trait(_module.Trait$T)));

// $Is axiom for non-null type _module.Trait
axiom (forall _module.Trait$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Trait(_module.Trait$T)) } 
    { $Is(c#0, Tclass._module.Trait?(_module.Trait$T)) } 
  $Is(c#0, Tclass._module.Trait(_module.Trait$T))
     <==> $Is(c#0, Tclass._module.Trait?(_module.Trait$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Trait
axiom (forall _module.Trait$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Trait(_module.Trait$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.Trait?(_module.Trait$T), $h) } 
  $IsAlloc(c#0, Tclass._module.Trait(_module.Trait$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.Trait?(_module.Trait$T), $h));

const unique class._module.Class?: ClassName;

// $Is axiom for class Class
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Class?(_module.Class$A, _module.Class$B)) } 
  $Is($o, Tclass._module.Class?(_module.Class$A, _module.Class$B))
     <==> $o == null
       || dtype($o) == Tclass._module.Class?(_module.Class$A, _module.Class$B));

// $IsAlloc axiom for class Class
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Class?(_module.Class$A, _module.Class$B), $h) } 
  $IsAlloc($o, Tclass._module.Class?(_module.Class$A, _module.Class$B), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// $Is axiom for non-null type _module.Class
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Class(_module.Class$A, _module.Class$B)) } 
    { $Is(c#0, Tclass._module.Class?(_module.Class$A, _module.Class$B)) } 
  $Is(c#0, Tclass._module.Class(_module.Class$A, _module.Class$B))
     <==> $Is(c#0, Tclass._module.Class?(_module.Class$A, _module.Class$B)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Class
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Class(_module.Class$A, _module.Class$B), $h) } 
    { $IsAlloc(c#0, Tclass._module.Class?(_module.Class$A, _module.Class$B), $h) } 
  $IsAlloc(c#0, Tclass._module.Class(_module.Class$A, _module.Class$B), $h)
     <==> $IsAlloc(c#0, Tclass._module.Class?(_module.Class$A, _module.Class$B), $h));

// type axiom for trait parent: Class? extends Trait?<seq<A>>
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Class?(_module.Class$A, _module.Class$B)) } 
  $Is($o, Tclass._module.Class?(_module.Class$A, _module.Class$B))
     ==> $Is($o, Tclass._module.Trait?(TSeq(_module.Class$A))));

axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Class?(_module.Class$A, _module.Class$B)) } 
  $IsBox(bx, Tclass._module.Class?(_module.Class$A, _module.Class$B))
     ==> $IsBox(bx, Tclass._module.Trait?(TSeq(_module.Class$A))));

// allocation axiom for trait parent: Class? extends Trait?<seq<A>>
axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, $o: ref, $heap: Heap :: 
  { $IsAlloc($o, Tclass._module.Class?(_module.Class$A, _module.Class$B), $heap) } 
  $IsAlloc($o, Tclass._module.Class?(_module.Class$A, _module.Class$B), $heap)
     ==> $IsAlloc($o, Tclass._module.Trait?(TSeq(_module.Class$A)), $heap));

axiom (forall _module.Class$A: Ty, _module.Class$B: Ty, bx: Box, $h: Heap :: 
  { $IsAllocBox(bx, Tclass._module.Class?(_module.Class$A, _module.Class$B), $h) } 
  $IsAllocBox(bx, Tclass._module.Class?(_module.Class$A, _module.Class$B), $h)
       && $IsGoodHeap($h)
     ==> $IsAllocBox(bx, Tclass._module.Trait?(TSeq(_module.Class$A)), $h));

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

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$pos: TyTagFamily;

const unique tytagFamily$Hundred: TyTagFamily;

const unique tytagFamily$HundredOdd: TyTagFamily;

const unique tytagFamily$JustOdd: TyTagFamily;

const unique tytagFamily$AtomicShells: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$Record: TyTagFamily;

const unique tytagFamily$TypeParameterViaClass: TyTagFamily;

const unique tytagFamily$TypeParameterViaDatatype: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$Trait: TyTagFamily;

const unique field$s: NameFamily;

const unique field$b: NameFamily;
