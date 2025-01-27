// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy

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

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 4 == $FunctionContextHeight;
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
  free requires 4 == $FunctionContextHeight;
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
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(4,27)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id0"} Call$$_module.__default.TestAggregateArrayUpdate();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(5,32)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1"} Call$$_module.__default.TestAggregateMultiArrayUpdate();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(6,27)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id2"} Call$$_module.__default.TestAggregateFieldUpdate();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestAggregateArrayUpdate (well-formedness)"} CheckWellFormed$$_module.__default.TestAggregateArrayUpdate();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestAggregateArrayUpdate (call)"} Call$$_module.__default.TestAggregateArrayUpdate();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestAggregateArrayUpdate (correctness)"} Impl$$_module.__default.TestAggregateArrayUpdate() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestAggregateArrayUpdate (correctness)"} Impl$$_module.__default.TestAggregateArrayUpdate() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TReal))
       && $IsAlloc(a#0, Tclass._System.array(TReal), $Heap);
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: real;
  var $nw: ref;
  var b#0: ref
     where $Is(b#0, Tclass._System.array(TReal))
       && $IsAlloc(b#0, Tclass._System.array(TReal), $Heap);
  var c#0: ref
     where $Is(c#0, Tclass._System.array(TBool))
       && $IsAlloc(c#0, Tclass._System.array(TBool), $Heap);
  var i#0_0: int;
  var i#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var i#1_1: int;
  var a##0: ref;
  var a##1: ref;
  var a##2: ref;

    // AddMethodImpl: TestAggregateArrayUpdate, Impl$$_module.__default.TestAggregateArrayUpdate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(12,9)
    assume true;
    assert {:id "id3"} 0 <= LitInt(8);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc i#0;
        if (LitInt(0) <= i#0)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id4"} lambdaResult#0 == Real(i#0) - 4e0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TReal);
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TReal));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(8);
    assert {:id "id5"} {:subsumption 0} (forall arrayinit#0#i0#0: int :: 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < LitInt(8)
         ==> Requires1(Tclass._System.nat(), 
          TReal, 
          $Heap, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $Box(Real($Unbox($l#0#i#0): int) - 4e0)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    $IsBox($l#0#i#0, Tclass._System.nat())), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0)));
    assume (forall arrayinit#0#i0#0: int :: 
      { read($Heap, $nw, IndexField(arrayinit#0#i0#0)) } 
      0 <= arrayinit#0#i0#0 && arrayinit#0#i0#0 < LitInt(8)
         ==> $Unbox(read($Heap, $nw, IndexField(arrayinit#0#i0#0))): real
           == $Unbox(Apply1(Tclass._System.nat(), 
              TReal, 
              $Heap, 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle1((lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $Box(Real($Unbox($l#0#i#0): int) - 4e0)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        $IsBox($l#0#i#0, Tclass._System.nat())), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0))): real);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    a#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(13,9)
    assume true;
    assert {:id "id7"} 0 <= LitInt(8);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TReal));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(8);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    b#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(14,9)
    assume true;
    assert {:id "id9"} 0 <= LitInt(8);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TBool));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(8);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(15,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        assume true;
        if (2 - i#0_0 <= LitInt(2))
        {
            assert {:id "id11"} {:subsumption 0} a#0 != null;
        }

        assume true;
        assume 2 - i#0_0 <= LitInt(2) && i#0_0 < _System.array.Length(a#0);
        assert {:id "id12"} b#0 != null;
        assert {:id "id13"} {:subsumption 0} 0 <= 7 - i#0_0 && 7 - i#0_0 < _System.array.Length(b#0);
        assume true;
        assert {:id "id14"} $_ModifiesFrame[b#0, IndexField(7 - i#0_0)];
        assert {:id "id15"} a#0 != null;
        assert {:id "id16"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array.Length(a#0);
        assume true;
        havoc i#0_1;
        assume true;
        assume 2 - i#0_1 <= LitInt(2) && i#0_1 < _System.array.Length(a#0);
        assume i#0_0 != i#0_1;
        assert {:id "id17"} b#0 != b#0
           || IndexField(7 - i#0_0) != IndexField(7 - i#0_1)
           || $Unbox(read($Heap, a#0, IndexField(i#0_0))): real + 4e0
             == $Unbox(read($Heap, a#0, IndexField(i#0_1))): real + 4e0;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists i#0_2: int :: 
              2 - i#0_2 <= LitInt(2)
                 && i#0_2 < _System.array.Length(a#0)
                 && $o == b#0
                 && $f == IndexField(7 - i#0_2)));
        assume (forall i#inv#0_0: int :: 
          { read($Heap, b#0, IndexField(i#inv#0_0)) } 
          2 - (7 - i#inv#0_0) <= LitInt(2) && 7 - i#inv#0_0 < _System.array.Length(a#0)
             ==> read($Heap, b#0, IndexField(i#inv#0_0))
               == $Box($Unbox(read($prevHeap, a#0, IndexField(7 - i#inv#0_0))): real + 4e0));
    }

    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(18,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        assume true;
        if (LitInt(0) <= i#1_0)
        {
            assert {:id "id18"} {:subsumption 0} a#0 != null;
        }

        assume true;
        assume LitInt(0) <= i#1_0 && i#1_0 < _System.array.Length(a#0);
        assert {:id "id19"} c#0 != null;
        assert {:id "id20"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array.Length(c#0);
        assume true;
        assert {:id "id21"} $_ModifiesFrame[c#0, IndexField(i#1_0)];
        assert {:id "id22"} a#0 != null;
        assert {:id "id23"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array.Length(a#0);
        assert {:id "id24"} b#0 != null;
        assert {:id "id25"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array.Length(b#0);
        assume true;
        havoc i#1_1;
        assume true;
        assume LitInt(0) <= i#1_1 && i#1_1 < _System.array.Length(a#0);
        assume i#1_0 != i#1_1;
        assert {:id "id26"} c#0 != c#0
           || IndexField(i#1_0) != IndexField(i#1_1)
           || ($Unbox(read($Heap, a#0, IndexField(i#1_0))): real
               < $Unbox(read($Heap, b#0, IndexField(i#1_0))): real)
             == ($Unbox(read($Heap, a#0, IndexField(i#1_1))): real
               < $Unbox(read($Heap, b#0, IndexField(i#1_1))): real);
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists i#1_2: int :: 
              LitInt(0) <= i#1_2
                 && i#1_2 < _System.array.Length(a#0)
                 && $o == c#0
                 && $f == IndexField(i#1_2)));
        assume (forall i#inv#1_0: int :: 
          { read($Heap, c#0, IndexField(i#inv#1_0)) } 
          LitInt(0) <= i#inv#1_0 && i#inv#1_0 < _System.array.Length(a#0)
             ==> read($Heap, c#0, IndexField(i#inv#1_0))
               == $Box($Unbox(read($prevHeap, a#0, IndexField(i#inv#1_0))): real
                   < $Unbox(read($prevHeap, b#0, IndexField(i#inv#1_0))): real));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(21,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    call {:id "id27"} Call$$_module.__default.PrintArray(TReal, a##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(22,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##1 := b#0;
    call {:id "id28"} Call$$_module.__default.PrintArray(TReal, a##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(23,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##2 := c#0;
    call {:id "id29"} Call$$_module.__default.PrintArray(TBool, a##2);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "PrintArray (well-formedness)"} CheckWellFormed$$_module.__default.PrintArray(_module._default.PrintArray$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(_module._default.PrintArray$_T0))
         && $IsAlloc(a#0, Tclass._System.array(_module._default.PrintArray$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintArray (call)"} Call$$_module.__default.PrintArray(_module._default.PrintArray$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(_module._default.PrintArray$_T0))
         && $IsAlloc(a#0, Tclass._System.array(_module._default.PrintArray$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintArray (correctness)"} Impl$$_module.__default.PrintArray(_module._default.PrintArray$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(_module._default.PrintArray$_T0))
         && $IsAlloc(a#0, Tclass._System.array(_module._default.PrintArray$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintArray (correctness)"} Impl$$_module.__default.PrintArray(_module._default.PrintArray$_T0: Ty, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: PrintArray, Impl$$_module.__default.PrintArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(27,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(28,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _System.array.Length(a#0) - i#0;
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
      free invariant _System.array.Length(a#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id31"} a#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id32"} a#0 != null;
        assume true;
        if (_System.array.Length(a#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := _System.array.Length(a#0) - i#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(29,5)
        assert {:id "id33"} a#0 != null;
        assert {:id "id34"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(a#0);
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(30,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(28,3)
        assert {:id "id36"} 0 <= $decr$loop#00 || _System.array.Length(a#0) - i#0 == $decr$loop#00;
        assert {:id "id37"} _System.array.Length(a#0) - i#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(32,3)
    assume true;
}



procedure {:verboseName "TestAggregateMultiArrayUpdate (well-formedness)"} CheckWellFormed$$_module.__default.TestAggregateMultiArrayUpdate();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestAggregateMultiArrayUpdate (call)"} Call$$_module.__default.TestAggregateMultiArrayUpdate();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestAggregateMultiArrayUpdate (correctness)"} Impl$$_module.__default.TestAggregateMultiArrayUpdate() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestAggregateMultiArrayUpdate (correctness)"} Impl$$_module.__default.TestAggregateMultiArrayUpdate() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var matrix#0: ref
     where $Is(matrix#0, Tclass._System.array2(TInt))
       && $IsAlloc(matrix#0, Tclass._System.array2(TInt), $Heap);
  var $lambdaHeap#0: Heap;
  var i#0: int;
  var j#0: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;
  var $nw: ref;
  var m##0: ref;
  var m'#0: ref
     where $Is(m'#0, Tclass._System.array2(TInt))
       && $IsAlloc(m'#0, Tclass._System.array2(TInt), $Heap);
  var $lambdaHeap#1: Heap;
  var i#1: int;
  var j#1: int;
  var $_Frame#l1: [ref,Field]bool;
  var lambdaResult#1: int;
  var m0#0: ref
     where $Is(m0#0, Tclass._System.array2(TInt))
       && $IsAlloc(m0#0, Tclass._System.array2(TInt), $Heap);
  var m1#0: ref
     where $Is(m1#0, Tclass._System.array2(TInt))
       && $IsAlloc(m1#0, Tclass._System.array2(TInt), $Heap);
  var m2#0: ref
     where $Is(m2#0, Tclass._System.array2(TInt))
       && $IsAlloc(m2#0, Tclass._System.array2(TInt), $Heap);
  var $rhs##0: ref;
  var $rhs##1: ref;
  var $rhs##2: ref;
  var m##1: ref;
  var m##2: ref;
  var m##3: ref;
  var m##4: ref;
  var m##5: ref;
  var ##m#0: ref;
  var ##m'#0: ref;
  var $rhs#0: int;
  var ##m#1: ref;
  var ##m'#1: ref;

    // AddMethodImpl: TestAggregateMultiArrayUpdate, Impl$$_module.__default.TestAggregateMultiArrayUpdate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(38,14)
    assume true;
    assert {:id "id38"} 0 <= LitInt(12);
    assert {:id "id39"} 0 <= LitInt(3);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc i#0;
        havoc j#0;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
            assume {:id "id40"} lambdaResult#0 == i#0 + j#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TInt);
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(12);
    assume _System.array2.Length1($nw) == LitInt(3);
    assert {:id "id41"} {:subsumption 0} (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < LitInt(12)
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < LitInt(3)
         ==> Requires2(TInt, 
          TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                Handle2((lambda $l#0#heap#0: Heap, $l#0#i#0: Box, $l#0#j#0: Box :: 
                    $Box($Unbox($l#0#i#0): int + $Unbox($l#0#j#0): int)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box, $l#0#j#0: Box :: 
                    $IsBox($l#0#i#0, TInt) && $IsBox($l#0#j#0, TInt)), 
                  (lambda $l#0#heap#0: Heap, $l#0#i#0: Box, $l#0#j#0: Box :: 
                    SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
              $LS($LZ))), 
          $Box(arrayinit#0#i0#0), 
          $Box(arrayinit#0#i1#0)));
    assume (forall arrayinit#0#i0#0: int, arrayinit#0#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0)) } 
      0 <= arrayinit#0#i0#0
           && arrayinit#0#i0#0 < LitInt(12)
           && 
          0 <= arrayinit#0#i1#0
           && arrayinit#0#i1#0 < LitInt(3)
         ==> $Unbox(read($Heap, $nw, MultiIndexField(IndexField(arrayinit#0#i0#0), arrayinit#0#i1#0))): int
           == $Unbox(Apply2(TInt, 
              TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle2((lambda $l#0#heap#0: Heap, $l#0#i#0: Box, $l#0#j#0: Box :: 
                        $Box($Unbox($l#0#i#0): int + $Unbox($l#0#j#0): int)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box, $l#0#j#0: Box :: 
                        $IsBox($l#0#i#0, TInt) && $IsBox($l#0#j#0, TInt)), 
                      (lambda $l#0#heap#0: Heap, $l#0#i#0: Box, $l#0#j#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $LS($LZ))), 
              $Box(arrayinit#0#i0#0), 
              $Box(arrayinit#0#i1#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    matrix#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(39,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##0 := matrix#0;
    call {:id "id43"} Call$$_module.__default.PrintMatrix(m##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(42,10)
    assume true;
    assert {:id "id44"} matrix#0 != null;
    assert {:id "id45"} 0 <= _System.array2.Length1(matrix#0);
    assert {:id "id46"} matrix#0 != null;
    assert {:id "id47"} 0 <= _System.array2.Length0(matrix#0);
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#1;
        assume $IsGoodHeap($lambdaHeap#1);
        assume $Heap == $lambdaHeap#1 || $HeapSucc($Heap, $lambdaHeap#1);
        havoc i#1;
        havoc j#1;
        if (true)
        {
            $_Frame#l1 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#1, $o, alloc)): bool ==> $o == matrix#0);
            if (LitInt(0) <= i#1)
            {
                assert {:id "id48"} matrix#0 != null;
            }

            if (LitInt(0) <= i#1 && i#1 < _System.array2.Length1(matrix#0))
            {
                if (LitInt(0) <= j#1)
                {
                    assert {:id "id49"} matrix#0 != null;
                }
            }

            if (LitInt(0) <= i#1
               && i#1 < _System.array2.Length1(matrix#0)
               && 
              LitInt(0) <= j#1
               && j#1 < _System.array2.Length0(matrix#0))
            {
                assert {:id "id50"} matrix#0 != null;
                assert {:id "id51"} 0 <= j#1 && j#1 < _System.array2.Length0(matrix#0);
                assert {:id "id52"} 0 <= i#1 && i#1 < _System.array2.Length1(matrix#0);
                assert {:id "id53"} $_Frame#l1[matrix#0, MultiIndexField(IndexField(j#1), i#1)];
                assume {:id "id54"} lambdaResult#1
                   == $Unbox(read($Heap, matrix#0, MultiIndexField(IndexField(j#1), i#1))): int;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#1, TInt);
            }
        }

        assume false;
    }

    // End Comprehension WF check
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == _System.array2.Length1(matrix#0);
    assume _System.array2.Length1($nw) == _System.array2.Length0(matrix#0);
    assert {:id "id55"} {:subsumption 0} (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < _System.array2.Length1(matrix#0)
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < _System.array2.Length0(matrix#0)
         ==> Requires2(TInt, 
          TInt, 
          TInt, 
          $Heap, 
          Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                Handle2((lambda $l#1#heap#0: Heap, $l#1#i#0: Box, $l#1#j#0: Box :: 
                    $Box($Unbox(read($l#1#heap#0, 
                          matrix#0, 
                          MultiIndexField(IndexField($Unbox($l#1#j#0): int), $Unbox($l#1#i#0): int))): int)), 
                  (lambda $l#1#heap#0: Heap, $l#1#i#0: Box, $l#1#j#0: Box :: 
                    $IsBox($l#1#i#0, TInt)
                       && $IsBox($l#1#j#0, TInt)
                       && 
                      LitInt(0) <= $Unbox($l#1#i#0): int
                       && $Unbox($l#1#i#0): int < _System.array2.Length1(matrix#0)
                       && 
                      LitInt(0) <= $Unbox($l#1#j#0): int
                       && $Unbox($l#1#j#0): int < _System.array2.Length0(matrix#0)), 
                  (lambda $l#1#heap#0: Heap, $l#1#i#0: Box, $l#1#j#0: Box :: 
                    SetRef_to_SetBox((lambda $l#1#o#0: ref :: $l#1#o#0 == matrix#0))))), 
              $LS($LZ))), 
          $Box(arrayinit#1#i0#0), 
          $Box(arrayinit#1#i1#0)));
    assume (forall arrayinit#1#i0#0: int, arrayinit#1#i1#0: int :: 
      { read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0)) } 
      0 <= arrayinit#1#i0#0
           && arrayinit#1#i0#0 < _System.array2.Length1(matrix#0)
           && 
          0 <= arrayinit#1#i1#0
           && arrayinit#1#i1#0 < _System.array2.Length0(matrix#0)
         ==> $Unbox(read($Heap, $nw, MultiIndexField(IndexField(arrayinit#1#i0#0), arrayinit#1#i1#0))): int
           == $Unbox(Apply2(TInt, 
              TInt, 
              TInt, 
              $Heap, 
              Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                    Handle2((lambda $l#1#heap#0: Heap, $l#1#i#0: Box, $l#1#j#0: Box :: 
                        $Box($Unbox(read($l#1#heap#0, 
                              matrix#0, 
                              MultiIndexField(IndexField($Unbox($l#1#j#0): int), $Unbox($l#1#i#0): int))): int)), 
                      (lambda $l#1#heap#0: Heap, $l#1#i#0: Box, $l#1#j#0: Box :: 
                        $IsBox($l#1#i#0, TInt)
                           && $IsBox($l#1#j#0, TInt)
                           && 
                          LitInt(0) <= $Unbox($l#1#i#0): int
                           && $Unbox($l#1#i#0): int < _System.array2.Length1(matrix#0)
                           && 
                          LitInt(0) <= $Unbox($l#1#j#0): int
                           && $Unbox($l#1#j#0): int < _System.array2.Length0(matrix#0)), 
                      (lambda $l#1#heap#0: Heap, $l#1#i#0: Box, $l#1#j#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1#o#0: ref :: $l#1#o#0 == matrix#0))))), 
                  $LS($LZ))), 
              $Box(arrayinit#1#i0#0), 
              $Box(arrayinit#1#i1#0))): int);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    m'#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(44,30)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type array2<int>
    // TrCallStmt: Adding lhs with type array2<int>
    // TrCallStmt: Adding lhs with type array2<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##1 := matrix#0;
    call {:id "id57"} $rhs##0, $rhs##1, $rhs##2 := Call$$_module.__default.Transpose(TInt, m##1);
    // TrCallStmt: After ProcessCallStmt
    m0#0 := $rhs##0;
    m1#0 := $rhs##1;
    m2#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(45,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##2 := m'#0;
    call {:id "id61"} Call$$_module.__default.PrintMatrix(m##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(46,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##3 := m0#0;
    call {:id "id62"} Call$$_module.__default.PrintMatrix(m##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(47,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##4 := m1#0;
    call {:id "id63"} Call$$_module.__default.PrintMatrix(m##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(48,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    m##5 := m2#0;
    call {:id "id64"} Call$$_module.__default.PrintMatrix(m##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(50,3)
    ##m#0 := m0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._System.array2(TInt), $Heap);
    ##m'#0 := m'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m'#0, Tclass._System.array2(TInt), $Heap);
    assume _module.__default.MatrixEqual#canCall(TInt, $Heap, m0#0, m'#0);
    assume _module.__default.MatrixEqual#canCall(TInt, $Heap, m0#0, m'#0);
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(51,11)
    assert {:id "id65"} m'#0 != null;
    assert {:id "id66"} 0 <= LitInt(2) && LitInt(2) < _System.array2.Length0(m'#0);
    assert {:id "id67"} 0 <= LitInt(2) && LitInt(2) < _System.array2.Length1(m'#0);
    assume true;
    assert {:id "id68"} $_ModifiesFrame[m'#0, MultiIndexField(IndexField(LitInt(2)), LitInt(2))];
    assume true;
    $rhs#0 := LitInt(87);
    $Heap := update($Heap, m'#0, MultiIndexField(IndexField(LitInt(2)), LitInt(2)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(52,3)
    ##m#1 := m0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, Tclass._System.array2(TInt), $Heap);
    ##m'#1 := m'#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m'#1, Tclass._System.array2(TInt), $Heap);
    assume _module.__default.MatrixEqual#canCall(TInt, $Heap, m0#0, m'#0);
    assume _module.__default.MatrixEqual#canCall(TInt, $Heap, m0#0, m'#0);
    assume true;
}



procedure {:verboseName "PrintMatrix (well-formedness)"} CheckWellFormed$$_module.__default.PrintMatrix(m#0: ref
       where $Is(m#0, Tclass._System.array2(TInt))
         && $IsAlloc(m#0, Tclass._System.array2(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintMatrix (call)"} Call$$_module.__default.PrintMatrix(m#0: ref
       where $Is(m#0, Tclass._System.array2(TInt))
         && $IsAlloc(m#0, Tclass._System.array2(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintMatrix (correctness)"} Impl$$_module.__default.PrintMatrix(m#0: ref
       where $Is(m#0, Tclass._System.array2(TInt))
         && $IsAlloc(m#0, Tclass._System.array2(TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintMatrix (correctness)"} Impl$$_module.__default.PrintMatrix(m#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var j#0_0: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;

    // AddMethodImpl: PrintMatrix, Impl$$_module.__default.PrintMatrix
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(56,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(57,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _System.array2.Length0(m#0) - i#0;
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
      free invariant _System.array2.Length0(m#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id72"} m#0 != null;
            assume true;
            assume false;
        }

        assert {:id "id73"} m#0 != null;
        assume true;
        if (_System.array2.Length0(m#0) <= i#0)
        {
            break;
        }

        $decr$loop#00 := _System.array2.Length0(m#0) - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(58,11)
        assume true;
        assume true;
        j#0_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(59,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := _System.array2.Length1(m#0) - j#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant _System.array2.Length1(m#0) - j#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assert {:id "id75"} m#0 != null;
                assume true;
                assume false;
            }

            assert {:id "id76"} m#0 != null;
            assume true;
            if (_System.array2.Length1(m#0) <= j#0_0)
            {
                break;
            }

            $decr$loop#0_00 := _System.array2.Length1(m#0) - j#0_0;
            push;
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(60,7)
            assert {:id "id77"} m#0 != null;
            assert {:id "id78"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array2.Length0(m#0);
            assert {:id "id79"} {:subsumption 0} 0 <= j#0_0 && j#0_0 < _System.array2.Length1(m#0);
            assume true;
            assume true;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(61,9)
            assume true;
            assume true;
            j#0_0 := j#0_0 + 1;
            pop;
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(59,5)
            assert {:id "id81"} 0 <= $decr$loop#0_00 || _System.array2.Length1(m#0) - j#0_0 == $decr$loop#0_00;
            assert {:id "id82"} _System.array2.Length1(m#0) - j#0_0 < $decr$loop#0_00;
        }

        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(63,5)
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(64,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(57,3)
        assert {:id "id84"} 0 <= $decr$loop#00 || _System.array2.Length0(m#0) - i#0 == $decr$loop#00;
        assert {:id "id85"} _System.array2.Length0(m#0) - i#0 < $decr$loop#00;
    }
}



procedure {:verboseName "Transpose (well-formedness)"} CheckWellFormed$$_module.__default.Transpose(_module._default.Transpose$T: Ty, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m#0, Tclass._System.array2(_module._default.Transpose$T), $Heap))
   returns (m0#0: ref
       where $Is(m0#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m0#0, Tclass._System.array2(_module._default.Transpose$T), $Heap), 
    m1#0: ref
       where $Is(m1#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m1#0, Tclass._System.array2(_module._default.Transpose$T), $Heap), 
    m2#0: ref
       where $Is(m2#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m2#0, Tclass._System.array2(_module._default.Transpose$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Transpose (call)"} Call$$_module.__default.Transpose(_module._default.Transpose$T: Ty, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m#0, Tclass._System.array2(_module._default.Transpose$T), $Heap))
   returns (m0#0: ref
       where $Is(m0#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m0#0, Tclass._System.array2(_module._default.Transpose$T), $Heap), 
    m1#0: ref
       where $Is(m1#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m1#0, Tclass._System.array2(_module._default.Transpose$T), $Heap), 
    m2#0: ref
       where $Is(m2#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m2#0, Tclass._System.array2(_module._default.Transpose$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id91"} m0#0 != null && !$Unbox(read(old($Heap), m0#0, alloc)): bool;
  ensures {:id "id92"} m1#0 != null && !$Unbox(read(old($Heap), m1#0, alloc)): bool;
  ensures {:id "id93"} m2#0 != null && !$Unbox(read(old($Heap), m2#0, alloc)): bool;
  free ensures _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m1#0)
     && (_module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m1#0)
       ==> _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m2#0));
  free ensures {:id "id94"} _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m1#0)
     && 
    _module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m1#0)
     && 
    _System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(_System.array2.Length0(m0#0)), $Box(_System.array2.Length1(m0#0))), 
      #_System._tuple#2._#Make2($Box(_System.array2.Length0(m1#0)), $Box(_System.array2.Length1(m1#0))))
     && (forall i#0: int, j#0: int :: 
      { read($Heap, m1#0, MultiIndexField(IndexField(i#0), j#0)) } 
        { read($Heap, m0#0, MultiIndexField(IndexField(i#0), j#0)) } 
      LitInt(0) <= i#0
           && i#0 < _System.array2.Length0(m0#0)
           && 
          LitInt(0) <= j#0
           && j#0 < _System.array2.Length1(m0#0)
         ==> read($Heap, m0#0, MultiIndexField(IndexField(i#0), j#0))
           == read($Heap, m1#0, MultiIndexField(IndexField(i#0), j#0)));
  free ensures {:id "id95"} _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m2#0)
     && 
    _module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m2#0)
     && 
    _System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(_System.array2.Length0(m0#0)), $Box(_System.array2.Length1(m0#0))), 
      #_System._tuple#2._#Make2($Box(_System.array2.Length0(m2#0)), $Box(_System.array2.Length1(m2#0))))
     && (forall i#1: int, j#1: int :: 
      { read($Heap, m2#0, MultiIndexField(IndexField(i#1), j#1)) } 
        { read($Heap, m0#0, MultiIndexField(IndexField(i#1), j#1)) } 
      LitInt(0) <= i#1
           && i#1 < _System.array2.Length0(m0#0)
           && 
          LitInt(0) <= j#1
           && j#1 < _System.array2.Length1(m0#0)
         ==> read($Heap, m0#0, MultiIndexField(IndexField(i#1), j#1))
           == read($Heap, m2#0, MultiIndexField(IndexField(i#1), j#1)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Transpose (correctness)"} Impl$$_module.__default.Transpose(_module._default.Transpose$T: Ty, 
    m#0: ref
       where $Is(m#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m#0, Tclass._System.array2(_module._default.Transpose$T), $Heap))
   returns (m0#0: ref
       where $Is(m0#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m0#0, Tclass._System.array2(_module._default.Transpose$T), $Heap), 
    m1#0: ref
       where $Is(m1#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m1#0, Tclass._System.array2(_module._default.Transpose$T), $Heap), 
    m2#0: ref
       where $Is(m2#0, Tclass._System.array2(_module._default.Transpose$T))
         && $IsAlloc(m2#0, Tclass._System.array2(_module._default.Transpose$T), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id96"} m0#0 != null && !$Unbox(read(old($Heap), m0#0, alloc)): bool;
  ensures {:id "id97"} m1#0 != null && !$Unbox(read(old($Heap), m1#0, alloc)): bool;
  ensures {:id "id98"} m2#0 != null && !$Unbox(read(old($Heap), m2#0, alloc)): bool;
  free ensures _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m1#0)
     && (_module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m1#0)
       ==> _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m2#0));
  ensures {:id "id99"} _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m1#0)
     ==> _module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m1#0)
       || _System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(_System.array2.Length0(m0#0)), $Box(_System.array2.Length1(m0#0))), 
        #_System._tuple#2._#Make2($Box(_System.array2.Length0(m1#0)), $Box(_System.array2.Length1(m1#0))));
  ensures {:id "id100"} _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m1#0)
     ==> _module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m1#0)
       || (forall i#2: int, j#2: int :: 
        { read($Heap, m1#0, MultiIndexField(IndexField(i#2), j#2)) } 
          { read($Heap, m0#0, MultiIndexField(IndexField(i#2), j#2)) } 
        LitInt(0) <= i#2
             && i#2 < _System.array2.Length0(m0#0)
             && 
            LitInt(0) <= j#2
             && j#2 < _System.array2.Length1(m0#0)
           ==> read($Heap, m0#0, MultiIndexField(IndexField(i#2), j#2))
             == read($Heap, m1#0, MultiIndexField(IndexField(i#2), j#2)));
  ensures {:id "id101"} _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m2#0)
     ==> _module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m2#0)
       || _System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(_System.array2.Length0(m0#0)), $Box(_System.array2.Length1(m0#0))), 
        #_System._tuple#2._#Make2($Box(_System.array2.Length0(m2#0)), $Box(_System.array2.Length1(m2#0))));
  ensures {:id "id102"} _module.__default.MatrixEqual#canCall(_module._default.Transpose$T, $Heap, m0#0, m2#0)
     ==> _module.__default.MatrixEqual(_module._default.Transpose$T, $Heap, m0#0, m2#0)
       || (forall i#3: int, j#3: int :: 
        { read($Heap, m2#0, MultiIndexField(IndexField(i#3), j#3)) } 
          { read($Heap, m0#0, MultiIndexField(IndexField(i#3), j#3)) } 
        LitInt(0) <= i#3
             && i#3 < _System.array2.Length0(m0#0)
             && 
            LitInt(0) <= j#3
             && j#3 < _System.array2.Length1(m0#0)
           ==> read($Heap, m0#0, MultiIndexField(IndexField(i#3), j#3))
             == read($Heap, m2#0, MultiIndexField(IndexField(i#3), j#3)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Transpose (correctness)"} Impl$$_module.__default.Transpose(_module._default.Transpose$T: Ty, m#0: ref)
   returns (m0#0: ref, m1#0: ref, m2#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var X#0: int;
  var Y#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: ref;
  var $nw: ref;
  var $rhs#3: ref;
  var $rhs#4: ref;
  var i#0_0: int;
  var j#0_0: int;
  var i#0_1: int;
  var j#0_1: int;
  var $prevHeap: Heap;
  var i#1_0: int;
  var j#1_0: int;
  var i#1_1: int;
  var j#1_1: int;
  var i#2_0: int;
  var j#2_0: int;
  var i#2_1: int;
  var j#2_1: int;

    // AddMethodImpl: Transpose, Impl$$_module.__default.Transpose
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(72,12)
    assume true;
    assume true;
    assert {:id "id103"} m#0 != null;
    assume true;
    $rhs#0 := _System.array2.Length1(m#0);
    assert {:id "id105"} m#0 != null;
    assume true;
    $rhs#1 := _System.array2.Length0(m#0);
    X#0 := $rhs#0;
    Y#0 := $rhs#1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(73,14)
    assume true;
    assume true;
    assume true;
    assert {:id "id109"} 0 <= X#0;
    assert {:id "id110"} 0 <= Y#0;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(_module._default.Transpose$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == X#0;
    assume _System.array2.Length1($nw) == Y#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#2 := $nw;
    assert {:id "id112"} 0 <= X#0;
    assert {:id "id113"} 0 <= Y#0;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(_module._default.Transpose$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == X#0;
    assume _System.array2.Length1($nw) == Y#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#3 := $nw;
    assert {:id "id115"} 0 <= X#0;
    assert {:id "id116"} 0 <= Y#0;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(_module._default.Transpose$T));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == X#0;
    assume _System.array2.Length1($nw) == Y#0;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#4 := $nw;
    m0#0 := $rhs#2;
    m1#0 := $rhs#3;
    m2#0 := $rhs#4;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(74,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#0_0;
        havoc j#0_0;
        assume true;
        if (LitInt(0) <= i#0_0)
        {
        }

        if (LitInt(0) <= i#0_0 && i#0_0 < X#0)
        {
            if (LitInt(0) <= j#0_0)
            {
            }
        }

        assume true;
        assume LitInt(0) <= i#0_0 && i#0_0 < X#0 && LitInt(0) <= j#0_0 && j#0_0 < Y#0;
        assert {:id "id121"} m0#0 != null;
        assert {:id "id122"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array2.Length0(m0#0);
        assert {:id "id123"} {:subsumption 0} 0 <= j#0_0 && j#0_0 < _System.array2.Length1(m0#0);
        assume true;
        assert {:id "id124"} $_ModifiesFrame[m0#0, MultiIndexField(IndexField(i#0_0), j#0_0)];
        assert {:id "id125"} m#0 != null;
        assert {:id "id126"} {:subsumption 0} 0 <= j#0_0 && j#0_0 < _System.array2.Length0(m#0);
        assert {:id "id127"} {:subsumption 0} 0 <= i#0_0 && i#0_0 < _System.array2.Length1(m#0);
        assume true;
        havoc i#0_1;
        havoc j#0_1;
        assume true;
        assume LitInt(0) <= i#0_1 && i#0_1 < X#0 && LitInt(0) <= j#0_1 && j#0_1 < Y#0;
        assume !(i#0_0 == i#0_1 && j#0_0 == j#0_1);
        assert {:id "id128"} m0#0 != m0#0
           || MultiIndexField(IndexField(i#0_0), j#0_0)
             != MultiIndexField(IndexField(i#0_1), j#0_1)
           || read($Heap, m#0, MultiIndexField(IndexField(j#0_0), i#0_0))
             == read($Heap, m#0, MultiIndexField(IndexField(j#0_1), i#0_1));
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists i#0_2: int, j#0_2: int :: 
              LitInt(0) <= i#0_2
                 && i#0_2 < X#0
                 && 
                LitInt(0) <= j#0_2
                 && j#0_2 < Y#0
                 && $o == m0#0
                 && $f == MultiIndexField(IndexField(i#0_2), j#0_2)));
        assume (forall i#0_2: int, j#0_2: int :: 
          LitInt(0) <= i#0_2 && i#0_2 < X#0 && LitInt(0) <= j#0_2 && j#0_2 < Y#0
             ==> read($Heap, m0#0, MultiIndexField(IndexField(i#0_2), j#0_2))
               == read($prevHeap, m#0, MultiIndexField(IndexField(j#0_2), i#0_2)));
    }

    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(77,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#1_0;
        havoc j#1_0;
        assume LitInt(0) <= i#1_0 && LitInt(0) <= j#1_0;
        if (i#1_0 < X#0)
        {
        }

        assume true;
        assume i#1_0 < X#0 && j#1_0 < Y#0;
        assert {:id "id129"} m1#0 != null;
        assert {:id "id130"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array2.Length0(m1#0);
        assert {:id "id131"} {:subsumption 0} 0 <= j#1_0 && j#1_0 < _System.array2.Length1(m1#0);
        assume true;
        assert {:id "id132"} $_ModifiesFrame[m1#0, MultiIndexField(IndexField(i#1_0), j#1_0)];
        assert {:id "id133"} m#0 != null;
        assert {:id "id134"} {:subsumption 0} 0 <= j#1_0 && j#1_0 < _System.array2.Length0(m#0);
        assert {:id "id135"} {:subsumption 0} 0 <= i#1_0 && i#1_0 < _System.array2.Length1(m#0);
        assume true;
        havoc i#1_1;
        havoc j#1_1;
        assume LitInt(0) <= i#1_1 && LitInt(0) <= j#1_1;
        assume i#1_1 < X#0 && j#1_1 < Y#0;
        assume !(i#1_0 == i#1_1 && j#1_0 == j#1_1);
        assert {:id "id136"} m1#0 != m1#0
           || MultiIndexField(IndexField(i#1_0), j#1_0)
             != MultiIndexField(IndexField(i#1_1), j#1_1)
           || read($Heap, m#0, MultiIndexField(IndexField(j#1_0), i#1_0))
             == read($Heap, m#0, MultiIndexField(IndexField(j#1_1), i#1_1));
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists i#1_2: int, j#1_2: int :: 
              LitInt(0) <= i#1_2
                 && LitInt(0) <= j#1_2
                 && 
                i#1_2 < X#0
                 && j#1_2 < Y#0
                 && $o == m1#0
                 && $f == MultiIndexField(IndexField(i#1_2), j#1_2)));
        assume (forall i#1_2: int, j#1_2: int :: 
          LitInt(0) <= i#1_2 && LitInt(0) <= j#1_2 && i#1_2 < X#0 && j#1_2 < Y#0
             ==> read($Heap, m1#0, MultiIndexField(IndexField(i#1_2), j#1_2))
               == read($prevHeap, m#0, MultiIndexField(IndexField(j#1_2), i#1_2)));
    }

    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(80,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc i#2_0;
        havoc j#2_0;
        assume LitInt(0) <= i#2_0;
        if (0 - Y#0 < 0 - j#2_0)
        {
        }

        if (0 - Y#0 < 0 - j#2_0 && 3 + i#2_0 < X#0 + 3)
        {
        }

        assume true;
        assume 0 - Y#0 < 0 - j#2_0 && 3 + i#2_0 < X#0 + 3 && j#2_0 >= LitInt(0);
        assert {:id "id137"} m2#0 != null;
        assert {:id "id138"} {:subsumption 0} 0 <= i#2_0 && i#2_0 < _System.array2.Length0(m2#0);
        assert {:id "id139"} {:subsumption 0} 0 <= j#2_0 && j#2_0 < _System.array2.Length1(m2#0);
        assume true;
        assert {:id "id140"} $_ModifiesFrame[m2#0, MultiIndexField(IndexField(i#2_0), j#2_0)];
        assert {:id "id141"} m#0 != null;
        assert {:id "id142"} {:subsumption 0} 0 <= j#2_0 && j#2_0 < _System.array2.Length0(m#0);
        assert {:id "id143"} {:subsumption 0} 0 <= i#2_0 && i#2_0 < _System.array2.Length1(m#0);
        assume true;
        havoc i#2_1;
        havoc j#2_1;
        assume LitInt(0) <= i#2_1;
        assume 0 - Y#0 < 0 - j#2_1 && 3 + i#2_1 < X#0 + 3 && j#2_1 >= LitInt(0);
        assume !(i#2_0 == i#2_1 && j#2_0 == j#2_1);
        assert {:id "id144"} m2#0 != m2#0
           || MultiIndexField(IndexField(i#2_0), j#2_0)
             != MultiIndexField(IndexField(i#2_1), j#2_1)
           || read($Heap, m#0, MultiIndexField(IndexField(j#2_0), i#2_0))
             == read($Heap, m#0, MultiIndexField(IndexField(j#2_1), i#2_1));
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists i#2_2: int, j#2_2: int :: 
              LitInt(0) <= i#2_2
                 && 
                0 - Y#0 < 0 - j#2_2
                 && 3 + i#2_2 < X#0 + 3
                 && j#2_2 >= LitInt(0)
                 && $o == m2#0
                 && $f == MultiIndexField(IndexField(i#2_2), j#2_2)));
        assume (forall i#2_2: int, j#2_2: int :: 
          LitInt(0) <= i#2_2
               && 
              0 - Y#0 < 0 - j#2_2
               && 3 + i#2_2 < X#0 + 3
               && j#2_2 >= LitInt(0)
             ==> read($Heap, m2#0, MultiIndexField(IndexField(i#2_2), j#2_2))
               == read($prevHeap, m#0, MultiIndexField(IndexField(j#2_2), i#2_2)));
    }
}



// function declaration for _module._default.MatrixEqual
function _module.__default.MatrixEqual(_module._default.MatrixEqual$T: Ty, $heap: Heap, m#0: ref, m'#0: ref) : bool
uses {
// definition axiom for _module.__default.MatrixEqual (revealed)
axiom {:id "id145"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.MatrixEqual$T: Ty, $Heap: Heap, m#0: ref, m'#0: ref :: 
    { _module.__default.MatrixEqual(_module._default.MatrixEqual$T, $Heap, m#0, m'#0), $IsGoodHeap($Heap) } 
    _module.__default.MatrixEqual#canCall(_module._default.MatrixEqual$T, $Heap, m#0, m'#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(m#0, Tclass._System.array2(_module._default.MatrixEqual$T))
           && $Is(m'#0, Tclass._System.array2(_module._default.MatrixEqual$T)))
       ==> _module.__default.MatrixEqual(_module._default.MatrixEqual$T, $Heap, m#0, m'#0)
         == (_System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(_System.array2.Length0(m#0)), $Box(_System.array2.Length1(m#0))), 
            #_System._tuple#2._#Make2($Box(_System.array2.Length0(m'#0)), $Box(_System.array2.Length1(m'#0))))
           && (forall i#0: int, j#0: int :: 
            { read($Heap, m'#0, MultiIndexField(IndexField(i#0), j#0)) } 
              { read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0)) } 
            LitInt(0) <= i#0
                 && i#0 < _System.array2.Length0(m#0)
                 && 
                LitInt(0) <= j#0
                 && j#0 < _System.array2.Length1(m#0)
               ==> read($Heap, m#0, MultiIndexField(IndexField(i#0), j#0))
                 == read($Heap, m'#0, MultiIndexField(IndexField(i#0), j#0)))));
}

function _module.__default.MatrixEqual#canCall(_module._default.MatrixEqual$T: Ty, $heap: Heap, m#0: ref, m'#0: ref) : bool;

// frame axiom for _module.__default.MatrixEqual
axiom (forall _module._default.MatrixEqual$T: Ty, $h0: Heap, $h1: Heap, m#0: ref, m'#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.MatrixEqual(_module._default.MatrixEqual$T, $h1, m#0, m'#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.MatrixEqual#canCall(_module._default.MatrixEqual$T, $h0, m#0, m'#0)
         || ($Is(m#0, Tclass._System.array2(_module._default.MatrixEqual$T))
           && $Is(m'#0, Tclass._System.array2(_module._default.MatrixEqual$T))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && ($o == m#0 || $o == m'#0)
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.MatrixEqual(_module._default.MatrixEqual$T, $h0, m#0, m'#0)
       == _module.__default.MatrixEqual(_module._default.MatrixEqual$T, $h1, m#0, m'#0));

function _module.__default.MatrixEqual#requires(Ty, Heap, ref, ref) : bool;

// #requires axiom for _module.__default.MatrixEqual
axiom (forall _module._default.MatrixEqual$T: Ty, $Heap: Heap, m#0: ref, m'#0: ref :: 
  { _module.__default.MatrixEqual#requires(_module._default.MatrixEqual$T, $Heap, m#0, m'#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(m#0, Tclass._System.array2(_module._default.MatrixEqual$T))
       && $Is(m'#0, Tclass._System.array2(_module._default.MatrixEqual$T))
     ==> _module.__default.MatrixEqual#requires(_module._default.MatrixEqual$T, $Heap, m#0, m'#0)
       == true);

procedure {:verboseName "MatrixEqual (well-formedness)"} CheckWellformed$$_module.__default.MatrixEqual(_module._default.MatrixEqual$T: Ty, 
    m#0: ref where $Is(m#0, Tclass._System.array2(_module._default.MatrixEqual$T)), 
    m'#0: ref where $Is(m'#0, Tclass._System.array2(_module._default.MatrixEqual$T)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MatrixEqual (well-formedness)"} CheckWellformed$$_module.__default.MatrixEqual(_module._default.MatrixEqual$T: Ty, m#0: ref, m'#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var i#1: int;
  var j#1: int;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == m#0 || $o == m'#0);
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
        assert {:id "id146"} m#0 != null;
        assert {:id "id147"} m#0 != null;
        assert {:id "id148"} m'#0 != null;
        assert {:id "id149"} m'#0 != null;
        if (_System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(_System.array2.Length0(m#0)), $Box(_System.array2.Length1(m#0))), 
          #_System._tuple#2._#Make2($Box(_System.array2.Length0(m'#0)), $Box(_System.array2.Length1(m'#0)))))
        {
            // Begin Comprehension WF check
            havoc i#1;
            havoc j#1;
            if (true)
            {
                if (LitInt(0) <= i#1)
                {
                    assert {:id "id150"} m#0 != null;
                }

                if (LitInt(0) <= i#1 && i#1 < _System.array2.Length0(m#0))
                {
                    if (LitInt(0) <= j#1)
                    {
                        assert {:id "id151"} m#0 != null;
                    }
                }

                if (LitInt(0) <= i#1
                   && i#1 < _System.array2.Length0(m#0)
                   && 
                  LitInt(0) <= j#1
                   && j#1 < _System.array2.Length1(m#0))
                {
                    assert {:id "id152"} m#0 != null;
                    assert {:id "id153"} 0 <= i#1 && i#1 < _System.array2.Length0(m#0);
                    assert {:id "id154"} 0 <= j#1 && j#1 < _System.array2.Length1(m#0);
                    b$reqreads#0 := $_ReadsFrame[m#0, MultiIndexField(IndexField(i#1), j#1)];
                    assert {:id "id155"} m'#0 != null;
                    assert {:id "id156"} 0 <= i#1 && i#1 < _System.array2.Length0(m'#0);
                    assert {:id "id157"} 0 <= j#1 && j#1 < _System.array2.Length1(m'#0);
                    b$reqreads#1 := $_ReadsFrame[m'#0, MultiIndexField(IndexField(i#1), j#1)];
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id158"} _module.__default.MatrixEqual(_module._default.MatrixEqual$T, $Heap, m#0, m'#0)
           == (_System.Tuple2#Equal(#_System._tuple#2._#Make2($Box(_System.array2.Length0(m#0)), $Box(_System.array2.Length1(m#0))), 
              #_System._tuple#2._#Make2($Box(_System.array2.Length0(m'#0)), $Box(_System.array2.Length1(m'#0))))
             && (forall i#2: int, j#2: int :: 
              { read($Heap, m'#0, MultiIndexField(IndexField(i#2), j#2)) } 
                { read($Heap, m#0, MultiIndexField(IndexField(i#2), j#2)) } 
              LitInt(0) <= i#2
                   && i#2 < _System.array2.Length0(m#0)
                   && 
                  LitInt(0) <= j#2
                   && j#2 < _System.array2.Length1(m#0)
                 ==> read($Heap, m#0, MultiIndexField(IndexField(i#2), j#2))
                   == read($Heap, m'#0, MultiIndexField(IndexField(i#2), j#2))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.MatrixEqual(_module._default.MatrixEqual$T, $Heap, m#0, m'#0), 
          TBool);
        assert {:id "id159"} b$reqreads#0;
        assert {:id "id160"} b$reqreads#1;
        return;

        assume false;
    }
}



procedure {:verboseName "TestAggregateFieldUpdate (well-formedness)"} CheckWellFormed$$_module.__default.TestAggregateFieldUpdate();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestAggregateFieldUpdate (call)"} Call$$_module.__default.TestAggregateFieldUpdate();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestAggregateFieldUpdate (correctness)"} Impl$$_module.__default.TestAggregateFieldUpdate() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestAggregateFieldUpdate (correctness)"} Impl$$_module.__default.TestAggregateFieldUpdate() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: ref
     where defass#a#0
       ==> $Is(a#0, Tclass._module.Node()) && $IsAlloc(a#0, Tclass._module.Node(), $Heap);
  var $rhs##0: ref;
  var n##0: int;
  var defass#b#0: bool;
  var b#0: ref
     where defass#b#0
       ==> $Is(b#0, Tclass._module.Node()) && $IsAlloc(b#0, Tclass._module.Node(), $Heap);
  var $rhs##1: ref;
  var n##1: int;
  var ##that#0: ref;
  var n##2: int;
  var ##that#1: ref;

    // AddMethodImpl: TestAggregateFieldUpdate, Impl$$_module.__default.TestAggregateFieldUpdate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(95,23)
    assume true;
    // TrCallStmt: Adding lhs with type Node
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id161"} $Is(LitInt(4), Tclass._System.nat());
    n##0 := LitInt(4);
    call {:id "id162"} $rhs##0 := Call$$_module.Node.Create(n##0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $rhs##0;
    defass#a#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(96,23)
    assume true;
    // TrCallStmt: Adding lhs with type Node
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id164"} $Is(LitInt(7), Tclass._System.nat());
    n##1 := LitInt(7);
    call {:id "id165"} $rhs##1 := Call$$_module.Node.Create(n##1);
    // TrCallStmt: After ProcessCallStmt
    b#0 := $rhs##1;
    defass#b#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(97,10)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id167"} defass#a#0;
    assume true;
    assert {:id "id168"} a#0 != null;
    call {:id "id169"} Call$$_module.Node.Print(a#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(98,10)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id170"} defass#b#0;
    assume true;
    assert {:id "id171"} b#0 != null;
    call {:id "id172"} Call$$_module.Node.Print(b#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(100,3)
    assert {:id "id173"} defass#b#0;
    assert {:id "id174"} {:subsumption 0} b#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b#0), Tclass._module.Node?(), $Heap);
    assert {:id "id175"} defass#a#0;
    ##that#0 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##that#0, Tclass._module.Node?(), $Heap);
    assert {:id "id176"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || Set#IsMember($Unbox(read($Heap, b#0, _module.Node.Repr)): Set, $Box(b#0));
    assert {:id "id177"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, b#0, _module.Node.Repr)): Set, 
            read($Heap, b#0, _module.Node.next)));
    assert {:id "id178"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, b#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, b#0, _module.Node.Repr)): Set));
    assert {:id "id179"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, b#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(b#0)));
    assert {:id "id180"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, b#0, _module.Node.next)): ref));
    assert {:id "id181"} {:subsumption 0} ##that#0 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
         || Set#IsMember($Unbox(read($Heap, ##that#0, _module.Node.Repr)): Set, $Box(##that#0));
    assert {:id "id182"} {:subsumption 0} ##that#0 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
         || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, ##that#0, _module.Node.Repr)): Set, 
            read($Heap, ##that#0, _module.Node.next)));
    assert {:id "id183"} {:subsumption 0} ##that#0 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
         || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, ##that#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, ##that#0, _module.Node.Repr)): Set));
    assert {:id "id184"} {:subsumption 0} ##that#0 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
         || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, ##that#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(##that#0)));
    assert {:id "id185"} {:subsumption 0} ##that#0 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
         || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, ##that#0, _module.Node.next)): ref));
    assume _module.Node.StartsWith#canCall($Heap, b#0, a#0);
    assume _module.Node.StartsWith#canCall($Heap, b#0, a#0);
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(102,18)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id186"} defass#a#0;
    assume true;
    assert {:id "id187"} a#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##2 := LitInt(3);
    assert {:id "id188"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember($Unbox(read($Heap, a#0, _module.Node.Repr)): Set, $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id189"} Call$$_module.Node.IncEverything(a#0, n##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(103,10)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id190"} defass#a#0;
    assume true;
    assert {:id "id191"} a#0 != null;
    call {:id "id192"} Call$$_module.Node.Print(a#0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(104,3)
    assert {:id "id193"} defass#b#0;
    assert {:id "id194"} {:subsumption 0} b#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(b#0), Tclass._module.Node?(), $Heap);
    assert {:id "id195"} defass#a#0;
    ##that#1 := a#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##that#1, Tclass._module.Node?(), $Heap);
    assert {:id "id196"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || Set#IsMember($Unbox(read($Heap, b#0, _module.Node.Repr)): Set, $Box(b#0));
    assert {:id "id197"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, b#0, _module.Node.Repr)): Set, 
            read($Heap, b#0, _module.Node.next)));
    assert {:id "id198"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, b#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, b#0, _module.Node.Repr)): Set));
    assert {:id "id199"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, b#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(b#0)));
    assert {:id "id200"} {:subsumption 0} _module.Node.Valid#canCall($Heap, b#0)
       ==> _module.Node.Valid($LS($LZ), $Heap, b#0)
         || ($Unbox(read($Heap, b#0, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, b#0, _module.Node.next)): ref));
    assert {:id "id201"} {:subsumption 0} ##that#1 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#1)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#1)
         || Set#IsMember($Unbox(read($Heap, ##that#1, _module.Node.Repr)): Set, $Box(##that#1));
    assert {:id "id202"} {:subsumption 0} ##that#1 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#1)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#1)
         || ($Unbox(read($Heap, ##that#1, _module.Node.next)): ref != null
           ==> Set#IsMember($Unbox(read($Heap, ##that#1, _module.Node.Repr)): Set, 
            read($Heap, ##that#1, _module.Node.next)));
    assert {:id "id203"} {:subsumption 0} ##that#1 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#1)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#1)
         || ($Unbox(read($Heap, ##that#1, _module.Node.next)): ref != null
           ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, ##that#1, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, ##that#1, _module.Node.Repr)): Set));
    assert {:id "id204"} {:subsumption 0} ##that#1 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#1)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#1)
         || ($Unbox(read($Heap, ##that#1, _module.Node.next)): ref != null
           ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, ##that#1, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(##that#1)));
    assert {:id "id205"} {:subsumption 0} ##that#1 != null
       ==> 
      _module.Node.Valid#canCall($Heap, ##that#1)
       ==> _module.Node.Valid($LS($LZ), $Heap, ##that#1)
         || ($Unbox(read($Heap, ##that#1, _module.Node.next)): ref != null
           ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, ##that#1, _module.Node.next)): ref));
    assume _module.Node.StartsWith#canCall($Heap, b#0, a#0);
    assume _module.Node.StartsWith#canCall($Heap, b#0, a#0);
    assume true;
}



const unique class._module.Node?: ClassName;

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.Repr: Field
uses {
axiom FDim(_module.Node.Repr) == 0
   && FieldOfDecl(class._module.Node?, field$Repr) == _module.Node.Repr
   && !$IsGhostField(_module.Node.Repr);
}

// Node.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.Repr)): Set, TSet(Tclass._module.Node())));

// Node.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.Repr)): Set, TSet(Tclass._module.Node()), $h));

// function declaration for _module.Node.Valid
function _module.Node.Valid($ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Node.Valid (revealed)
axiom {:id "id206"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Node.Valid($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.Node.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref))
         && _module.Node.Valid($LS($ly), $Heap, this)
           == (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.next))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref))));
}

function _module.Node.Valid#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid($LS($ly), $Heap, this) } 
  _module.Node.Valid($LS($ly), $Heap, this)
     == _module.Node.Valid($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid(AsFuelBottom($ly), $Heap, this) } 
  _module.Node.Valid($ly, $Heap, this) == _module.Node.Valid($LZ, $Heap, this));

// frame axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Valid($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Node.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Valid($ly, $h0, this) == _module.Node.Valid($ly, $h1, this));

function _module.Node.Valid#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
     ==> _module.Node.Valid#requires($ly, $Heap, this) == true);

procedure {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Node.Repr];
    assert {:id "id207"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.Node.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Node.next];
            newtype$check#0 := null;
            if ($Unbox(read($Heap, this, _module.Node.next)): ref != null)
            {
                b$reqreads#3 := $_ReadsFrame[this, _module.Node.next];
                b$reqreads#4 := $_ReadsFrame[this, _module.Node.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.next)))
                {
                    b$reqreads#5 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id208"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    b$reqreads#6 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr];
                    b$reqreads#7 := $_ReadsFrame[this, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.next))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set))
                {
                    b$reqreads#8 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id209"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    b$reqreads#9 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    read($Heap, this, _module.Node.next))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#10 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id210"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Node.next), Tclass._module.Node?(), $Heap);
                    b$reqreads#11 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.Node.next)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id211"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.next))), 
                        Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.next))));
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
                }
            }
        }

        assume {:id "id212"} _module.Node.Valid($LS($LZ), $Heap, this)
           == (Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                  read($Heap, this, _module.Node.next))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
            read($Heap, this, _module.Node.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Node.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.Valid($LS($LZ), $Heap, this), TBool);
        assert {:id "id213"} b$reqreads#1;
        assert {:id "id214"} b$reqreads#2;
        assert {:id "id215"} b$reqreads#3;
        assert {:id "id216"} b$reqreads#4;
        assert {:id "id217"} b$reqreads#5;
        assert {:id "id218"} b$reqreads#6;
        assert {:id "id219"} b$reqreads#7;
        assert {:id "id220"} b$reqreads#8;
        assert {:id "id221"} b$reqreads#9;
        assert {:id "id222"} b$reqreads#10;
        assert {:id "id223"} b$reqreads#11;
        return;

        assume false;
    }
}



const _module.Node.val: Field
uses {
axiom FDim(_module.Node.val) == 0
   && FieldOfDecl(class._module.Node?, field$val) == _module.Node.val
   && !$IsGhostField(_module.Node.val);
}

// Node.val: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.val)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.val)): int, TInt));

// Node.val: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.val)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.val)): int, TInt, $h));

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?()));

// Node.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(), $h));

procedure {:verboseName "Node._ctor (well-formedness)"} CheckWellFormed$$_module.Node.__ctor(val#0: int, 
    next#0: ref
       where $Is(next#0, Tclass._module.Node?())
         && $IsAlloc(next#0, Tclass._module.Node?(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node._ctor (well-formedness)"} CheckWellFormed$$_module.Node.__ctor(val#0: int, next#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.Node.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        newtype$check#0 := null;
        assume {:id "id224"} next#0 != null;
        assert {:id "id225"} next#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(next#0), Tclass._module.Node?(), $Heap);
        assume _module.Node.Valid#canCall($Heap, next#0);
        assume {:id "id226"} _module.Node.Valid($LS($LZ), $Heap, next#0);
    }
    else
    {
        assume {:id "id227"} next#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, next#0);
    }

    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id228"} _module.Node.Valid($LS($LZ), $Heap, this);
    newtype$check#1 := null;
    if (next#0 == null)
    {
    }
    else
    {
        assert {:id "id229"} next#0 != null;
    }

    assume {:id "id230"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember((if next#0 == null
                 then Set#Empty(): Set
                 else $Unbox(read($Heap, next#0, _module.Node.Repr)): Set), 
              $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read(old($Heap), $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
             && !Set#IsMember((if next#0 == null
                 then Set#Empty(): Set
                 else $Unbox(read($Heap, next#0, _module.Node.Repr)): Set), 
              $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "Node._ctor (call)"} Call$$_module.Node.__ctor(val#0: int, 
    next#0: ref
       where $Is(next#0, Tclass._module.Node?())
         && $IsAlloc(next#0, Tclass._module.Node?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id231"} next#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, next#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, next#0)
       || Set#IsMember($Unbox(read($Heap, next#0, _module.Node.Repr)): Set, $Box(next#0));
  requires {:id "id232"} next#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, next#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, next#0)
       || ($Unbox(read($Heap, next#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, next#0, _module.Node.Repr)): Set, 
          read($Heap, next#0, _module.Node.next)));
  requires {:id "id233"} next#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, next#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, next#0)
       || ($Unbox(read($Heap, next#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, next#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, next#0, _module.Node.Repr)): Set));
  requires {:id "id234"} next#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, next#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, next#0)
       || ($Unbox(read($Heap, next#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, next#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(next#0)));
  requires {:id "id235"} next#0 != null
     ==> 
    _module.Node.Valid#canCall($Heap, next#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, next#0)
       || ($Unbox(read($Heap, next#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, next#0, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  free ensures {:id "id236"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  ensures {:id "id237"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember((if next#0 == null
               then Set#Empty(): Set
               else $Unbox(read($Heap, next#0, _module.Node.Repr)): Set), 
            $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember((if next#0 == null
               then Set#Empty(): Set
               else $Unbox(read($Heap, next#0, _module.Node.Repr)): Set), 
            $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node._ctor (correctness)"} Impl$$_module.Node.__ctor(val#0: int, 
    next#0: ref
       where $Is(next#0, Tclass._module.Node?())
         && $IsAlloc(next#0, Tclass._module.Node?(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id238"} next#0 != null
     ==> _module.Node.Valid#canCall($Heap, next#0)
       && 
      _module.Node.Valid($LS($LZ), $Heap, next#0)
       && 
      Set#IsMember($Unbox(read($Heap, next#0, _module.Node.Repr)): Set, $Box(next#0))
       && ($Unbox(read($Heap, next#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, next#0, _module.Node.Repr)): Set, 
            read($Heap, next#0, _module.Node.next))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, next#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Unbox(read($Heap, next#0, _module.Node.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, next#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
            $Box(next#0))
           && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, next#0, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  ensures {:id "id239"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id240"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  ensures {:id "id241"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id242"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id243"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  ensures {:id "id244"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember((if next#0 == null
               then Set#Empty(): Set
               else $Unbox(read($Heap, next#0, _module.Node.Repr)): Set), 
            $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           && !Set#IsMember((if next#0 == null
               then Set#Empty(): Set
               else $Unbox(read($Heap, next#0, _module.Node.Repr)): Set), 
            $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node._ctor (correctness)"} Impl$$_module.Node.__ctor(val#0: int, next#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.Repr: Set;
  var this.val: int;
  var this.next: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: ref;
  var newtype$check#2: ref;

    // AddMethodImpl: _ctor, Impl$$_module.Node.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(123,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(124,25)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := val#0;
    assume true;
    $rhs#1 := next#0;
    this.val := $rhs#0;
    this.next := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(125,10)
    assume true;
    newtype$check#2 := null;
    if (next#0 == null)
    {
    }
    else
    {
        assert {:id "id249"} next#0 != null;
    }

    assume true;
    this.Repr := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(this)), 
      (if next#0 == null
         then Set#Empty(): Set
         else $Unbox(read($Heap, next#0, _module.Node.Repr)): Set));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(123,3)
    assume this != null && $Is(this, Tclass._module.Node?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Node.Repr)): Set == this.Repr;
    assume $Unbox(read($Heap, this, _module.Node.val)): int == this.val;
    assume $Unbox(read($Heap, this, _module.Node.next)): ref == this.next;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(123,3)
}



procedure {:verboseName "Node.Create (well-formedness)"} CheckWellFormed$$_module.Node.Create(n#0: int where LitInt(0) <= n#0)
   returns (d#0: ref
       where $Is(d#0, Tclass._module.Node()) && $IsAlloc(d#0, Tclass._module.Node(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Create (well-formedness)"} CheckWellFormed$$_module.Node.Create(n#0: int) returns (d#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Create, CheckWellFormed$$_module.Node.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc d#0;
    assert {:id "id251"} d#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(d#0), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, d#0);
    assume {:id "id252"} _module.Node.Valid($LS($LZ), $Heap, d#0);
    assert {:id "id253"} d#0 != null;
    assume {:id "id254"} (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o)) } 
        Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
           ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
}



procedure {:verboseName "Node.Create (call)"} Call$$_module.Node.Create(n#0: int where LitInt(0) <= n#0)
   returns (d#0: ref
       where $Is(d#0, Tclass._module.Node()) && $IsAlloc(d#0, Tclass._module.Node(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, d#0);
  free ensures {:id "id255"} _module.Node.Valid#canCall($Heap, d#0)
     && 
    _module.Node.Valid($LS($LZ), $Heap, d#0)
     && 
    Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box(d#0))
     && ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, 
          read($Heap, d#0, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, d#0, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(d#0))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref));
  ensures {:id "id256"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Create (correctness)"} Impl$$_module.Node.Create(n#0: int where LitInt(0) <= n#0)
   returns (defass#d#0: bool, 
    d#0: ref
       where defass#d#0
         ==> $Is(d#0, Tclass._module.Node()) && $IsAlloc(d#0, Tclass._module.Node(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, d#0);
  ensures {:id "id257"} _module.Node.Valid#canCall($Heap, d#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
       || Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box(d#0));
  ensures {:id "id258"} _module.Node.Valid#canCall($Heap, d#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
       || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, 
          read($Heap, d#0, _module.Node.next)));
  ensures {:id "id259"} _module.Node.Valid#canCall($Heap, d#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
       || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, d#0, _module.Node.Repr)): Set));
  ensures {:id "id260"} _module.Node.Valid#canCall($Heap, d#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
       || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(d#0)));
  ensures {:id "id261"} _module.Node.Valid#canCall($Heap, d#0)
     ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
       || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref));
  ensures {:id "id262"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o)) } 
      Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Create (correctness)"} Impl$$_module.Node.Create(n#0: int) returns (defass#d#0: bool, d#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;
  var val##0: int;
  var next##0: ref;
  var newtype$check#0: ref;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#d#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var val##0_0: int;
  var next##0_0: ref;

    // AddMethodImpl: Create, Impl$$_module.Node.Create
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(131,7)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(131,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    val##0 := LitInt(0);
    newtype$check#0 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    next##0 := null;
    call {:id "id263"} $nw := Call$$_module.Node.__ctor(val##0, next##0);
    // TrCallStmt: After ProcessCallStmt
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(132,11)
    assume true;
    assume true;
    i#0 := LitInt(1);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(133,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#d#0 := defass#d#0;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.Node.Valid#canCall($Heap, d#0);
      invariant {:id "id271"} $w$loop#0
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box(d#0));
      invariant {:id "id272"} $w$loop#0
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, 
              read($Heap, d#0, _module.Node.next)));
      invariant {:id "id273"} $w$loop#0
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, d#0, _module.Node.Repr)): Set));
      invariant {:id "id274"} $w$loop#0
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
              $Box(d#0)));
      invariant {:id "id275"} $w$loop#0
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref));
      free invariant {:id "id276"} $w$loop#0
         ==> _module.Node.Valid#canCall($Heap, d#0)
           && 
          _module.Node.Valid($LS($LZ), $Heap, d#0)
           && 
          Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box(d#0))
           && ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, 
                read($Heap, d#0, _module.Node.next))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, d#0, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Box(d#0))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref));
      invariant {:id "id277"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
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
      free invariant preLoop$loop#0$defass#d#0 ==> defass#d#0;
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id266"} defass#d#0;
            assert {:id "id267"} {:subsumption 0} d#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(d#0), Tclass._module.Node?(), $Heap);
            assume _module.Node.Valid#canCall($Heap, d#0);
            if (_module.Node.Valid($LS($LZ), $Heap, d#0))
            {
                assert {:id "id268"} defass#d#0;
                assert {:id "id269"} {:subsumption 0} d#0 != null;
            }

            assume _module.Node.Valid#canCall($Heap, d#0);
            assume {:id "id270"} _module.Node.Valid($LS($LZ), $Heap, d#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(136,9)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(136,12)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        val##0_0 := i#0;
        assert {:id "id278"} defass#d#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        next##0_0 := d#0;
        call {:id "id279"} $nw := Call$$_module.Node.__ctor(val##0_0, next##0_0);
        // TrCallStmt: After ProcessCallStmt
        d#0 := $nw;
        defass#d#0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(137,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(133,5)
        assert {:id "id282"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id283"} n#0 - i#0 < $decr$loop#00;
        assume _module.Node.Valid#canCall($Heap, d#0);
    }

    assert {:id "id284"} defass#d#0;
}



procedure {:verboseName "Node.Print (well-formedness)"} CheckWellFormed$$_module.Node.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.Print (call)"} Call$$_module.Node.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  // user-defined preconditions
  requires {:id "id286"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id287"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  requires {:id "id288"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  requires {:id "id289"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id290"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.Print (correctness)"} Impl$$_module.Node.Print(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id291"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Print (correctness)"} Impl$$_module.Node.Print(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#0: ref
     where $Is(d#0, Tclass._module.Node?()) && $IsAlloc(d#0, Tclass._module.Node?(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var $decr$loop#00: Set;

    // AddMethodImpl: Print, Impl$$_module.Node.Print
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(144,11)
    assume true;
    assume true;
    d#0 := this;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(145,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if d#0 == null
       then Set#Empty(): Set
       else $Unbox(read($Heap, d#0, _module.Node.Repr)): Set);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> d#0 != null ==> _module.Node.Valid#canCall($Heap, d#0);
      invariant {:id "id295"} $w$loop#0
         ==> 
        d#0 != null
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box(d#0));
      invariant {:id "id296"} $w$loop#0
         ==> 
        d#0 != null
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, 
              read($Heap, d#0, _module.Node.next)));
      invariant {:id "id297"} $w$loop#0
         ==> 
        d#0 != null
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
              $Unbox(read($Heap, d#0, _module.Node.Repr)): Set));
      invariant {:id "id298"} $w$loop#0
         ==> 
        d#0 != null
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
              $Box(d#0)));
      invariant {:id "id299"} $w$loop#0
         ==> 
        d#0 != null
         ==> 
        _module.Node.Valid#canCall($Heap, d#0)
         ==> _module.Node.Valid($LS($LZ), $Heap, d#0)
           || ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref));
      free invariant {:id "id300"} $w$loop#0
         ==> 
        d#0 != null
         ==> _module.Node.Valid#canCall($Heap, d#0)
           && 
          _module.Node.Valid($LS($LZ), $Heap, d#0)
           && 
          Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, $Box(d#0))
           && ($Unbox(read($Heap, d#0, _module.Node.next)): ref != null
             ==> Set#IsMember($Unbox(read($Heap, d#0, _module.Node.Repr)): Set, 
                read($Heap, d#0, _module.Node.next))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Unbox(read($Heap, d#0, _module.Node.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                $Box(d#0))
               && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, d#0, _module.Node.next)): ref));
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
      free invariant Set#Subset((if d#0 == null
           then Set#Empty(): Set
           else $Unbox(read($Heap, d#0, _module.Node.Repr)): Set), 
        $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := null;
            if (d#0 != null)
            {
                assert {:id "id293"} {:subsumption 0} d#0 != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(d#0), Tclass._module.Node?(), $Heap);
                assume _module.Node.Valid#canCall($Heap, d#0);
            }

            assume d#0 != null ==> _module.Node.Valid#canCall($Heap, d#0);
            assume {:id "id294"} d#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, d#0);
            newtype$check#1 := null;
            if (d#0 == null)
            {
            }
            else
            {
                assert {:id "id301"} d#0 != null;
            }

            assume true;
            assume false;
        }

        newtype$check#2 := null;
        assume true;
        if (d#0 == null)
        {
            break;
        }

        $decr$loop#00 := (if d#0 == null
           then Set#Empty(): Set
           else $Unbox(read($Heap, d#0, _module.Node.Repr)): Set);
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(149,7)
        assert {:id "id302"} {:subsumption 0} d#0 != null;
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(150,9)
        assume true;
        assert {:id "id303"} d#0 != null;
        assume true;
        d#0 := $Unbox(read($Heap, d#0, _module.Node.next)): ref;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(145,5)
        assert {:id "id305"} Set#Subset((if d#0 == null
               then Set#Empty(): Set
               else $Unbox(read($Heap, d#0, _module.Node.Repr)): Set), 
            $decr$loop#00)
           && !Set#Subset($decr$loop#00, 
            (if d#0 == null
               then Set#Empty(): Set
               else $Unbox(read($Heap, d#0, _module.Node.Repr)): Set));
        assume d#0 != null ==> _module.Node.Valid#canCall($Heap, d#0);
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(152,5)
    assume true;
}



// function declaration for _module.Node.StartsWith
function _module.Node.StartsWith($ly: LayerType, $heap: Heap, this: ref, that#0: ref) : bool
uses {
// definition axiom for _module.Node.StartsWith (revealed)
axiom {:id "id306"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, that#0: ref :: 
    { _module.Node.StartsWith($LS($ly), $Heap, this, that#0), $IsGoodHeap($Heap) } 
    _module.Node.StartsWith#canCall($Heap, this, that#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap)
           && $Is(that#0, Tclass._module.Node?())
           && 
          _module.Node.Valid($LS($LZ), $Heap, this)
           && (that#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, that#0)))
       ==> (that#0 != null
           ==> 
          $Unbox(read($Heap, this, _module.Node.val)): int
             == $Unbox(read($Heap, that#0, _module.Node.val)): int
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.StartsWith#canCall($Heap, 
            $Unbox(read($Heap, this, _module.Node.next)): ref, 
            $Unbox(read($Heap, that#0, _module.Node.next)): ref))
         && _module.Node.StartsWith($LS($ly), $Heap, this, that#0)
           == (that#0 != null
             ==> $Unbox(read($Heap, this, _module.Node.val)): int
                 == $Unbox(read($Heap, that#0, _module.Node.val)): int
               && $Unbox(read($Heap, this, _module.Node.next)): ref != null
               && _module.Node.StartsWith($ly, 
                $Heap, 
                $Unbox(read($Heap, this, _module.Node.next)): ref, 
                $Unbox(read($Heap, that#0, _module.Node.next)): ref)));
}

function _module.Node.StartsWith#canCall($heap: Heap, this: ref, that#0: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, that#0: ref :: 
  { _module.Node.StartsWith($LS($ly), $Heap, this, that#0) } 
  _module.Node.StartsWith($LS($ly), $Heap, this, that#0)
     == _module.Node.StartsWith($ly, $Heap, this, that#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, that#0: ref :: 
  { _module.Node.StartsWith(AsFuelBottom($ly), $Heap, this, that#0) } 
  _module.Node.StartsWith($ly, $Heap, this, that#0)
     == _module.Node.StartsWith($LZ, $Heap, this, that#0));

// frame axiom for _module.Node.StartsWith
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, that#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.StartsWith($ly, $h1, this, that#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && (_module.Node.StartsWith#canCall($h0, this, that#0)
         || $Is(that#0, Tclass._module.Node?()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (Set#IsMember($Unbox(read($h0, this, _module.Node.Repr)): Set, $Box($o))
             || Set#IsMember((if that#0 == null
                 then Set#Empty(): Set
                 else $Unbox(read($h0, that#0, _module.Node.Repr)): Set), 
              $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.StartsWith($ly, $h0, this, that#0)
       == _module.Node.StartsWith($ly, $h1, this, that#0));

function _module.Node.StartsWith#requires(LayerType, Heap, ref, ref) : bool;

// #requires axiom for _module.Node.StartsWith
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, that#0: ref :: 
  { _module.Node.StartsWith#requires($ly, $Heap, this, that#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
       && $Is(that#0, Tclass._module.Node?())
     ==> _module.Node.StartsWith#requires($ly, $Heap, this, that#0)
       == (_module.Node.Valid($LS($LZ), $Heap, this)
         && (that#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, that#0))));

procedure {:verboseName "Node.StartsWith (well-formedness)"} CheckWellformed$$_module.Node.StartsWith(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    that#0: ref where $Is(that#0, Tclass._module.Node?()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.StartsWith (well-formedness)"} CheckWellformed$$_module.Node.StartsWith(this: ref, that#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var newtype$check#1: ref;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var ##that#0: ref;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o))
           || Set#IsMember((if that#0 == null
               then Set#Empty(): Set
               else $Unbox(read($Heap, that#0, _module.Node.Repr)): Set), 
            $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id307"} _module.Node.Valid($LS($LZ), $Heap, this);
    newtype$check#0 := null;
    if (that#0 != null)
    {
        assert {:id "id308"} that#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(that#0), Tclass._module.Node?(), $Heap);
        b$reqreads#1 := (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && ($o == that#0
                 || Set#IsMember($Unbox(read($Heap, that#0, _module.Node.Repr)): Set, $Box($o)))
             ==> $_ReadsFrame[$o, $f]);
        assume _module.Node.Valid#canCall($Heap, that#0);
    }

    assume {:id "id309"} that#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, that#0);
    assert {:id "id310"} b$reqreads#0;
    assert {:id "id311"} b$reqreads#1;
    // Check well-formedness of the reads clause
    b$reqreads#2 := $_ReadsFrame[this, _module.Node.Repr];
    newtype$check#1 := null;
    if (that#0 == null)
    {
    }
    else
    {
        assert {:id "id312"} that#0 != null;
        b$reqreads#3 := $_ReadsFrame[that#0, _module.Node.Repr];
    }

    assert {:id "id313"} b$reqreads#2;
    assert {:id "id314"} b$reqreads#3;
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
        newtype$check#2 := null;
        if (that#0 != null)
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.Node.val];
            assert {:id "id315"} that#0 != null;
            b$reqreads#5 := $_ReadsFrame[that#0, _module.Node.val];
            if ($Unbox(read($Heap, this, _module.Node.val)): int
               == $Unbox(read($Heap, that#0, _module.Node.val)): int)
            {
                b$reqreads#6 := $_ReadsFrame[this, _module.Node.next];
                newtype$check#3 := null;
            }

            if ($Unbox(read($Heap, this, _module.Node.val)): int
                 == $Unbox(read($Heap, that#0, _module.Node.val)): int
               && $Unbox(read($Heap, this, _module.Node.next)): ref != null)
            {
                b$reqreads#7 := $_ReadsFrame[this, _module.Node.next];
                assert {:id "id316"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(read($Heap, this, _module.Node.next), Tclass._module.Node?(), $Heap);
                assert {:id "id317"} that#0 != null;
                b$reqreads#8 := $_ReadsFrame[that#0, _module.Node.next];
                ##that#0 := $Unbox(read($Heap, that#0, _module.Node.next)): ref;
                // assume allocatedness for argument to function
                assume $IsAlloc(##that#0, Tclass._module.Node?(), $Heap);
                assert {:id "id318"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                     || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                      read($Heap, this, _module.Node.next));
                assert {:id "id319"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                         != null
                       ==> Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                        read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)));
                assert {:id "id320"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                         != null
                       ==> Set#Subset($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref, 
                            _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set));
                assert {:id "id321"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                         != null
                       ==> !Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref, 
                            _module.Node.Repr)): Set, 
                        read($Heap, this, _module.Node.next)));
                assert {:id "id322"} {:subsumption 0} _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                   ==> _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                     || ($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref
                         != null
                       ==> _module.Node.Valid($LS($LS($LZ)), 
                        $Heap, 
                        $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.next)): ref));
                assert {:id "id323"} {:subsumption 0} ##that#0 != null
                   ==> 
                  _module.Node.Valid#canCall($Heap, ##that#0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
                     || Set#IsMember($Unbox(read($Heap, ##that#0, _module.Node.Repr)): Set, $Box(##that#0));
                assert {:id "id324"} {:subsumption 0} ##that#0 != null
                   ==> 
                  _module.Node.Valid#canCall($Heap, ##that#0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
                     || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
                       ==> Set#IsMember($Unbox(read($Heap, ##that#0, _module.Node.Repr)): Set, 
                        read($Heap, ##that#0, _module.Node.next)));
                assert {:id "id325"} {:subsumption 0} ##that#0 != null
                   ==> 
                  _module.Node.Valid#canCall($Heap, ##that#0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
                     || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
                       ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, ##that#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                        $Unbox(read($Heap, ##that#0, _module.Node.Repr)): Set));
                assert {:id "id326"} {:subsumption 0} ##that#0 != null
                   ==> 
                  _module.Node.Valid#canCall($Heap, ##that#0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
                     || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
                       ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, ##that#0, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                        $Box(##that#0)));
                assert {:id "id327"} {:subsumption 0} ##that#0 != null
                   ==> 
                  _module.Node.Valid#canCall($Heap, ##that#0)
                   ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0)
                     || ($Unbox(read($Heap, ##that#0, _module.Node.next)): ref != null
                       ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, ##that#0, _module.Node.next)): ref));
                assume _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)
                   && (##that#0 != null ==> _module.Node.Valid($LS($LZ), $Heap, ##that#0));
                b$reqreads#9 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && (Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                          $Box($o))
                         || Set#IsMember((if ##that#0 == null
                             then Set#Empty(): Set
                             else $Unbox(read($Heap, ##that#0, _module.Node.Repr)): Set), 
                          $Box($o)))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id328"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Node.Repr)): Set)
                   && !Set#Subset($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set);
                assume _module.Node.StartsWith#canCall($Heap, 
                  $Unbox(read($Heap, this, _module.Node.next)): ref, 
                  $Unbox(read($Heap, that#0, _module.Node.next)): ref);
            }
        }

        assume {:id "id329"} _module.Node.StartsWith($LS($LZ), $Heap, this, that#0)
           == (that#0 != null
             ==> $Unbox(read($Heap, this, _module.Node.val)): int
                 == $Unbox(read($Heap, that#0, _module.Node.val)): int
               && $Unbox(read($Heap, this, _module.Node.next)): ref != null
               && _module.Node.StartsWith($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.Node.next)): ref, 
                $Unbox(read($Heap, that#0, _module.Node.next)): ref));
        assume that#0 != null
           ==> 
          $Unbox(read($Heap, this, _module.Node.val)): int
             == $Unbox(read($Heap, that#0, _module.Node.val)): int
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> _module.Node.StartsWith#canCall($Heap, 
            $Unbox(read($Heap, this, _module.Node.next)): ref, 
            $Unbox(read($Heap, that#0, _module.Node.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.StartsWith($LS($LZ), $Heap, this, that#0), TBool);
        assert {:id "id330"} b$reqreads#4;
        assert {:id "id331"} b$reqreads#5;
        assert {:id "id332"} b$reqreads#6;
        assert {:id "id333"} b$reqreads#7;
        assert {:id "id334"} b$reqreads#8;
        assert {:id "id335"} b$reqreads#9;
        return;

        assume false;
    }
}



procedure {:verboseName "Node.IncEverything (well-formedness)"} CheckWellFormed$$_module.Node.IncEverything(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Node.IncEverything (call)"} Call$$_module.Node.IncEverything(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int);
  // user-defined preconditions
  requires {:id "id338"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id339"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  requires {:id "id340"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  requires {:id "id341"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id342"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  free ensures {:id "id343"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Node.IncEverything (correctness)"} Impl$$_module.Node.IncEverything(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap), 
    n#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id344"} _module.Node.Valid#canCall($Heap, this)
     && 
    _module.Node.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall($Heap, this);
  ensures {:id "id345"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id346"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, 
          read($Heap, this, _module.Node.next)));
  ensures {:id "id347"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id348"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id349"} _module.Node.Valid#canCall($Heap, this)
     ==> _module.Node.Valid($LS($LZ), $Heap, this)
       || ($Unbox(read($Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.IncEverything (correctness)"} Impl$$_module.Node.IncEverything(this: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#0_0: ref;
  var d#0_1: ref;
  var $prevHeap: Heap;

    // AddMethodImpl: IncEverything, Impl$$_module.Node.IncEverything
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box($o)));
    $_reverifyPost := false;
    // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(169,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc d#0_0;
        assume $Is(d#0_0, Tclass._module.Node())
           && $IsAlloc(d#0_0, Tclass._module.Node(), $Heap);
        assume true;
        assume Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(d#0_0));
        assert {:id "id350"} {:subsumption 0} d#0_0 != null;
        assume true;
        assert {:id "id351"} $_ModifiesFrame[d#0_0, _module.Node.val];
        assert {:id "id352"} {:subsumption 0} d#0_0 != null;
        assume true;
        havoc d#0_1;
        assume $Is(d#0_1, Tclass._module.Node())
           && $IsAlloc(d#0_1, Tclass._module.Node(), $Heap);
        assume Set#IsMember($Unbox(read($Heap, this, _module.Node.Repr)): Set, $Box(d#0_1));
        assume d#0_0 != d#0_1;
        assert {:id "id353"} d#0_0 != d#0_1
           || _module.Node.val != _module.Node.val
           || $Unbox(read($Heap, d#0_0, _module.Node.val)): int + n#0
             == $Unbox(read($Heap, d#0_1, _module.Node.val)): int + n#0;
        assume false;
    }
    else
    {
        $prevHeap := $Heap;
        havoc $Heap;
        assume $HeapSucc($prevHeap, $Heap);
        assume (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          read($Heap, $o, $f) == read($prevHeap, $o, $f)
             || (exists d#0_2: ref :: 
              $Is(d#0_2, Tclass._module.Node())
                 && Set#IsMember($Unbox(read($prevHeap, this, _module.Node.Repr)): Set, $Box(d#0_2))
                 && $o == d#0_2
                 && $f == _module.Node.val));
        assume (forall d#inv#0_0: ref :: 
          { read($Heap, d#inv#0_0, _module.Node.val) } 
          $Is(d#inv#0_0, Tclass._module.Node())
               && 
              d#inv#0_0 != null
               && Set#IsMember($Unbox(read($prevHeap, this, _module.Node.Repr)): Set, $Box(d#inv#0_0))
             ==> read($Heap, d#inv#0_0, _module.Node.val)
               == $Box($Unbox(read($prevHeap, d#inv#0_0, _module.Node.val)): int + n#0));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(172,30)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id354"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    call {:id "id355"} Call$$_module.Node.StillValidAfterValChanges(old($Heap), $Heap, this);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Node.StillValidAfterValChanges (well-formedness)"} CheckWellFormed$$_module.Node.StillValidAfterValChanges(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.StillValidAfterValChanges (well-formedness)"} CheckWellFormed$$_module.Node.StillValidAfterValChanges(previous$Heap: Heap, current$Heap: Heap, this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var d#0: ref;


    // AddMethodImpl: StillValidAfterValChanges, CheckWellFormed$$_module.Node.StillValidAfterValChanges
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id356"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    assume _module.Node.Valid#canCall(old($Heap), this);
    assume {:id "id357"} _module.Node.Valid($LS($LZ), old($Heap), this);
    havoc d#0;
    assume $Is(d#0, Tclass._module.Node()) && $IsAlloc(d#0, Tclass._module.Node(), $Heap);
    if (*)
    {
        assert {:id "id358"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
        assume {:id "id359"} Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(d#0));
        assert {:id "id360"} $IsAlloc(d#0, Tclass._module.Node(), old($Heap));
        assert {:id "id361"} $IsAlloc(d#0, Tclass._module.Node(), old($Heap));
        assume {:id "id362"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            ($o == d#0 && ($f == _module.Node.next || $f == alloc))
               || ($o == d#0 && ($f == _module.Node.Repr || $f == alloc))
             ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    }
    else
    {
        assume {:id "id363"} Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(d#0))
           ==> (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              ($o == d#0 && ($f == _module.Node.next || $f == alloc))
                 || ($o == d#0 && ($f == _module.Node.Repr || $f == alloc))
               ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    }

    assume {:id "id364"} (forall d#1: ref :: 
      { Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(d#1)) } 
      $Is(d#1, Tclass._module.Node())
         ==> 
        Set#IsMember($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, $Box(d#1))
         ==> (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            ($o == d#1 && ($f == _module.Node.next || $f == alloc))
               || ($o == d#1 && ($f == _module.Node.Repr || $f == alloc))
             ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
    assert {:id "id365"} $IsAlloc(this, Tclass._module.Node(), old($Heap));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Node?(), $Heap);
    assume _module.Node.Valid#canCall($Heap, this);
    assume {:id "id366"} _module.Node.Valid($LS($LZ), $Heap, this);
}



procedure {:verboseName "Node.StillValidAfterValChanges (call)"} Call$$_module.Node.StillValidAfterValChanges(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap));
  // user-defined preconditions
  requires {:id "id367"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(this));
  requires {:id "id368"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, 
          read(previous$Heap, this, _module.Node.next)));
  requires {:id "id369"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.Node.Repr)): Set));
  requires {:id "id370"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this)));
  requires {:id "id371"} _module.Node.Valid#canCall(previous$Heap, this)
     ==> _module.Node.Valid($LS($LZ), previous$Heap, this)
       || ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          previous$Heap, 
          $Unbox(read(previous$Heap, this, _module.Node.next)): ref));
  requires {:id "id372"} (forall d#1: ref :: 
    { Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(d#1)) } 
    $Is(d#1, Tclass._module.Node())
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(d#1))
       ==> (forall $o: ref, $f: Field :: 
        { read(current$Heap, $o, $f) } 
        $o != null
           ==> 
          ($o == d#1 && ($f == _module.Node.next || $f == alloc))
             || ($o == d#1 && ($f == _module.Node.Repr || $f == alloc))
           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, this);
  free ensures {:id "id373"} _module.Node.Valid#canCall(current$Heap, this)
     && 
    _module.Node.Valid($LS($LZ), current$Heap, this)
     && 
    Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, 
          read(current$Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), current$Heap, $Unbox(read(current$Heap, this, _module.Node.next)): ref));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Node.StillValidAfterValChanges (correctness)"} Impl$$_module.Node.StillValidAfterValChanges(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  // user-defined preconditions
  free requires {:id "id374"} _module.Node.Valid#canCall(previous$Heap, this)
     && 
    _module.Node.Valid($LS($LZ), previous$Heap, this)
     && 
    Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(this))
     && ($Unbox(read(previous$Heap, this, _module.Node.next)): ref != null
       ==> Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, 
          read(previous$Heap, this, _module.Node.next))
         && Set#Subset($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(previous$Heap, this, _module.Node.Repr)): Set)
         && !Set#IsMember($Unbox(read(previous$Heap, 
              $Unbox(read(previous$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this))
         && _module.Node.Valid($LS($LZ), 
          previous$Heap, 
          $Unbox(read(previous$Heap, this, _module.Node.next)): ref));
  requires {:id "id375"} (forall d#1: ref :: 
    { Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(d#1)) } 
    $Is(d#1, Tclass._module.Node())
       ==> 
      Set#IsMember($Unbox(read(previous$Heap, this, _module.Node.Repr)): Set, $Box(d#1))
       ==> (forall $o: ref, $f: Field :: 
        { read(current$Heap, $o, $f) } 
        $o != null
           ==> 
          ($o == d#1 && ($f == _module.Node.next || $f == alloc))
             || ($o == d#1 && ($f == _module.Node.Repr || $f == alloc))
           ==> read(current$Heap, $o, $f) == read(previous$Heap, $o, $f)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Node.Valid#canCall(current$Heap, this);
  ensures {:id "id376"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, $Box(this));
  ensures {:id "id377"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> Set#IsMember($Unbox(read(current$Heap, this, _module.Node.Repr)): Set, 
          read(current$Heap, this, _module.Node.next)));
  ensures {:id "id378"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> Set#Subset($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Unbox(read(current$Heap, this, _module.Node.Repr)): Set));
  ensures {:id "id379"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> !Set#IsMember($Unbox(read(current$Heap, 
              $Unbox(read(current$Heap, this, _module.Node.next)): ref, 
              _module.Node.Repr)): Set, 
          $Box(this)));
  ensures {:id "id380"} _module.Node.Valid#canCall(current$Heap, this)
     ==> _module.Node.Valid($LS($LZ), current$Heap, this)
       || ($Unbox(read(current$Heap, this, _module.Node.next)): ref != null
         ==> _module.Node.Valid($LS($LS($LZ)), 
          current$Heap, 
          $Unbox(read(current$Heap, this, _module.Node.next)): ref));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.StillValidAfterValChanges (correctness)"} Impl$$_module.Node.StillValidAfterValChanges(previous$Heap: Heap, current$Heap: Heap, this: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var newtype$check#0: ref;

    // AddMethodImpl: StillValidAfterValChanges, Impl$$_module.Node.StillValidAfterValChanges
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#this0#0: ref :: 
      { $Unbox(read($initHeapForallStmt#0, $ih#this0#0, _module.Node.Repr)): Set } 
        { $Unbox(read($Heap, $ih#this0#0, _module.Node.Repr)): Set } 
        { _module.Node.Valid($LS($LZ), $initHeapForallStmt#0, $ih#this0#0) } 
        { _module.Node.Valid($LS($LZ), $Heap, $ih#this0#0) } 
      $Is($ih#this0#0, Tclass._module.Node())
           && 
          _module.Node.Valid($LS($LZ), old($Heap), $ih#this0#0)
           && (forall d#2: ref :: 
            { Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, $Box(d#2)) } 
            $Is(d#2, Tclass._module.Node())
               ==> 
              Set#IsMember($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, $Box(d#2))
               ==> (forall $o: ref, $f: Field :: 
                { read($initHeapForallStmt#0, $o, $f) } 
                $o != null
                   ==> 
                  ($o == d#2 && ($f == _module.Node.next || $f == alloc))
                     || ($o == d#2 && ($f == _module.Node.Repr || $f == alloc))
                   ==> read($initHeapForallStmt#0, $o, $f) == read(old($Heap), $o, $f)))
           && 
          Set#Subset($Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), $ih#this0#0, _module.Node.Repr)): Set)
         ==> _module.Node.Valid($LS($LZ), $Heap, $ih#this0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(181,5)
    newtype$check#0 := null;
    assume true;
    if ($Unbox(read($Heap, this, _module.Node.next)): ref != null)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MoForallCompilation.dfy(182,37)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id381"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
        assert {:id "id382"} $IsAlloc($Unbox(read($Heap, this, _module.Node.next)): ref, 
          Tclass._module.Node?(), 
          old($Heap));
        assert {:id "id383"} Set#Subset($Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.Node.next)): ref, 
                _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Node.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Node.Repr)): Set, 
            $Unbox(read(old($Heap), 
                $Unbox(read(old($Heap), this, _module.Node.next)): ref, 
                _module.Node.Repr)): Set);
        call {:id "id384"} Call$$_module.Node.StillValidAfterValChanges(old($Heap), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

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

const unique tytagFamily$Node: TyTagFamily;

const unique field$Repr: NameFamily;

const unique field$next: NameFamily;

const unique field$val: NameFamily;
