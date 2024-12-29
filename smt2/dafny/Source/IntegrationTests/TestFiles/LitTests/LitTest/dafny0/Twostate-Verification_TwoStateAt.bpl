// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy

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

// Box/unbox axiom for bv19
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(19)) } 
  $IsBox(bx, TBitvector(19))
     ==> $Box($Unbox(bx): bv19) == bx && $Is($Unbox(bx): bv19, TBitvector(19)));

axiom (forall v: bv19 :: { $Is(v, TBitvector(19)) } $Is(v, TBitvector(19)));

axiom (forall v: bv19, heap: Heap :: 
  { $IsAlloc(v, TBitvector(19), heap) } 
  $IsAlloc(v, TBitvector(19), heap));

function {:bvbuiltin "bvand"} and_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvor"} or_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvxor"} xor_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvnot"} not_bv19(bv19) : bv19;

function {:bvbuiltin "bvadd"} add_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvsub"} sub_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvmul"} mul_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvudiv"} div_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvurem"} mod_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvult"} lt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvule"} le_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvuge"} ge_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvugt"} gt_bv19(bv19, bv19) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "bvlshr"} RightShift_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv19(bv19, bv19) : bv19;

function {:bvbuiltin "(_ int2bv 19)"} nat_to_bv19(int) : bv19;

function {:bvbuiltin "bv2int"} smt_nat_from_bv19(bv19) : int;

function nat_from_bv19(bv19) : int;

axiom (forall b: bv19 :: 
  { nat_from_bv19(b) } 
  0 <= nat_from_bv19(b)
     && nat_from_bv19(b) < 524288
     && nat_from_bv19(b) == smt_nat_from_bv19(b));

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

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
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
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const reveal_TwoStateAt._default.Opaque: bool;

const unique class.TwoStateAt.__default: ClassName;

// function declaration for TwoStateAt._default.SP
function TwoStateAt.__default.SP(TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : int
uses {
// definition axiom for TwoStateAt.__default.SP (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
    { TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
    TwoStateAt.__default.SP#canCall(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell())
           && $IsBox(y#0, TwoStateAt._default.SP$Y))
       ==> TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0)
         == $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int
           + $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int);
}

function TwoStateAt.__default.SP#canCall(TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : bool;

function Tclass.TwoStateAt.Cell() : Ty
uses {
// Tclass.TwoStateAt.Cell Tag
axiom Tag(Tclass.TwoStateAt.Cell()) == Tagclass.TwoStateAt.Cell
   && TagFamily(Tclass.TwoStateAt.Cell()) == tytagFamily$Cell;
}

const unique Tagclass.TwoStateAt.Cell: TyTag;

// Box/unbox axiom for Tclass.TwoStateAt.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.Cell()) } 
  $IsBox(bx, Tclass.TwoStateAt.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TwoStateAt.Cell()));

// frame axiom for TwoStateAt.__default.SP
axiom (forall TwoStateAt._default.SP$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    c#0: ref, 
    y#0: Box :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $h1, c#0, y#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.SP#canCall(TwoStateAt._default.SP$Y, $prevHeap, $h0, c#0, y#0)
         || ($Is(c#0, Tclass.TwoStateAt.Cell()) && $IsBox(y#0, TwoStateAt._default.SP$Y)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $h0, c#0, y#0)
       == TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, $prevHeap, $h1, c#0, y#0));

function TwoStateAt.__default.SP#requires(Ty, Heap, Heap, ref, Box) : bool;

// #requires axiom for TwoStateAt.__default.SP
axiom (forall TwoStateAt._default.SP$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
  { TwoStateAt.__default.SP#requires(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
       && $IsBox(y#0, TwoStateAt._default.SP$Y)
     ==> TwoStateAt.__default.SP#requires(TwoStateAt._default.SP$Y, $prevHeap, $Heap, c#0, y#0)
       == ($IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt._default.SP$Y, $prevHeap)));

procedure {:verboseName "TwoStateAt.SP (well-formedness)"} CheckWellformed$$TwoStateAt.__default.SP(TwoStateAt._default.SP$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.SP$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.SP$Y, previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.SP (well-formedness)"} CheckWellformed$$TwoStateAt.__default.SP(TwoStateAt._default.SP$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref, 
    y#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        assert {:id "id1"} c#0 != null;
        assert {:id "id2"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assert {:id "id3"} c#0 != null;
        b$reqreads#0 := $_ReadsFrame[c#0, TwoStateAt.Cell.data];
        assume {:id "id4"} TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, old($Heap), $Heap, c#0, y#0)
           == $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
             + $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.__default.SP(TwoStateAt._default.SP$Y, old($Heap), $Heap, c#0, y#0), 
          TInt);
        assert {:id "id5"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.Test (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.Test(TwoStateAt._default.Test$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap), 
    b#0: bool, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.Test$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Test (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.Test(TwoStateAt._default.Test$Y: Ty, c#0: ref, b#0: bool, y#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Test, CheckWellFormed$$TwoStateAt.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    assert {:id "id6"} c#0 != null;
    assume {:id "id7"} $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int == LitInt(2);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TwoStateAt.Test (call)"} Call$$TwoStateAt.__default.Test(TwoStateAt._default.Test$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap), 
    b#0: bool, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.Test$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap));
  // user-defined preconditions
  requires {:id "id8"} $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int == LitInt(2);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.Test (correctness)"} Impl$$TwoStateAt.__default.Test(TwoStateAt._default.Test$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap), 
    b#0: bool, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.Test$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id9"} $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int == LitInt(2);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.TwoStateAt.Cell?() : Ty
uses {
// Tclass.TwoStateAt.Cell? Tag
axiom Tag(Tclass.TwoStateAt.Cell?()) == Tagclass.TwoStateAt.Cell?
   && TagFamily(Tclass.TwoStateAt.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass.TwoStateAt.Cell?: TyTag;

// Box/unbox axiom for Tclass.TwoStateAt.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.Cell?()) } 
  $IsBox(bx, Tclass.TwoStateAt.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.TwoStateAt.Cell?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Test (correctness)"} Impl$$TwoStateAt.__default.Test(TwoStateAt._default.Test$Y: Ty, c#0: ref, b#0: bool, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##y#0: Box;
  var $rhs#0: int;
  var $Heap_at_0: Heap;
  var ##c#0: ref;
  var ##y#1: Box;
  var ##c#1: ref;
  var ##y#2: Box;
  var $rhs#1: int;
  var ##c#2: ref;
  var ##y#3: Box;
  var ##c#3: ref;
  var ##y#4: bv3;
  var newtype$check#0: int;
  var $rhs#0_0: int;
  var $rhs#1_0: int;
  var $Heap_at_1: Heap;
  var ##y#5: Box;
  var ##y#6: int;
  var w#Z#0: int;
  var let#0#0#0: int;
  var ##c#4: ref;
  var ##y#7: Box;
  var ##c#5: ref;
  var ##y#8: Box;
  var u#0: int;
  var ##c#6: ref;
  var ##y#9: int;
  var ##c#7: ref;
  var ##y#10: Box;

    // AddMethodImpl: Test, Impl$$TwoStateAt.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(291,5)
    assert {:id "id10"} {:subsumption 0} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
    ##y#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#0, TwoStateAt._default.Test$Y, $Heap);
    assert {:id "id11"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id12"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, old($Heap));
    assume TwoStateAt.Cell.Plus#canCall(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0);
    assume TwoStateAt.Cell.Plus#canCall(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0);
    assert {:id "id13"} TwoStateAt.Cell.Plus(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0)
       == LitInt(4);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(292,12)
    assert {:id "id14"} c#0 != null;
    assume true;
    assert {:id "id15"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id16"} c#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 3;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap_at_0 := $Heap;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(294,5)
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
    ##y#1 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#1, TwoStateAt._default.Test$Y, $Heap);
    assert {:id "id19"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id20"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, old($Heap));
    assume TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0);
    assume TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0);
    assert {:id "id21"} TwoStateAt.Cell.Sum(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0)
       == LitInt(7);

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(295,5)
    ##c#1 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#1, Tclass.TwoStateAt.Cell(), $Heap);
    ##y#2 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#2, TwoStateAt._default.Test$Y, $Heap);
    assert {:id "id22"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
    assert {:id "id23"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap_at_0);
    assume TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0);
    assume TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0);
    assert {:id "id24"} TwoStateAt.Cell.Sum(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0)
       == LitInt(10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(297,12)
    assert {:id "id25"} c#0 != null;
    assume true;
    assert {:id "id26"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id27"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 1;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(298,5)
    ##c#2 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#2, Tclass.TwoStateAt.Cell(), $Heap);
    ##y#3 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#3, TwoStateAt._default.Test$Y, $Heap);
    assert {:id "id30"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id31"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, old($Heap));
    assume TwoStateAt.__default.SP#canCall(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0);
    assume TwoStateAt.__default.SP#canCall(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0);
    assert {:id "id32"} TwoStateAt.__default.SP(TwoStateAt._default.Test$Y, old($Heap), $Heap, c#0, y#0)
       == LitInt(8);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(299,5)
    ##c#3 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#3, Tclass.TwoStateAt.Cell(), $Heap);
    newtype$check#0 := LitInt(0);
    assert {:id "id33"} 0 <= newtype$check#0 && newtype$check#0 < 8;
    ##y#4 := 0bv3;
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#4, TBitvector(3), $Heap);
    assert {:id "id34"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
    assume TwoStateAt.__default.SP#canCall(TBitvector(3), $Heap_at_0, $Heap, c#0, $Box(0bv3));
    assume TwoStateAt.__default.SP#canCall(TBitvector(3), $Heap_at_0, $Heap, c#0, $Box(0bv3));
    assert {:id "id35"} TwoStateAt.__default.SP(TBitvector(3), $Heap_at_0, $Heap, c#0, $Box(0bv3))
       == LitInt(11);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(301,5)
    assume true;
    if (b#0)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(302,14)
        assert {:id "id36"} c#0 != null;
        assume true;
        assert {:id "id37"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
        assert {:id "id38"} c#0 != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 10;
        $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        pop;
    }
    else
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(304,14)
        assert {:id "id41"} c#0 != null;
        assume true;
        assert {:id "id42"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
        assert {:id "id43"} c#0 != null;
        assume true;
        $rhs#1_0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 20;
        $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        pop;
    }

    $Heap_at_1 := $Heap;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(308,5)
    assert {:id "id46"} {:subsumption 0} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
    ##y#5 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#5, TwoStateAt._default.Test$Y, $Heap);
    assert {:id "id47"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
    assert {:id "id48"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap_at_0);
    assume TwoStateAt.Cell.Plus#canCall(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0);
    if (TwoStateAt.Cell.Plus(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0)
       != LitInt(21))
    {
        assert {:id "id49"} {:subsumption 0} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
        ##y#6 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#6, TInt, $Heap);
        assert {:id "id50"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
    }

    assume TwoStateAt.Cell.Plus#canCall(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0)
       && (TwoStateAt.Cell.Plus(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0)
           != LitInt(21)
         ==> TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0))));
    assert {:id "id51"} TwoStateAt.Cell.Plus(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0)
         == LitInt(21)
       || TwoStateAt.Cell.Plus(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)))
         == LitInt(31);

  after_1:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(309,5)
    if (b#0)
    {
        havoc w#Z#0;
        ##c#4 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#4, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#7 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#7, TwoStateAt._default.Test$Y, $Heap);
        assert {:id "id52"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_1);
        assert {:id "id53"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap_at_1);
        assume TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0);
        assume {:id "id54"} let#0#0#0
           == TwoStateAt.Cell.Sum(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0);
        assume TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TInt);
        assume {:id "id55"} w#Z#0 == let#0#0#0;
    }

    assume b#0
       ==> TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0);
    assert {:id "id56"} {:subsumption 0} b#0
       ==> (var w#0 := TwoStateAt.Cell.Sum(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0); 
          w#0)
         == LitInt(32);
    assume {:id "id57"} b#0
       ==> (var w#0 := TwoStateAt.Cell.Sum(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0); 
          w#0)
         == LitInt(32);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(310,5)
    if (!b#0)
    {
        ##c#5 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#5, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#8 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#8, TwoStateAt._default.Test$Y, $Heap);
        assert {:id "id58"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_1);
        assert {:id "id59"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap_at_1);
        assume TwoStateAt.__default.SP#canCall(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0);
    }

    assume !b#0
       ==> TwoStateAt.__default.SP#canCall(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0);
    assert {:id "id60"} {:subsumption 0} !b#0
       ==> TwoStateAt.__default.SP(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0)
         == LitInt(52);
    assume {:id "id61"} !b#0
       ==> TwoStateAt.__default.SP(TwoStateAt._default.Test$Y, $Heap_at_1, $Heap, c#0, y#0)
         == LitInt(52);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(311,17)
    assume true;
    ##c#6 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#6, Tclass.TwoStateAt.Cell(), $Heap);
    ##y#9 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#9, TInt, $Heap);
    assert {:id "id62"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
    assume TwoStateAt.__default.SP#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
    assume TwoStateAt.__default.SP#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
    u#0 := TwoStateAt.__default.SP(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(312,5)
    if (b#0)
    {
    }

    assume true;
    assert {:id "id64"} {:subsumption 0} b#0 ==> u#0 == LitInt(21);
    assume {:id "id65"} b#0 ==> u#0 == LitInt(21);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(313,5)
    if (!b#0)
    {
        ##c#7 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#7, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#10 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#10, TwoStateAt._default.Test$Y, $Heap);
        assert {:id "id66"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assert {:id "id67"} $IsAllocBox(y#0, TwoStateAt._default.Test$Y, $Heap_at_0);
        assume TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0);
    }

    assume !b#0
       ==> TwoStateAt.Cell.Sum#canCall(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0);
    assert {:id "id68"} {:subsumption 0} !b#0
       ==> TwoStateAt.Cell.Sum(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0)
         == LitInt(30);
    assume {:id "id69"} !b#0
       ==> TwoStateAt.Cell.Sum(TwoStateAt._default.Test$Y, $Heap_at_0, $Heap, c#0, y#0)
         == LitInt(30);
}



procedure {:verboseName "TwoStateAt.TwoLemma (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TwoLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt._default.TwoLemma$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.TwoLemma$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, previous$Heap));
  free requires 4 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TwoLemma (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TwoLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt._default.TwoLemma$Y: Ty, 
    c#0: ref, 
    y#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##c#0: ref;
  var ##y#0: int;
  var ##c#1: ref;
  var ##y#1: Box;
  var ##c#2: ref;
  var ##y#2: Box;
  var ##y#3: Box;


    // AddMethodImpl: TwoLemma, CheckWellFormed$$TwoStateAt.__default.TwoLemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id70"} c#0 != null;
    assert {:id "id71"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
    ##y#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, TInt, $Heap);
    assert {:id "id72"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assume TwoStateAt.Cell.Sum#canCall(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
    assume {:id "id73"} Mul(LitInt(2), $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int)
       <= TwoStateAt.Cell.Sum(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
    if (*)
    {
        assert {:id "id74"} c#0 != null;
        assume {:id "id75"} LitInt(0) <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
        assert {:id "id76"} c#0 != null;
        assert {:id "id77"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        ##c#1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#1 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#1, TwoStateAt._default.TwoLemma$Y, $Heap);
        assert {:id "id78"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assert {:id "id79"} $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, old($Heap));
        assume TwoStateAt.__default.SP#canCall(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0);
        if ($Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
           <= TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0))
        {
            ##c#2 := c#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##c#2, Tclass.TwoStateAt.Cell(), $Heap);
            ##y#2 := y#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##y#2, TwoStateAt._default.TwoLemma$Y, $Heap);
            assert {:id "id80"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
            assert {:id "id81"} $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, old($Heap));
            assume TwoStateAt.__default.SP#canCall(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0);
            assert {:id "id82"} c#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
            ##y#3 := y#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##y#3, TwoStateAt._default.TwoLemma$Y, $Heap);
            assert {:id "id83"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
            assert {:id "id84"} $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, old($Heap));
            assume TwoStateAt.Cell.Plus#canCall(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0);
        }

        assume {:id "id85"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
             <= TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0)
           && TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0)
             == TwoStateAt.Cell.Plus(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0);
    }
    else
    {
        assume {:id "id86"} LitInt(0) <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
           ==> $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
               <= TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0)
             && TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0)
               == TwoStateAt.Cell.Plus(TwoStateAt._default.TwoLemma$Y, old($Heap), $Heap, c#0, y#0);
    }
}



procedure {:verboseName "TwoStateAt.TwoLemma (call)"} Call$$TwoStateAt.__default.TwoLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt._default.TwoLemma$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.TwoLemma$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, previous$Heap));
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, previous$Heap);
  // user-defined preconditions
  requires {:id "id87"} Mul(LitInt(2), $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int)
     <= TwoStateAt.Cell.Sum(TInt, previous$Heap, current$Heap, c#0, $Box(LitInt(0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures LitInt(0) <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int
     ==> TwoStateAt.__default.SP#canCall(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
       && ($Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
           <= TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
         ==> TwoStateAt.__default.SP#canCall(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
           && TwoStateAt.Cell.Plus#canCall(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0));
  ensures {:id "id88"} LitInt(0) <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int
     ==> $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
       <= TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0);
  ensures {:id "id89"} LitInt(0) <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int
     ==> TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
       == TwoStateAt.Cell.Plus(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.TwoLemma (correctness)"} Impl$$TwoStateAt.__default.TwoLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt._default.TwoLemma$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.TwoLemma$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt._default.TwoLemma$Y, previous$Heap);
  // user-defined preconditions
  requires {:id "id90"} Mul(LitInt(2), $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int)
     <= TwoStateAt.Cell.Sum(TInt, previous$Heap, current$Heap, c#0, $Box(LitInt(0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures LitInt(0) <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int
     ==> TwoStateAt.__default.SP#canCall(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
       && ($Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
           <= TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
         ==> TwoStateAt.__default.SP#canCall(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
           && TwoStateAt.Cell.Plus#canCall(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0));
  ensures {:id "id91"} LitInt(0) <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int
     ==> $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
       <= TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0);
  ensures {:id "id92"} LitInt(0) <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int
     ==> TwoStateAt.__default.SP(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0)
       == TwoStateAt.Cell.Plus(TwoStateAt._default.TwoLemma$Y, previous$Heap, current$Heap, c#0, y#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TwoLemma (correctness)"} Impl$$TwoStateAt.__default.TwoLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt._default.TwoLemma$Y: Ty, 
    c#0: ref, 
    y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: TwoLemma, Impl$$TwoStateAt.__default.TwoLemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "TwoStateAt.CallLemmas (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.CallLemmas(TwoStateAt._default.CallLemmas$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap), 
    b#0: bool, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.CallLemmas$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.CallLemmas$Y, $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.CallLemmas (call)"} Call$$TwoStateAt.__default.CallLemmas(TwoStateAt._default.CallLemmas$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap), 
    b#0: bool, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.CallLemmas$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.CallLemmas$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.CallLemmas (correctness)"} Impl$$TwoStateAt.__default.CallLemmas(TwoStateAt._default.CallLemmas$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap), 
    b#0: bool, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt._default.CallLemmas$Y)
         && $IsAllocBox(y#0, TwoStateAt._default.CallLemmas$Y, $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.CallLemmas (correctness)"} Impl$$TwoStateAt.__default.CallLemmas(TwoStateAt._default.CallLemmas$Y: Ty, c#0: ref, b#0: bool, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $Heap_at_0: Heap;
  var c##0_0: ref;
  var y##0_0: Box;
  var $rhs#1: int;
  var $Heap_at_1: Heap;
  var c##0: ref;
  var y##0: Box;
  var $rhs#1_0: int;
  var c##1_0: ref;
  var y##1_0: Box;
  var $rhs#2_0: int;
  var y##1: Box;
  var y##2: int;

    // AddMethodImpl: CallLemmas, Impl$$TwoStateAt.__default.CallLemmas
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(325,12)
    assert {:id "id93"} c#0 != null;
    assume true;
    assert {:id "id94"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id95"} c#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 1;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap_at_0 := $Heap;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(327,5)
    assert {:id "id98"} c#0 != null;
    assert {:id "id99"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assume true;
    if (LitInt(-1) <= $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int)
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(328,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_0 := c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##0_0 := y#0;
        assert {:id "id100"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assert {:id "id101"} $IsAllocBox(y#0, TwoStateAt._default.CallLemmas$Y, old($Heap));
        call {:id "id102"} Call$$TwoStateAt.__default.TwoLemma(old($Heap), $Heap, TwoStateAt._default.CallLemmas$Y, c##0_0, y##0_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
    }
    else
    {
    }

  after_0:
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(331,12)
    assert {:id "id103"} c#0 != null;
    assume true;
    assert {:id "id104"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id105"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 4;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    $Heap_at_1 := $Heap;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(333,21)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := y#0;
    assert {:id "id108"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
    assert {:id "id109"} $IsAllocBox(y#0, TwoStateAt._default.CallLemmas$Y, $Heap_at_0);
    call {:id "id110"} Call$$TwoStateAt.__default.TwoLemma($Heap_at_0, $Heap, TwoStateAt._default.CallLemmas$Y, c##0, y##0);
    // TrCallStmt: After ProcessCallStmt

  after_1:
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(335,5)
    assume true;
    if (b#0)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(336,14)
        assert {:id "id111"} c#0 != null;
        assume true;
        assert {:id "id112"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
        assert {:id "id113"} c#0 != null;
        assume true;
        $rhs#1_0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int - 10;
        $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(337,24)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##1_0 := c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##1_0 := y#0;
        assert {:id "id116"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_1);
        assert {:id "id117"} $IsAllocBox(y#0, TwoStateAt._default.CallLemmas$Y, $Heap_at_1);
        call {:id "id118"} Call$$TwoStateAt.__default.TwoLemma($Heap_at_1, $Heap, TwoStateAt._default.CallLemmas$Y, c##1_0, y##1_0);
        // TrCallStmt: After ProcessCallStmt
        pop;
    }
    else
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(339,14)
        assert {:id "id119"} c#0 != null;
        assume true;
        assert {:id "id120"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
        assert {:id "id121"} c#0 != null;
        assume true;
        $rhs#2_0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 2;
        $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#2_0));
        assume $IsGoodHeap($Heap);
        pop;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(341,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id124"} c#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##1 := y#0;
    assert {:id "id125"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id126"} $IsAllocBox(y#0, TwoStateAt._default.CallLemmas$Y, old($Heap));
    call {:id "id127"} Call$$TwoStateAt.Cell.LL(old($Heap), $Heap, TwoStateAt._default.CallLemmas$Y, c#0, y##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(342,9)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id128"} c#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##2 := LitInt(0);
    assert {:id "id129"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    call {:id "id130"} Call$$TwoStateAt.Cell.LL(old($Heap), $Heap, TInt, c#0, $Box(y##2));
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(343,5)
    assume true;
    assert {:id "id131"} !b#0;
}



// function declaration for TwoStateAt._default.Opaque
function TwoStateAt.__default.Opaque($reveal: bool, $prevHeap: Heap, $heap: Heap, c#0: ref) : int
uses {
// definition axiom for TwoStateAt.__default.Opaque (revealed)
axiom {:id "id132"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, c#0: ref :: 
    { TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, c#0), $IsGoodHeap($Heap) } 
    TwoStateAt.__default.Opaque#canCall($prevHeap, $Heap, c#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, c#0)
         == $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int + 12);
// definition axiom for TwoStateAt.__default.Opaque for all literals (revealed)
axiom {:id "id133"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, c#0: ref :: 
    {:weight 3} { TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, Lit(c#0)), $IsGoodHeap($Heap) } 
    TwoStateAt.__default.Opaque#canCall($prevHeap, $Heap, Lit(c#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.__default.Opaque(true, $prevHeap, $Heap, Lit(c#0))
         == $Unbox(read($prevHeap, Lit(c#0), TwoStateAt.Cell.data)): int + 12);
}

function TwoStateAt.__default.Opaque#canCall($prevHeap: Heap, $heap: Heap, c#0: ref) : bool;

// frame axiom for TwoStateAt.__default.Opaque
axiom (forall $reveal: bool, $prevHeap: Heap, $h0: Heap, $h1: Heap, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.Opaque($reveal, $prevHeap, $h1, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.Opaque#canCall($prevHeap, $h0, c#0)
         || $Is(c#0, Tclass.TwoStateAt.Cell()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> TwoStateAt.__default.Opaque($reveal, $prevHeap, $h0, c#0)
       == TwoStateAt.__default.Opaque($reveal, $prevHeap, $h1, c#0));

function TwoStateAt.__default.Opaque#requires(Heap, Heap, ref) : bool;

// #requires axiom for TwoStateAt.__default.Opaque
axiom (forall $prevHeap: Heap, $Heap: Heap, c#0: ref :: 
  { TwoStateAt.__default.Opaque#requires($prevHeap, $Heap, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.__default.Opaque#requires($prevHeap, $Heap, c#0)
       == $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap));

procedure {:verboseName "TwoStateAt.Opaque (well-formedness)"} CheckWellformed$$TwoStateAt.__default.Opaque(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Opaque (well-formedness)"} CheckWellformed$$TwoStateAt.__default.Opaque(previous$Heap: Heap, current$Heap: Heap, c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;


    $Heap := current$Heap;
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
        assert {:id "id134"} c#0 != null;
        assert {:id "id135"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume {:id "id136"} TwoStateAt.__default.Opaque(reveal_TwoStateAt._default.Opaque, old($Heap), $Heap, c#0)
           == $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int + 12;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.__default.Opaque(reveal_TwoStateAt._default.Opaque, old($Heap), $Heap, c#0), 
          TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.UseOpaque (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.UseOpaque(c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.UseOpaque (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.UseOpaque(c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: UseOpaque, CheckWellFormed$$TwoStateAt.__default.UseOpaque
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    assert {:id "id137"} c#0 != null;
    assume {:id "id138"} $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int == LitInt(100);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TwoStateAt.UseOpaque (call)"} Call$$TwoStateAt.__default.UseOpaque(c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap));
  // user-defined preconditions
  requires {:id "id139"} $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int == LitInt(100);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.UseOpaque (correctness)"} Impl$$TwoStateAt.__default.UseOpaque(c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id140"} $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int == LitInt(100);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.UseOpaque (correctness)"} Impl$$TwoStateAt.__default.UseOpaque(c#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $Heap_at_0: Heap;
  var $rhs#1: int;
  var y112#0: int;
  var ##c#0: ref;
  var y117#0: int;
  var ##c#1: ref;

    // AddMethodImpl: UseOpaque, Impl$$TwoStateAt.__default.UseOpaque
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(351,12)
    assert {:id "id141"} c#0 != null;
    assume true;
    assert {:id "id142"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id143"} c#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 5;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(353,12)
    assert {:id "id146"} c#0 != null;
    assume true;
    assert {:id "id147"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id148"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 2;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#1));
    assume $IsGoodHeap($Heap);

  after_0:
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(355,14)
    assume true;
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
    assert {:id "id151"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assume TwoStateAt.__default.Opaque#canCall(old($Heap), $Heap, c#0);
    assume TwoStateAt.__default.Opaque#canCall(old($Heap), $Heap, c#0);
    y112#0 := TwoStateAt.__default.Opaque(reveal_TwoStateAt._default.Opaque, old($Heap), $Heap, c#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(356,14)
    assume true;
    ##c#1 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#1, Tclass.TwoStateAt.Cell(), $Heap);
    assert {:id "id153"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
    assume TwoStateAt.__default.Opaque#canCall($Heap_at_0, $Heap, c#0);
    assume TwoStateAt.__default.Opaque#canCall($Heap_at_0, $Heap, c#0);
    y117#0 := TwoStateAt.__default.Opaque(reveal_TwoStateAt._default.Opaque, $Heap_at_0, $Heap, c#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(358,5)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(359,7)
        assume true;
        assert {:id "id155"} y112#0 == LitInt(112);
        pop;
    }
    else
    {
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(360,12)
        if (*)
        {
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(361,7)
            assume true;
            assert {:id "id156"} y117#0 == LitInt(117);
            pop;
        }
        else
        {
            push;
            // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(363,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(363,14)
            // TrCallStmt: Before ProcessCallStmt
            call {:id "id157"} Call$$TwoStateAt.__default.reveal__Opaque(old($Heap), $Heap);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(364,7)
            assume true;
            assert {:id "id158"} y112#0 == LitInt(112);
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(365,7)
            assume true;
            assert {:id "id159"} y117#0 == LitInt(117);
            pop;
        }

        pop;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(367,5)
    assert {:id "id160"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id161"} $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int == LitInt(107);
}



// function declaration for TwoStateAt._default.FuncUseOpaque
function TwoStateAt.__default.FuncUseOpaque($prevHeap: Heap, $heap: Heap, c#0: ref, b#0: bool) : int
uses {
// definition axiom for TwoStateAt.__default.FuncUseOpaque (revealed)
axiom {:id "id162"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, b#0: bool :: 
    { TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, c#0, b#0), $IsGoodHeap($Heap) } 
    TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap, $Heap, c#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, c#0, b#0) == LitInt(10));
// definition axiom for TwoStateAt.__default.FuncUseOpaque for all literals (revealed)
axiom {:id "id163"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, b#0: bool :: 
    {:weight 3} { TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, Lit(c#0), Lit(b#0)), $IsGoodHeap($Heap) } 
    TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap, $Heap, Lit(c#0), Lit(b#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.__default.FuncUseOpaque($prevHeap, $Heap, Lit(c#0), Lit(b#0))
         == LitInt(10));
}

function TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap: Heap, $heap: Heap, c#0: ref, b#0: bool) : bool;

// frame axiom for TwoStateAt.__default.FuncUseOpaque
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, c#0: ref, b#0: bool :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.FuncUseOpaque($prevHeap, $h1, c#0, b#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.FuncUseOpaque#canCall($prevHeap, $h0, c#0, b#0)
         || $Is(c#0, Tclass.TwoStateAt.Cell()))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> TwoStateAt.__default.FuncUseOpaque($prevHeap, $h0, c#0, b#0)
       == TwoStateAt.__default.FuncUseOpaque($prevHeap, $h1, c#0, b#0));

function TwoStateAt.__default.FuncUseOpaque#requires(Heap, Heap, ref, bool) : bool;

// #requires axiom for TwoStateAt.__default.FuncUseOpaque
axiom (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, b#0: bool :: 
  { TwoStateAt.__default.FuncUseOpaque#requires($prevHeap, $Heap, c#0, b#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.__default.FuncUseOpaque#requires($prevHeap, $Heap, c#0, b#0)
       == ($IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)
         && $IsAlloc(b#0, TBool, $prevHeap)));

procedure {:verboseName "TwoStateAt.FuncUseOpaque (well-formedness)"} CheckWellformed$$TwoStateAt.__default.FuncUseOpaque(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    b#0: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.FuncUseOpaque (well-formedness)"} CheckWellformed$$TwoStateAt.__default.FuncUseOpaque(previous$Heap: Heap, current$Heap: Heap, c#0: ref, b#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;


    $Heap := current$Heap;
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
        // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(370,5)
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(370,12)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id164"} Call$$TwoStateAt.__default.reveal__Opaque(old($Heap), $Heap);
        // TrCallStmt: After ProcessCallStmt
        assume {:id "id165"} TwoStateAt.__default.FuncUseOpaque(old($Heap), $Heap, c#0, b#0) == LitInt(10);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.__default.FuncUseOpaque(old($Heap), $Heap, c#0, b#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.Allocatedness_Function (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.Allocatedness__Function();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.Allocatedness_Function (call)"} Call$$TwoStateAt.__default.Allocatedness__Function();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.Allocatedness_Function (correctness)"} Impl$$TwoStateAt.__default.Allocatedness__Function() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y: Ty, h: Heap, self: ref) : HandleType;

// function declaration for TwoStateAt.Cell.Plus
function TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $heap: Heap, this: ref, y#0: Box)
   : int
uses {
// definition axiom for TwoStateAt.Cell.Plus (revealed)
axiom {:id "id569"} 2 <= $FunctionContextHeight
   ==> (forall TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $Heap: Heap, this: ref, y#0: Box :: 
    { TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0), $IsGoodHeap($Heap) } 
    TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass.TwoStateAt.Cell())
           && $IsAlloc(this, Tclass.TwoStateAt.Cell(), $prevHeap)
           && $IsBox(y#0, TwoStateAt.Cell.Plus$Y))
       ==> TwoStateAt.__default.SP#canCall(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
         && TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
           == TwoStateAt.__default.SP(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0));
}

function TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $heap: Heap, this: ref, y#0: Box)
   : bool;

axiom (forall TwoStateAt.Cell.Plus$Y: Ty, 
    $prevHeap: Heap, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box :: 
  { Apply1(TwoStateAt.Cell.Plus$Y, 
      TInt, 
      $heap, 
      TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y, $prevHeap, $self), 
      $fh$0x#0) } 
  Apply1(TwoStateAt.Cell.Plus$Y, 
      TInt, 
      $heap, 
      TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y, $prevHeap, $self), 
      $fh$0x#0)
     == $Box(TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $heap, $self, $fh$0x#0)));

axiom (forall TwoStateAt.Cell.Plus$Y: Ty, 
    $prevHeap: Heap, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box :: 
  { Requires1(TwoStateAt.Cell.Plus$Y, 
      TInt, 
      $heap, 
      TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y, $prevHeap, $self), 
      $fh$0x#0) } 
  Requires1(TwoStateAt.Cell.Plus$Y, 
      TInt, 
      $heap, 
      TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y, $prevHeap, $self), 
      $fh$0x#0)
     == TwoStateAt.Cell.Plus#requires(TwoStateAt.Cell.Plus$Y, $prevHeap, $heap, $self, $fh$0x#0));

axiom (forall $bx: Box, 
    TwoStateAt.Cell.Plus$Y: Ty, 
    $prevHeap: Heap, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(TwoStateAt.Cell.Plus$Y, 
        TInt, 
        $heap, 
        TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y, $prevHeap, $self), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(TwoStateAt.Cell.Plus$Y, 
        TInt, 
        $heap, 
        TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y, $prevHeap, $self), 
        $fh$0x#0), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $self));

axiom (forall TwoStateAt.Cell.Plus$Y: Ty, 
    $prevHeap: Heap, 
    $self: ref, 
    $heap: Heap, 
    $fh$0x#0: Box :: 
  { TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $heap, $self, $fh$0x#0) } 
  TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $heap, $self, $fh$0x#0)
     == $Unbox(Apply1(TwoStateAt.Cell.Plus$Y, 
        TInt, 
        $heap, 
        TwoStateAt.Cell.Plus#Handle(TwoStateAt.Cell.Plus$Y, $prevHeap, $self), 
        $fh$0x#0)): int);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Allocatedness_Function (correctness)"} Impl$$TwoStateAt.__default.Allocatedness__Function() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var $Heap_at_1: Heap;
  var $Heap_at_2: Heap;
  var $rhs#0: int;
  var $Heap_at_3: Heap;
  var a#0_0: HandleType
     where $Is(a#0_0, Tclass._System.___hFunc1(TInt, TInt))
       && $IsAlloc(a#0_0, Tclass._System.___hFunc1(TInt, TInt), $Heap);
  var a#1_0: int;
  var ##c#1_0: ref;
  var ##y#1_0: int;
  var ##c#1_1: ref;
  var ##y#1_1: int;
  var ##c#1_2: ref;
  var ##y#1_2: int;
  var a#2_0: int;
  var ##c#2_0: ref;
  var ##y#2_0: int;
  var u#3_0: int;
  var ##c#3_0: ref;
  var ##y#3_0: int;
  var a#4_0: int;
  var ##y#4_0: int;
  var ##y#4_1: int;
  var ##y#4_2: int;
  var a#5_0: int;
  var ##y#5_0: int;
  var a#6_0: int;
  var ##y#6_0: int;

    // AddMethodImpl: Allocatedness_Function, Impl$$TwoStateAt.__default.Allocatedness__Function
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(376,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(376,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(5);
    call {:id "id166"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;

  after_0:
    $Heap_at_1 := $Heap;
    $Heap_at_2 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(379,12)
    assert {:id "id168"} defass#c#0;
    assert {:id "id169"} c#0 != null;
    assume true;
    assert {:id "id170"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id171"} defass#c#0;
    assert {:id "id172"} c#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 400;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);

  after_1:
    $Heap_at_3 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(382,5)
    if (*)
    {
        assume true;
        assume {:id "id216"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(384,15)
        assume true;
        assert {:id "id217"} defass#c#0;
        assert {:id "id218"} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
        ##y#6_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#6_0, TInt, $Heap);
        assert {:id "id219"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.Cell.Plus#canCall(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
        assume TwoStateAt.Cell.Plus#canCall(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
        a#6_0 := TwoStateAt.Cell.Plus(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
    }
    else if (*)
    {
        assume true;
        assume {:id "id211"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(386,15)
        assume true;
        assert {:id "id212"} defass#c#0;
        assert {:id "id213"} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
        ##y#5_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#5_0, TInt, $Heap);
        assert {:id "id214"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
        assume TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
        a#5_0 := TwoStateAt.Cell.Plus(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
    }
    else if (*)
    {
        assume true;
        assume {:id "id199"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(388,15)
        assume true;
        assert {:id "id200"} defass#c#0;
        assert {:id "id201"} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
        ##y#4_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#4_0, TInt, $Heap);
        assert {:id "id202"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_1);
        assume TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_1, $Heap, c#0, $Box(LitInt(0)));
        assert {:id "id203"} defass#c#0;
        assert {:id "id204"} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
        ##y#4_1 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#4_1, TInt, $Heap);
        assert {:id "id205"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_2);
        assume TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_2, $Heap, c#0, $Box(LitInt(0)));
        assert {:id "id206"} defass#c#0;
        assert {:id "id207"} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
        ##y#4_2 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#4_2, TInt, $Heap);
        assert {:id "id208"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_3);
        assume TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_3, $Heap, c#0, $Box(LitInt(0)));
        assume TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_1, $Heap, c#0, $Box(LitInt(0)))
           && TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_2, $Heap, c#0, $Box(LitInt(0)))
           && TwoStateAt.Cell.Plus#canCall(TInt, $Heap_at_3, $Heap, c#0, $Box(LitInt(0)));
        a#4_0 := TwoStateAt.Cell.Plus(TInt, $Heap_at_1, $Heap, c#0, $Box(LitInt(0)))
           + TwoStateAt.Cell.Plus(TInt, $Heap_at_2, $Heap, c#0, $Box(LitInt(0)))
           + TwoStateAt.Cell.Plus(TInt, $Heap_at_3, $Heap, c#0, $Box(LitInt(0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(389,9)
        assume true;
        assert {:id "id210"} a#4_0 == LitInt(5 + 5 + 405 + 1215);
    }
    else if (*)
    {
        assume true;
        assume {:id "id195"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(391,15)
        assume true;
        assert {:id "id196"} defass#c#0;
        ##c#3_0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#3_0, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#3_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#3_0, TInt, $Heap);
        assert {:id "id197"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.Cell.Sum#canCall(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
        assume TwoStateAt.Cell.Sum#canCall(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
        u#3_0 := TwoStateAt.Cell.Sum(TInt, old($Heap), $Heap, c#0, $Box(LitInt(0)));
    }
    else if (*)
    {
        assume true;
        assume {:id "id191"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(393,15)
        assume true;
        assert {:id "id192"} defass#c#0;
        ##c#2_0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#2_0, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#2_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#2_0, TInt, $Heap);
        assert {:id "id193"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
        assume TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
        a#2_0 := TwoStateAt.Cell.Sum(TInt, $Heap_at_0, $Heap, c#0, $Box(LitInt(0)));
    }
    else if (*)
    {
        assume true;
        assume {:id "id182"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(395,15)
        assume true;
        assert {:id "id183"} defass#c#0;
        ##c#1_0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1_0, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#1_0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#1_0, TInt, $Heap);
        assert {:id "id184"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_1);
        assume TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_1, $Heap, c#0, $Box(LitInt(0)));
        assert {:id "id185"} defass#c#0;
        ##c#1_1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1_1, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#1_1 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#1_1, TInt, $Heap);
        assert {:id "id186"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_2);
        assume TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_2, $Heap, c#0, $Box(LitInt(0)));
        assert {:id "id187"} defass#c#0;
        ##c#1_2 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1_2, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#1_2 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#1_2, TInt, $Heap);
        assert {:id "id188"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_3);
        assume TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_3, $Heap, c#0, $Box(LitInt(0)));
        assume TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_1, $Heap, c#0, $Box(LitInt(0)))
           && TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_2, $Heap, c#0, $Box(LitInt(0)))
           && TwoStateAt.Cell.Sum#canCall(TInt, $Heap_at_3, $Heap, c#0, $Box(LitInt(0)));
        a#1_0 := TwoStateAt.Cell.Sum(TInt, $Heap_at_1, $Heap, c#0, $Box(LitInt(0)))
           + TwoStateAt.Cell.Sum(TInt, $Heap_at_2, $Heap, c#0, $Box(LitInt(0)))
           + TwoStateAt.Cell.Sum(TInt, $Heap_at_3, $Heap, c#0, $Box(LitInt(0)));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(396,9)
        assume true;
        assert {:id "id190"} a#1_0 == LitInt(5 + 5 + 405 + 1215);
    }
    else if (*)
    {
        assume true;
        assume {:id "id176"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(398,15)
        assume true;
        assert {:id "id177"} 2 != $FunctionContextHeight;
        assert {:id "id178"} defass#c#0;
        assert {:id "id179"} c#0 != null;
        assert {:id "id180"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume true;
        a#0_0 := TwoStateAt.Cell.Plus#Handle(TInt, old($Heap), c#0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true);
        assert {:id "id175"} false;
    }

  after_3:
}



procedure {:verboseName "TwoStateAt.Allocatedness_Lemma (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.Allocatedness__Lemma();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.Allocatedness_Lemma (call)"} Call$$TwoStateAt.__default.Allocatedness__Lemma();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.Allocatedness_Lemma (correctness)"} Impl$$TwoStateAt.__default.Allocatedness__Lemma() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Allocatedness_Lemma (correctness)"} Impl$$TwoStateAt.__default.Allocatedness__Lemma() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var $Heap_at_1: Heap;
  var $Heap_at_2: Heap;
  var $rhs#0: int;
  var $Heap_at_3: Heap;
  var c##0_0: ref;
  var y##0_0: int;
  var c##0_1: ref;
  var y##0_1: int;
  var c##0_2: ref;
  var y##0_2: int;
  var c##1_0: ref;
  var y##1_0: int;
  var c##2_0: ref;
  var y##2_0: int;
  var y##3_0: int;
  var y##3_1: int;
  var y##3_2: int;
  var y##4_0: int;
  var y##5_0: int;

    // AddMethodImpl: Allocatedness_Lemma, Impl$$TwoStateAt.__default.Allocatedness__Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(404,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(404,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(5);
    call {:id "id221"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;

  after_0:
    $Heap_at_1 := $Heap;
    $Heap_at_2 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(407,12)
    assert {:id "id223"} defass#c#0;
    assert {:id "id224"} c#0 != null;
    assume true;
    assert {:id "id225"} $_ModifiesFrame[c#0, TwoStateAt.Cell.data];
    assert {:id "id226"} defass#c#0;
    assert {:id "id227"} c#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int + 400;
    $Heap := update($Heap, c#0, TwoStateAt.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);

  after_1:
    $Heap_at_3 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(410,5)
    if (*)
    {
        assume true;
        assume {:id "id267"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(412,13)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id268"} defass#c#0;
        assume true;
        assert {:id "id269"} c#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##5_0 := LitInt(0);
        assert {:id "id270"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        call {:id "id271"} Call$$TwoStateAt.Cell.LL(old($Heap), $Heap, TInt, c#0, $Box(y##5_0));
        // TrCallStmt: After ProcessCallStmt
    }
    else if (*)
    {
        assume true;
        assume {:id "id262"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(414,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id263"} defass#c#0;
        assume true;
        assert {:id "id264"} c#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##4_0 := LitInt(0);
        assert {:id "id265"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        call {:id "id266"} Call$$TwoStateAt.Cell.LL($Heap_at_0, $Heap, TInt, c#0, $Box(y##4_0));
        // TrCallStmt: After ProcessCallStmt
    }
    else if (*)
    {
        assume true;
        assume {:id "id249"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(416,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id250"} defass#c#0;
        assume true;
        assert {:id "id251"} c#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##3_0 := LitInt(0);
        assert {:id "id252"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_1);
        call {:id "id253"} Call$$TwoStateAt.Cell.LL($Heap_at_1, $Heap, TInt, c#0, $Box(y##3_0));
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(417,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id254"} defass#c#0;
        assume true;
        assert {:id "id255"} c#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##3_1 := LitInt(0);
        assert {:id "id256"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_2);
        call {:id "id257"} Call$$TwoStateAt.Cell.LL($Heap_at_2, $Heap, TInt, c#0, $Box(y##3_1));
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(418,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id258"} defass#c#0;
        assume true;
        assert {:id "id259"} c#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##3_2 := LitInt(0);
        assert {:id "id260"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_3);
        call {:id "id261"} Call$$TwoStateAt.Cell.LL($Heap_at_3, $Heap, TInt, c#0, $Box(y##3_2));
        // TrCallStmt: After ProcessCallStmt
    }
    else if (*)
    {
        assume true;
        assume {:id "id245"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(420,27)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id246"} defass#c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##2_0 := c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##2_0 := LitInt(0);
        assert {:id "id247"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        call {:id "id248"} Call$$TwoStateAt.Cell.IdentityLemma(old($Heap), $Heap, TInt, c##2_0, $Box(y##2_0));
        // TrCallStmt: After ProcessCallStmt
    }
    else if (*)
    {
        assume true;
        assume {:id "id241"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(422,29)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id242"} defass#c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##1_0 := c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##1_0 := LitInt(0);
        assert {:id "id243"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        call {:id "id244"} Call$$TwoStateAt.Cell.IdentityLemma($Heap_at_0, $Heap, TInt, c##1_0, $Box(y##1_0));
        // TrCallStmt: After ProcessCallStmt
    }
    else if (*)
    {
        assume true;
        assume {:id "id231"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(424,29)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id232"} defass#c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_0 := c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##0_0 := LitInt(0);
        assert {:id "id233"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_1);
        call {:id "id234"} Call$$TwoStateAt.Cell.IdentityLemma($Heap_at_1, $Heap, TInt, c##0_0, $Box(y##0_0));
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(425,29)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id235"} defass#c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_1 := c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##0_1 := LitInt(0);
        assert {:id "id236"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_2);
        call {:id "id237"} Call$$TwoStateAt.Cell.IdentityLemma($Heap_at_2, $Heap, TInt, c##0_1, $Box(y##0_1));
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(426,29)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id238"} defass#c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_2 := c#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##0_2 := LitInt(0);
        assert {:id "id239"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_3);
        call {:id "id240"} Call$$TwoStateAt.Cell.IdentityLemma($Heap_at_3, $Heap, TInt, c##0_2, $Box(y##0_2));
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id230"} false;
    }

  after_3:
}



// function declaration for TwoStateAt._default.FuncMoreParams
function TwoStateAt.__default.FuncMoreParams($prevHeap: Heap, $heap: Heap, c#0: ref, d#0: ref) : int
uses {
// definition axiom for TwoStateAt.__default.FuncMoreParams (revealed)
axiom {:id "id272"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, d#0: ref :: 
    { TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, c#0, d#0), $IsGoodHeap($Heap) } 
    TwoStateAt.__default.FuncMoreParams#canCall($prevHeap, $Heap, c#0, d#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell())
           && $Is(d#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, c#0, d#0) == LitInt(7));
// definition axiom for TwoStateAt.__default.FuncMoreParams for all literals (revealed)
axiom {:id "id273"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, d#0: ref :: 
    {:weight 3} { TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, Lit(c#0), Lit(d#0)), $IsGoodHeap($Heap) } 
    TwoStateAt.__default.FuncMoreParams#canCall($prevHeap, $Heap, Lit(c#0), Lit(d#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell())
           && $Is(d#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.__default.FuncMoreParams($prevHeap, $Heap, Lit(c#0), Lit(d#0))
         == LitInt(7));
}

function TwoStateAt.__default.FuncMoreParams#canCall($prevHeap: Heap, $heap: Heap, c#0: ref, d#0: ref) : bool;

// frame axiom for TwoStateAt.__default.FuncMoreParams
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, c#0: ref, d#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.__default.FuncMoreParams($prevHeap, $h1, c#0, d#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.__default.FuncMoreParams#canCall($prevHeap, $h0, c#0, d#0)
         || ($Is(c#0, Tclass.TwoStateAt.Cell()) && $Is(d#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> TwoStateAt.__default.FuncMoreParams($prevHeap, $h0, c#0, d#0)
       == TwoStateAt.__default.FuncMoreParams($prevHeap, $h1, c#0, d#0));

function TwoStateAt.__default.FuncMoreParams#requires(Heap, Heap, ref, ref) : bool;

// #requires axiom for TwoStateAt.__default.FuncMoreParams
axiom (forall $prevHeap: Heap, $Heap: Heap, c#0: ref, d#0: ref :: 
  { TwoStateAt.__default.FuncMoreParams#requires($prevHeap, $Heap, c#0, d#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
       && $Is(d#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.__default.FuncMoreParams#requires($prevHeap, $Heap, c#0, d#0)
       == $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap));

procedure {:verboseName "TwoStateAt.FuncMoreParams (well-formedness)"} CheckWellformed$$TwoStateAt.__default.FuncMoreParams(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    d#0: ref
       where $Is(d#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(d#0, Tclass.TwoStateAt.Cell(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.LemmaMoreParams (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.LemmaMoreParams(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    d#0: ref
       where $Is(d#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(d#0, Tclass.TwoStateAt.Cell(), current$Heap))
   returns (e#0: ref
       where $Is(e#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(e#0, Tclass.TwoStateAt.Cell(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.LemmaMoreParams (call)"} Call$$TwoStateAt.__default.LemmaMoreParams(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    d#0: ref
       where $Is(d#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(d#0, Tclass.TwoStateAt.Cell(), current$Heap))
   returns (e#0: ref
       where $Is(e#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(e#0, Tclass.TwoStateAt.Cell(), current$Heap));
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.LemmaMoreParams (correctness)"} Impl$$TwoStateAt.__default.LemmaMoreParams(previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    d#0: ref
       where $Is(d#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(d#0, Tclass.TwoStateAt.Cell(), current$Heap))
   returns (defass#e#0: bool, 
    e#0: ref
       where defass#e#0
         ==> $Is(e#0, Tclass.TwoStateAt.Cell())
           && $IsAlloc(e#0, Tclass.TwoStateAt.Cell(), current$Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.LemmaMoreParams (correctness)"} Impl$$TwoStateAt.__default.LemmaMoreParams(previous$Heap: Heap, current$Heap: Heap, c#0: ref, d#0: ref)
   returns (defass#e#0: bool, e#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaMoreParams, Impl$$TwoStateAt.__default.LemmaMoreParams
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(432,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(433,9)
        assume true;
        assume true;
        e#0 := c#0;
        defass#e#0 := true;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(435,9)
        assume true;
        assume true;
        e#0 := d#0;
        defass#e#0 := true;
    }

    assert {:id "id277"} defass#e#0;
}



procedure {:verboseName "TwoStateAt.TestFuncMoreParams (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TestFuncMoreParams(c0#0: ref
       where $Is(c0#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.TestFuncMoreParams (call)"} Call$$TwoStateAt.__default.TestFuncMoreParams(c0#0: ref
       where $Is(c0#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.TestFuncMoreParams (correctness)"} Impl$$TwoStateAt.__default.TestFuncMoreParams(c0#0: ref
       where $Is(c0#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TestFuncMoreParams (correctness)"} Impl$$TwoStateAt.__default.TestFuncMoreParams(c0#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c1#0: bool;
  var c1#0: ref
     where defass#c1#0
       ==> $Is(c1#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c1#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var $Heap_at_0: Heap;
  var defass#c2#0: bool;
  var c2#0: ref
     where defass#c2#0
       ==> $Is(c2#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c2#0, Tclass.TwoStateAt.Cell(), $Heap);
  var x##1: int;
  var x#0: int;
  var ##c#0_0: ref;
  var ##d#0_0: ref;
  var ##c#0_1: ref;
  var ##d#0_1: ref;
  var ##c#1_0: ref;
  var ##d#1_0: ref;
  var ##c#1_1: ref;
  var ##d#1_1: ref;
  var ##c#1_2: ref;
  var ##d#1_2: ref;
  var ##c#2_0: ref;
  var ##d#2_0: ref;
  var ##c#2_1: ref;
  var ##d#2_1: ref;

    // AddMethodImpl: TestFuncMoreParams, Impl$$TwoStateAt.__default.TestFuncMoreParams
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(439,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(439,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(1);
    call {:id "id278"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c1#0 := $nw;
    defass#c1#0 := true;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(441,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(441,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(2);
    call {:id "id280"} $nw := Call$$TwoStateAt.Cell.__ctor(x##1);
    // TrCallStmt: After ProcessCallStmt
    c2#0 := $nw;
    defass#c2#0 := true;

  after_0:
    havoc x#0;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(444,5)
    if (*)
    {
        assume true;
        assume {:id "id299"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(446,11)
        assume true;
        ##c#2_0 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#2_0, Tclass.TwoStateAt.Cell(), $Heap);
        ##d#2_0 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#2_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id300"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c0#0, c0#0);
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c0#0, c0#0);
        x#0 := TwoStateAt.__default.FuncMoreParams(old($Heap), $Heap, c0#0, c0#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(447,11)
        assume true;
        assert {:id "id302"} defass#c1#0;
        ##c#2_1 := c1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#2_1, Tclass.TwoStateAt.Cell(), $Heap);
        ##d#2_1 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#2_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id303"} $IsAlloc(c1#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c1#0, c0#0);
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c1#0, c0#0);
        x#0 := TwoStateAt.__default.FuncMoreParams(old($Heap), $Heap, c1#0, c0#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id290"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(449,11)
        assume true;
        ##c#1_0 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1_0, Tclass.TwoStateAt.Cell(), $Heap);
        ##d#1_0 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id291"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.__default.FuncMoreParams#canCall($Heap_at_0, $Heap, c0#0, c0#0);
        assume TwoStateAt.__default.FuncMoreParams#canCall($Heap_at_0, $Heap, c0#0, c0#0);
        x#0 := TwoStateAt.__default.FuncMoreParams($Heap_at_0, $Heap, c0#0, c0#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(450,11)
        assume true;
        assert {:id "id293"} defass#c1#0;
        ##c#1_1 := c1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1_1, Tclass.TwoStateAt.Cell(), $Heap);
        ##d#1_1 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id294"} $IsAlloc(c1#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.__default.FuncMoreParams#canCall($Heap_at_0, $Heap, c1#0, c0#0);
        assume TwoStateAt.__default.FuncMoreParams#canCall($Heap_at_0, $Heap, c1#0, c0#0);
        x#0 := TwoStateAt.__default.FuncMoreParams($Heap_at_0, $Heap, c1#0, c0#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(451,11)
        assume true;
        assert {:id "id296"} defass#c2#0;
        ##c#1_2 := c2#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#1_2, Tclass.TwoStateAt.Cell(), $Heap);
        ##d#1_2 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#1_2, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id297"} $IsAlloc(c2#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.__default.FuncMoreParams#canCall($Heap_at_0, $Heap, c2#0, c0#0);
        assume TwoStateAt.__default.FuncMoreParams#canCall($Heap_at_0, $Heap, c2#0, c0#0);
        x#0 := TwoStateAt.__default.FuncMoreParams($Heap_at_0, $Heap, c2#0, c0#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id283"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(453,11)
        assume true;
        ##c#0_0 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id284"} defass#c1#0;
        ##d#0_0 := c1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id285"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c0#0, c1#0);
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c0#0, c1#0);
        x#0 := TwoStateAt.__default.FuncMoreParams(old($Heap), $Heap, c0#0, c1#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(454,11)
        assume true;
        ##c#0_1 := c0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id287"} defass#c2#0;
        ##d#0_1 := c2#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##d#0_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id288"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c0#0, c2#0);
        assume TwoStateAt.__default.FuncMoreParams#canCall(old($Heap), $Heap, c0#0, c2#0);
        x#0 := TwoStateAt.__default.FuncMoreParams(old($Heap), $Heap, c0#0, c2#0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id282"} false;
    }
}



procedure {:verboseName "TwoStateAt.TestLemmaMoreParams (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TestLemmaMoreParams(c0#0: ref
       where $Is(c0#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.TestLemmaMoreParams (call)"} Call$$TwoStateAt.__default.TestLemmaMoreParams(c0#0: ref
       where $Is(c0#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.TestLemmaMoreParams (correctness)"} Impl$$TwoStateAt.__default.TestLemmaMoreParams(c0#0: ref
       where $Is(c0#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TestLemmaMoreParams (correctness)"} Impl$$TwoStateAt.__default.TestLemmaMoreParams(c0#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c1#0: bool;
  var c1#0: ref
     where defass#c1#0
       ==> $Is(c1#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c1#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var $Heap_at_0: Heap;
  var defass#c2#0: bool;
  var c2#0: ref
     where defass#c2#0
       ==> $Is(c2#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c2#0, Tclass.TwoStateAt.Cell(), $Heap);
  var x##1: int;
  var defass#x#0: bool;
  var x#0: ref
     where defass#x#0
       ==> $Is(x#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(x#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $rhs##0_0: ref;
  var c##0_0: ref;
  var d##0_0: ref;
  var $rhs##0_1: ref;
  var c##0_1: ref;
  var d##0_1: ref;
  var $rhs##1_0: ref;
  var c##1_0: ref;
  var d##1_0: ref;
  var $rhs##1_1: ref;
  var c##1_1: ref;
  var d##1_1: ref;
  var $rhs##1_2: ref;
  var c##1_2: ref;
  var d##1_2: ref;
  var $rhs##2_0: ref;
  var c##2_0: ref;
  var d##2_0: ref;
  var $rhs##2_1: ref;
  var c##2_1: ref;
  var d##2_1: ref;

    // AddMethodImpl: TestLemmaMoreParams, Impl$$TwoStateAt.__default.TestLemmaMoreParams
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(458,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(458,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(1);
    call {:id "id305"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c1#0 := $nw;
    defass#c1#0 := true;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(460,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(460,15)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := LitInt(2);
    call {:id "id307"} $nw := Call$$TwoStateAt.Cell.__ctor(x##1);
    // TrCallStmt: After ProcessCallStmt
    c2#0 := $nw;
    defass#c2#0 := true;

  after_0:
    havoc x#0 /* where defass#x#0
       ==> $Is(x#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(x#0, Tclass.TwoStateAt.Cell(), $Heap) */;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(463,5)
    if (*)
    {
        assume true;
        assume {:id "id331"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(465,29)
        assume true;
        // TrCallStmt: Adding lhs with type Cell
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##2_0 := c0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##2_0 := c0#0;
        assert {:id "id332"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), old($Heap));
        call {:id "id333"} $rhs##2_0 := Call$$TwoStateAt.__default.LemmaMoreParams(old($Heap), $Heap, c##2_0, d##2_0);
        // TrCallStmt: After ProcessCallStmt
        x#0 := $rhs##2_0;
        defass#x#0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(466,29)
        assume true;
        // TrCallStmt: Adding lhs with type Cell
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id335"} defass#c1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##2_1 := c1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##2_1 := c0#0;
        assert {:id "id336"} $IsAlloc(c1#0, Tclass.TwoStateAt.Cell(), old($Heap));
        call {:id "id337"} $rhs##2_1 := Call$$TwoStateAt.__default.LemmaMoreParams(old($Heap), $Heap, c##2_1, d##2_1);
        // TrCallStmt: After ProcessCallStmt
        x#0 := $rhs##2_1;
        defass#x#0 := true;
    }
    else if (*)
    {
        assume true;
        assume {:id "id319"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(468,31)
        assume true;
        // TrCallStmt: Adding lhs with type Cell
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##1_0 := c0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##1_0 := c0#0;
        assert {:id "id320"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        call {:id "id321"} $rhs##1_0 := Call$$TwoStateAt.__default.LemmaMoreParams($Heap_at_0, $Heap, c##1_0, d##1_0);
        // TrCallStmt: After ProcessCallStmt
        x#0 := $rhs##1_0;
        defass#x#0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(469,31)
        assume true;
        // TrCallStmt: Adding lhs with type Cell
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id323"} defass#c1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##1_1 := c1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##1_1 := c0#0;
        assert {:id "id324"} $IsAlloc(c1#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        call {:id "id325"} $rhs##1_1 := Call$$TwoStateAt.__default.LemmaMoreParams($Heap_at_0, $Heap, c##1_1, d##1_1);
        // TrCallStmt: After ProcessCallStmt
        x#0 := $rhs##1_1;
        defass#x#0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(470,31)
        assume true;
        // TrCallStmt: Adding lhs with type Cell
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id327"} defass#c2#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##1_2 := c2#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##1_2 := c0#0;
        assert {:id "id328"} $IsAlloc(c2#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        call {:id "id329"} $rhs##1_2 := Call$$TwoStateAt.__default.LemmaMoreParams($Heap_at_0, $Heap, c##1_2, d##1_2);
        // TrCallStmt: After ProcessCallStmt
        x#0 := $rhs##1_2;
        defass#x#0 := true;
    }
    else if (*)
    {
        assume true;
        assume {:id "id310"} true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(472,29)
        assume true;
        // TrCallStmt: Adding lhs with type Cell
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_0 := c0#0;
        assert {:id "id311"} defass#c1#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##0_0 := c1#0;
        assert {:id "id312"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), old($Heap));
        call {:id "id313"} $rhs##0_0 := Call$$TwoStateAt.__default.LemmaMoreParams(old($Heap), $Heap, c##0_0, d##0_0);
        // TrCallStmt: After ProcessCallStmt
        x#0 := $rhs##0_0;
        defass#x#0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(473,29)
        assume true;
        // TrCallStmt: Adding lhs with type Cell
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        c##0_1 := c0#0;
        assert {:id "id315"} defass#c2#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        d##0_1 := c2#0;
        assert {:id "id316"} $IsAlloc(c0#0, Tclass.TwoStateAt.Cell(), old($Heap));
        call {:id "id317"} $rhs##0_1 := Call$$TwoStateAt.__default.LemmaMoreParams(old($Heap), $Heap, c##0_1, d##0_1);
        // TrCallStmt: After ProcessCallStmt
        x#0 := $rhs##0_1;
        defass#x#0 := true;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id309"} false;
    }
}



function Tclass.TwoStateAt.DT(Ty) : Ty;

const unique Tagclass.TwoStateAt.DT: TyTag;

// Tclass.TwoStateAt.DT Tag
axiom (forall TwoStateAt.DT$X: Ty :: 
  { Tclass.TwoStateAt.DT(TwoStateAt.DT$X) } 
  Tag(Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) == Tagclass.TwoStateAt.DT
     && TagFamily(Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) == tytagFamily$DT);

function Tclass.TwoStateAt.DT_0(Ty) : Ty;

// Tclass.TwoStateAt.DT injectivity 0
axiom (forall TwoStateAt.DT$X: Ty :: 
  { Tclass.TwoStateAt.DT(TwoStateAt.DT$X) } 
  Tclass.TwoStateAt.DT_0(Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) == TwoStateAt.DT$X);

// Box/unbox axiom for Tclass.TwoStateAt.DT
axiom (forall TwoStateAt.DT$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $IsBox(bx, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)));

function Tclass.TwoStateAt.OT(Ty) : Ty;

procedure {:verboseName "TwoStateAt.TestOthers0 (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TestOthers0(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.TestOthers0 (call)"} Call$$TwoStateAt.__default.TestOthers0(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.TestOthers0 (correctness)"} Impl$$TwoStateAt.__default.TestOthers0(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TestOthers0 (correctness)"} Impl$$TwoStateAt.__default.TestOthers0(dt#0: DatatypeType, 
    nt#0: int, 
    ot#0: Box, 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var $Heap_at_0: Heap;
  var n#0: int where LitInt(0) <= n#0;
  var x#0: int;
  var y#0: int;
  var ##x#0_0: real;
  var ##y#0_0: DatatypeType;
  var ##c#0_0: ref;
  var ##x#0_1: real;
  var ##y#0_1: DatatypeType;
  var ##c#0_1: ref;
  var $rhs##1_0_0: int;
  var x##1_0_0: real;
  var y##1_0_0: DatatypeType;
  var c##1_0_0: ref;
  var $rhs##1_0_1: int;
  var x##1_0_1: real;
  var y##1_0_1: DatatypeType;
  var c##1_0_1: ref;
  var ##x#1_1_0_0: real;
  var ##y#1_1_0_0: DatatypeType;
  var ##c#1_1_0_0: ref;
  var ##x#1_1_0_1: real;
  var ##y#1_1_0_1: DatatypeType;
  var ##c#1_1_0_1: ref;
  var $rhs##1_1_1_0_0: int;
  var x##1_1_1_0_0: real;
  var y##1_1_1_0_0: DatatypeType;
  var c##1_1_1_0_0: ref;
  var $rhs##1_1_1_0_1: int;
  var x##1_1_1_0_1: real;
  var y##1_1_1_0_1: DatatypeType;
  var c##1_1_1_0_1: ref;

    // AddMethodImpl: TestOthers0, Impl$$TwoStateAt.__default.TestOthers0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(552,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(552,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(333);
    call {:id "id339"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    $Heap_at_0 := $Heap;
    havoc n#0 /* where LitInt(0) <= n#0 */, x#0, y#0;

  after_0:
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(556,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(557,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(dt#0), Tclass.TwoStateAt.DT(TReal), $Heap);
        ##x#0_0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, TReal, $Heap);
        ##y#0_0 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_0, Tclass._System.Tuple0(), $Heap);
        assert {:id "id341"} defass#c#0;
        ##c#0_0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id342"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap_at_0);
        assert {:id "id343"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
        assert {:id "id344"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.DT.F#canCall(TReal, 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        assume TwoStateAt.DT.F#canCall(TReal, 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        x#0 := TwoStateAt.DT.F(TReal, 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(558,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(dt#0), Tclass.TwoStateAt.DT(TReal), $Heap);
        ##x#0_1 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_1, TReal, $Heap);
        ##y#0_1 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_1, Tclass._System.Tuple0(), $Heap);
        assert {:id "id346"} defass#c#0;
        ##c#0_1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id347"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), old($Heap));
        assert {:id "id348"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
        assert {:id "id349"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.DT.F#canCall(TReal, 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        assume TwoStateAt.DT.F#canCall(TReal, 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        x#0 := TwoStateAt.DT.F(TReal, 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(559,12)
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(560,22)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_0 := r#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_0 := u#0;
            assert {:id "id351"} defass#c#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_0 := c#0;
            assert {:id "id352"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap_at_0);
            assert {:id "id353"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
            assert {:id "id354"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
            call {:id "id355"} $rhs##1_0_0 := Call$$TwoStateAt.DT.L($Heap_at_0, $Heap, TReal, Tclass._System.Tuple0(), dt#0, $Box(x##1_0_0), $Box(y##1_0_0), c##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(561,16)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_1 := r#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_1 := u#0;
            assert {:id "id357"} defass#c#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_1 := c#0;
            assert {:id "id358"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), old($Heap));
            assert {:id "id359"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
            assert {:id "id360"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
            call {:id "id361"} $rhs##1_0_1 := Call$$TwoStateAt.DT.L(old($Heap), $Heap, TReal, Tclass._System.Tuple0(), dt#0, $Box(x##1_0_1), $Box(y##1_0_1), c##1_0_1);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_1;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(562,12)
            if (*)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(563,9)
                assume true;
                ##x#1_1_0_0 := r#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1_1_0_0, TReal, $Heap);
                ##y#1_1_0_0 := u#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#1_1_0_0, Tclass._System.Tuple0(), $Heap);
                assert {:id "id363"} defass#c#0;
                ##c#1_1_0_0 := c#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1_1_0_0, Tclass.TwoStateAt.Cell(), $Heap);
                assert {:id "id364"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
                assert {:id "id365"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
                assume TwoStateAt.DT.G#canCall(TReal, Tclass._System.Tuple0(), $Heap_at_0, $Heap, $Box(r#0), $Box(u#0), c#0);
                assume TwoStateAt.DT.G#canCall(TReal, Tclass._System.Tuple0(), $Heap_at_0, $Heap, $Box(r#0), $Box(u#0), c#0);
                y#0 := TwoStateAt.DT.G(TReal, Tclass._System.Tuple0(), $Heap_at_0, $Heap, $Box(r#0), $Box(u#0), c#0);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(564,9)
                assume true;
                ##x#1_1_0_1 := r#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1_1_0_1, TReal, $Heap);
                ##y#1_1_0_1 := u#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#1_1_0_1, Tclass._System.Tuple0(), $Heap);
                assert {:id "id367"} defass#c#0;
                ##c#1_1_0_1 := c#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1_1_0_1, Tclass.TwoStateAt.Cell(), $Heap);
                assert {:id "id368"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
                assert {:id "id369"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
                assume TwoStateAt.DT.G#canCall(TReal, Tclass._System.Tuple0(), old($Heap), $Heap, $Box(r#0), $Box(u#0), c#0);
                assume TwoStateAt.DT.G#canCall(TReal, Tclass._System.Tuple0(), old($Heap), $Heap, $Box(r#0), $Box(u#0), c#0);
                y#0 := TwoStateAt.DT.G(TReal, Tclass._System.Tuple0(), old($Heap), $Heap, $Box(r#0), $Box(u#0), c#0);
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(565,12)
                if (*)
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(566,22)
                    assume true;
                    // TrCallStmt: Adding lhs with type nat
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    x##1_1_1_0_0 := r#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    y##1_1_1_0_0 := u#0;
                    assert {:id "id371"} defass#c#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    c##1_1_1_0_0 := c#0;
                    assert {:id "id372"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
                    assert {:id "id373"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
                    call {:id "id374"} $rhs##1_1_1_0_0 := Call$$TwoStateAt.DT.M($Heap_at_0, $Heap, TReal, Tclass._System.Tuple0(), $Box(x##1_1_1_0_0), $Box(y##1_1_1_0_0), c##1_1_1_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    n#0 := $rhs##1_1_1_0_0;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(567,16)
                    assume true;
                    // TrCallStmt: Adding lhs with type nat
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    x##1_1_1_0_1 := r#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    y##1_1_1_0_1 := u#0;
                    assert {:id "id376"} defass#c#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    c##1_1_1_0_1 := c#0;
                    assert {:id "id377"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
                    assert {:id "id378"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
                    call {:id "id379"} $rhs##1_1_1_0_1 := Call$$TwoStateAt.DT.M(old($Heap), $Heap, TReal, Tclass._System.Tuple0(), $Box(x##1_1_1_0_1), $Box(y##1_1_1_0_1), c##1_1_1_0_1);
                    // TrCallStmt: After ProcessCallStmt
                    n#0 := $rhs##1_1_1_0_1;
                }
                else
                {
                }
            }
        }
    }
}



procedure {:verboseName "TwoStateAt.TestOthers1 (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TestOthers1(nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.TestOthers1 (call)"} Call$$TwoStateAt.__default.TestOthers1(nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.TestOthers1 (correctness)"} Impl$$TwoStateAt.__default.TestOthers1(nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TestOthers1 (correctness)"} Impl$$TwoStateAt.__default.TestOthers1(nt#0: int, ot#0: Box, r#0: ref, t#0: bv19, u#0: DatatypeType, c#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#dtx#0: bool;
  var dtx#0: ref
     where defass#dtx#0
       ==> $Is(dtx#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(dtx#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var dt#0: DatatypeType
     where $Is(dt#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
       && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap);
  var $Heap_at_0: Heap;
  var n#0: int where LitInt(0) <= n#0;
  var x#0: int;
  var ##x#0_0: ref;
  var ##y#0_0: DatatypeType;
  var ##c#0_0: ref;
  var ##x#0_1: ref;
  var ##y#0_1: DatatypeType;
  var ##c#0_1: ref;
  var $rhs##1_0_0: int;
  var x##1_0_0: ref;
  var y##1_0_0: DatatypeType;
  var c##1_0_0: ref;
  var $rhs##1_0_1: int;
  var x##1_0_1: ref;
  var y##1_0_1: DatatypeType;
  var c##1_0_1: ref;

    // AddMethodImpl: TestOthers1, Impl$$TwoStateAt.__default.TestOthers1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(572,13)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(572,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(333);
    call {:id "id381"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    dtx#0 := $nw;
    defass#dtx#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(573,12)
    assume true;
    assert {:id "id383"} defass#dtx#0;
    assume true;
    dt#0 := #TwoStateAt.DT.Blue($Box(dtx#0));
    $Heap_at_0 := $Heap;
    havoc n#0 /* where LitInt(0) <= n#0 */, x#0;

  after_0:
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(577,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(578,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(dt#0), Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap);
        ##x#0_0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#0_0 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_0, Tclass._System.Tuple0(), $Heap);
        ##c#0_0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id385"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap_at_0);
        assert {:id "id386"} $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assert {:id "id387"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
        assert {:id "id388"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.DT.F#canCall(Tclass.TwoStateAt.Cell(), 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        assume TwoStateAt.DT.F#canCall(Tclass.TwoStateAt.Cell(), 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        x#0 := TwoStateAt.DT.F(Tclass.TwoStateAt.Cell(), 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(579,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(dt#0), Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap);
        ##x#0_1 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_1, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#0_1 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_1, Tclass._System.Tuple0(), $Heap);
        ##c#0_1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id390"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), old($Heap));
        assert {:id "id391"} $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assert {:id "id392"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
        assert {:id "id393"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.DT.F#canCall(Tclass.TwoStateAt.Cell(), 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        assume TwoStateAt.DT.F#canCall(Tclass.TwoStateAt.Cell(), 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
        x#0 := TwoStateAt.DT.F(Tclass.TwoStateAt.Cell(), 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          dt#0, 
          $Box(r#0), 
          $Box(u#0), 
          c#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(580,12)
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(581,22)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_0 := r#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_0 := u#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_0 := c#0;
            assert {:id "id395"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap_at_0);
            assert {:id "id396"} $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
            assert {:id "id397"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
            assert {:id "id398"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
            call {:id "id399"} $rhs##1_0_0 := Call$$TwoStateAt.DT.L($Heap_at_0, $Heap, Tclass.TwoStateAt.Cell(), Tclass._System.Tuple0(), dt#0, $Box(x##1_0_0), $Box(y##1_0_0), c##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(582,16)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_1 := r#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_1 := u#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_1 := c#0;
            assert {:id "id401"} $IsAlloc(dt#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), old($Heap));
            assert {:id "id402"} $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), old($Heap));
            assert {:id "id403"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
            assert {:id "id404"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
            call {:id "id405"} $rhs##1_0_1 := Call$$TwoStateAt.DT.L(old($Heap), $Heap, Tclass.TwoStateAt.Cell(), Tclass._System.Tuple0(), dt#0, $Box(x##1_0_1), $Box(y##1_0_1), c##1_0_1);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_1;
        }
        else
        {
        }
    }
}



procedure {:verboseName "TwoStateAt.TestOthers2 (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TestOthers2(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.TestOthers2 (call)"} Call$$TwoStateAt.__default.TestOthers2(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.TestOthers2 (correctness)"} Impl$$TwoStateAt.__default.TestOthers2(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.TwoStateAt.NT() : Ty
uses {
// Tclass.TwoStateAt.NT Tag
axiom Tag(Tclass.TwoStateAt.NT()) == Tagclass.TwoStateAt.NT
   && TagFamily(Tclass.TwoStateAt.NT()) == tytagFamily$NT;
}

const unique Tagclass.TwoStateAt.NT: TyTag;

// Box/unbox axiom for Tclass.TwoStateAt.NT
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TwoStateAt.NT()) } 
  $IsBox(bx, Tclass.TwoStateAt.NT())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.TwoStateAt.NT()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TestOthers2 (correctness)"} Impl$$TwoStateAt.__default.TestOthers2(dt#0: DatatypeType, 
    nt#0: int, 
    ot#0: Box, 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var $Heap_at_0: Heap;
  var n#0: int where LitInt(0) <= n#0;
  var x#0: int;
  var y#0: int;
  var ##y#0_0: DatatypeType;
  var ##c#0_0: ref;
  var ##y#0_1: DatatypeType;
  var ##c#0_1: ref;
  var $rhs##1_0_0: int;
  var y##1_0_0: DatatypeType;
  var c##1_0_0: ref;
  var $rhs##1_0_1: int;
  var y##1_0_1: DatatypeType;
  var c##1_0_1: ref;
  var ##y#1_1_0_0: DatatypeType;
  var ##c#1_1_0_0: ref;
  var ##y#1_1_0_1: DatatypeType;
  var ##c#1_1_0_1: ref;
  var $rhs##1_1_1_0_0: int;
  var y##1_1_1_0_0: DatatypeType;
  var c##1_1_1_0_0: ref;
  var $rhs##1_1_1_0_1: int;
  var y##1_1_1_0_1: DatatypeType;
  var c##1_1_1_0_1: ref;

    // AddMethodImpl: TestOthers2, Impl$$TwoStateAt.__default.TestOthers2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(587,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(587,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(333);
    call {:id "id407"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    $Heap_at_0 := $Heap;
    havoc n#0 /* where LitInt(0) <= n#0 */, x#0, y#0;

  after_0:
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(591,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(592,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(nt#0), Tclass.TwoStateAt.NT(), $Heap);
        ##y#0_0 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_0, Tclass._System.Tuple0(), $Heap);
        assert {:id "id409"} defass#c#0;
        ##c#0_0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id410"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
        assert {:id "id411"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.NT.F#canCall(Tclass._System.Tuple0(), $Heap_at_0, $Heap, nt#0, $Box(u#0), c#0);
        assume TwoStateAt.NT.F#canCall(Tclass._System.Tuple0(), $Heap_at_0, $Heap, nt#0, $Box(u#0), c#0);
        x#0 := TwoStateAt.NT.F(Tclass._System.Tuple0(), $Heap_at_0, $Heap, nt#0, $Box(u#0), c#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(593,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(nt#0), Tclass.TwoStateAt.NT(), $Heap);
        ##y#0_1 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_1, Tclass._System.Tuple0(), $Heap);
        assert {:id "id413"} defass#c#0;
        ##c#0_1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id414"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
        assert {:id "id415"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.NT.F#canCall(Tclass._System.Tuple0(), old($Heap), $Heap, nt#0, $Box(u#0), c#0);
        assume TwoStateAt.NT.F#canCall(Tclass._System.Tuple0(), old($Heap), $Heap, nt#0, $Box(u#0), c#0);
        x#0 := TwoStateAt.NT.F(Tclass._System.Tuple0(), old($Heap), $Heap, nt#0, $Box(u#0), c#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(594,12)
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(595,22)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_0 := u#0;
            assert {:id "id417"} defass#c#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_0 := c#0;
            assert {:id "id418"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
            assert {:id "id419"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
            call {:id "id420"} $rhs##1_0_0 := Call$$TwoStateAt.NT.L($Heap_at_0, $Heap, Tclass._System.Tuple0(), nt#0, $Box(y##1_0_0), c##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(596,16)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_1 := u#0;
            assert {:id "id422"} defass#c#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_1 := c#0;
            assert {:id "id423"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
            assert {:id "id424"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
            call {:id "id425"} $rhs##1_0_1 := Call$$TwoStateAt.NT.L(old($Heap), $Heap, Tclass._System.Tuple0(), nt#0, $Box(y##1_0_1), c##1_0_1);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_1;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(597,12)
            if (*)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(598,9)
                assume true;
                ##y#1_1_0_0 := u#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#1_1_0_0, Tclass._System.Tuple0(), $Heap);
                assert {:id "id427"} defass#c#0;
                ##c#1_1_0_0 := c#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1_1_0_0, Tclass.TwoStateAt.Cell(), $Heap);
                assert {:id "id428"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
                assert {:id "id429"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
                assume TwoStateAt.NT.G#canCall(Tclass._System.Tuple0(), $Heap_at_0, $Heap, $Box(u#0), c#0);
                assume TwoStateAt.NT.G#canCall(Tclass._System.Tuple0(), $Heap_at_0, $Heap, $Box(u#0), c#0);
                y#0 := TwoStateAt.NT.G(Tclass._System.Tuple0(), $Heap_at_0, $Heap, $Box(u#0), c#0);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(599,9)
                assume true;
                ##y#1_1_0_1 := u#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#1_1_0_1, Tclass._System.Tuple0(), $Heap);
                assert {:id "id431"} defass#c#0;
                ##c#1_1_0_1 := c#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1_1_0_1, Tclass.TwoStateAt.Cell(), $Heap);
                assert {:id "id432"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
                assert {:id "id433"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
                assume TwoStateAt.NT.G#canCall(Tclass._System.Tuple0(), old($Heap), $Heap, $Box(u#0), c#0);
                assume TwoStateAt.NT.G#canCall(Tclass._System.Tuple0(), old($Heap), $Heap, $Box(u#0), c#0);
                y#0 := TwoStateAt.NT.G(Tclass._System.Tuple0(), old($Heap), $Heap, $Box(u#0), c#0);
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(600,12)
                if (*)
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(601,22)
                    assume true;
                    // TrCallStmt: Adding lhs with type nat
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    y##1_1_1_0_0 := u#0;
                    assert {:id "id435"} defass#c#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    c##1_1_1_0_0 := c#0;
                    assert {:id "id436"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
                    assert {:id "id437"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
                    call {:id "id438"} $rhs##1_1_1_0_0 := Call$$TwoStateAt.NT.M($Heap_at_0, $Heap, Tclass._System.Tuple0(), $Box(y##1_1_1_0_0), c##1_1_1_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    n#0 := $rhs##1_1_1_0_0;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(602,16)
                    assume true;
                    // TrCallStmt: Adding lhs with type nat
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    y##1_1_1_0_1 := u#0;
                    assert {:id "id440"} defass#c#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    c##1_1_1_0_1 := c#0;
                    assert {:id "id441"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
                    assert {:id "id442"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
                    call {:id "id443"} $rhs##1_1_1_0_1 := Call$$TwoStateAt.NT.M(old($Heap), $Heap, Tclass._System.Tuple0(), $Box(y##1_1_1_0_1), c##1_1_1_0_1);
                    // TrCallStmt: After ProcessCallStmt
                    n#0 := $rhs##1_1_1_0_1;
                }
                else
                {
                }
            }
        }
    }
}



procedure {:verboseName "TwoStateAt.TestOthers3 (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TestOthers3(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.TestOthers3 (call)"} Call$$TwoStateAt.__default.TestOthers3(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.TestOthers3 (correctness)"} Impl$$TwoStateAt.__default.TestOthers3(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TwoStateAt.DT(TReal))
         && $IsAlloc(dt#0, Tclass.TwoStateAt.DT(TReal), $Heap)
         && $IsA#TwoStateAt.DT(dt#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap), 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TestOthers3 (correctness)"} Impl$$TwoStateAt.__default.TestOthers3(dt#0: DatatypeType, 
    nt#0: int, 
    ot#0: Box, 
    r#0: real, 
    t#0: bv19, 
    u#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var $Heap_at_0: Heap;
  var n#0: int where LitInt(0) <= n#0;
  var x#0: int;
  var y#0: int;
  var ##x#0_0: bv19;
  var ##y#0_0: DatatypeType;
  var ##c#0_0: ref;
  var ##x#0_1: bv19;
  var ##y#0_1: DatatypeType;
  var ##c#0_1: ref;
  var $rhs##1_0_0: int;
  var x##1_0_0: bv19;
  var y##1_0_0: DatatypeType;
  var c##1_0_0: ref;
  var $rhs##1_0_1: int;
  var x##1_0_1: bv19;
  var y##1_0_1: DatatypeType;
  var c##1_0_1: ref;
  var ##ot#1_1_0_0: Box;
  var ##x#1_1_0_0: bv19;
  var ##y#1_1_0_0: DatatypeType;
  var ##c#1_1_0_0: ref;
  var ##ot#1_1_0_1: Box;
  var ##x#1_1_0_1: bv19;
  var ##y#1_1_0_1: DatatypeType;
  var ##c#1_1_0_1: ref;
  var $rhs##1_1_1_0_0: int;
  var ot##1_1_1_0_0: Box;
  var x##1_1_1_0_0: bv19;
  var y##1_1_1_0_0: DatatypeType;
  var c##1_1_1_0_0: ref;
  var $rhs##1_1_1_0_1: int;
  var ot##1_1_1_0_1: Box;
  var x##1_1_1_0_1: bv19;
  var y##1_1_1_0_1: DatatypeType;
  var c##1_1_1_0_1: ref;

    // AddMethodImpl: TestOthers3, Impl$$TwoStateAt.__default.TestOthers3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(607,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(607,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(333);
    call {:id "id445"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    $Heap_at_0 := $Heap;
    havoc n#0 /* where LitInt(0) <= n#0 */, x#0, y#0;

  after_0:
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(611,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(612,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap);
        ##x#0_0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, TBitvector(19), $Heap);
        ##y#0_0 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_0, Tclass._System.Tuple0(), $Heap);
        assert {:id "id447"} defass#c#0;
        ##c#0_0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id448"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap_at_0);
        assert {:id "id449"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
        assert {:id "id450"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
        assume TwoStateAt.OT.F#canCall(TBitvector(19), 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          ot#0, 
          $Box(t#0), 
          $Box(u#0), 
          c#0);
        assume TwoStateAt.OT.F#canCall(TBitvector(19), 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          ot#0, 
          $Box(t#0), 
          $Box(u#0), 
          c#0);
        x#0 := TwoStateAt.OT.F(TBitvector(19), 
          Tclass._System.Tuple0(), 
          $Heap_at_0, 
          $Heap, 
          ot#0, 
          $Box(t#0), 
          $Box(u#0), 
          c#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(613,9)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap);
        ##x#0_1 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_1, TBitvector(19), $Heap);
        ##y#0_1 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0_1, Tclass._System.Tuple0(), $Heap);
        assert {:id "id452"} defass#c#0;
        ##c#0_1 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0_1, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id453"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), old($Heap));
        assert {:id "id454"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
        assert {:id "id455"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume TwoStateAt.OT.F#canCall(TBitvector(19), 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          ot#0, 
          $Box(t#0), 
          $Box(u#0), 
          c#0);
        assume TwoStateAt.OT.F#canCall(TBitvector(19), 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          ot#0, 
          $Box(t#0), 
          $Box(u#0), 
          c#0);
        x#0 := TwoStateAt.OT.F(TBitvector(19), 
          Tclass._System.Tuple0(), 
          old($Heap), 
          $Heap, 
          ot#0, 
          $Box(t#0), 
          $Box(u#0), 
          c#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(614,12)
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(615,22)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_0 := t#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_0 := u#0;
            assert {:id "id457"} defass#c#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_0 := c#0;
            assert {:id "id458"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap_at_0);
            assert {:id "id459"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
            assert {:id "id460"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
            call {:id "id461"} $rhs##1_0_0 := Call$$TwoStateAt.OT.L($Heap_at_0, $Heap, TBitvector(19), Tclass._System.Tuple0(), ot#0, $Box(x##1_0_0), $Box(y##1_0_0), c##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(616,16)
            assume true;
            // TrCallStmt: Adding lhs with type nat
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##1_0_1 := t#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_1 := u#0;
            assert {:id "id463"} defass#c#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_1 := c#0;
            assert {:id "id464"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), old($Heap));
            assert {:id "id465"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
            assert {:id "id466"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
            call {:id "id467"} $rhs##1_0_1 := Call$$TwoStateAt.OT.L(old($Heap), $Heap, TBitvector(19), Tclass._System.Tuple0(), ot#0, $Box(x##1_0_1), $Box(y##1_0_1), c##1_0_1);
            // TrCallStmt: After ProcessCallStmt
            n#0 := $rhs##1_0_1;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(617,12)
            if (*)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(618,9)
                assume true;
                ##ot#1_1_0_0 := ot#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##ot#1_1_0_0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap);
                ##x#1_1_0_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1_1_0_0, TBitvector(19), $Heap);
                ##y#1_1_0_0 := u#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#1_1_0_0, Tclass._System.Tuple0(), $Heap);
                assert {:id "id469"} defass#c#0;
                ##c#1_1_0_0 := c#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1_1_0_0, Tclass.TwoStateAt.Cell(), $Heap);
                assert {:id "id470"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap_at_0);
                assert {:id "id471"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
                assert {:id "id472"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
                assume TwoStateAt.OT.G#canCall(TBitvector(19), 
                  Tclass._System.Tuple0(), 
                  $Heap_at_0, 
                  $Heap, 
                  ot#0, 
                  $Box(t#0), 
                  $Box(u#0), 
                  c#0);
                assume TwoStateAt.OT.G#canCall(TBitvector(19), 
                  Tclass._System.Tuple0(), 
                  $Heap_at_0, 
                  $Heap, 
                  ot#0, 
                  $Box(t#0), 
                  $Box(u#0), 
                  c#0);
                y#0 := TwoStateAt.OT.G(TBitvector(19), 
                  Tclass._System.Tuple0(), 
                  $Heap_at_0, 
                  $Heap, 
                  ot#0, 
                  $Box(t#0), 
                  $Box(u#0), 
                  c#0);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(619,9)
                assume true;
                ##ot#1_1_0_1 := ot#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##ot#1_1_0_1, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap);
                ##x#1_1_0_1 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1_1_0_1, TBitvector(19), $Heap);
                ##y#1_1_0_1 := u#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#1_1_0_1, Tclass._System.Tuple0(), $Heap);
                assert {:id "id474"} defass#c#0;
                ##c#1_1_0_1 := c#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#1_1_0_1, Tclass.TwoStateAt.Cell(), $Heap);
                assert {:id "id475"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), old($Heap));
                assert {:id "id476"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
                assert {:id "id477"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
                assume TwoStateAt.OT.G#canCall(TBitvector(19), 
                  Tclass._System.Tuple0(), 
                  old($Heap), 
                  $Heap, 
                  ot#0, 
                  $Box(t#0), 
                  $Box(u#0), 
                  c#0);
                assume TwoStateAt.OT.G#canCall(TBitvector(19), 
                  Tclass._System.Tuple0(), 
                  old($Heap), 
                  $Heap, 
                  ot#0, 
                  $Box(t#0), 
                  $Box(u#0), 
                  c#0);
                y#0 := TwoStateAt.OT.G(TBitvector(19), 
                  Tclass._System.Tuple0(), 
                  old($Heap), 
                  $Heap, 
                  ot#0, 
                  $Box(t#0), 
                  $Box(u#0), 
                  c#0);
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(620,12)
                if (*)
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(621,22)
                    assume true;
                    // TrCallStmt: Adding lhs with type nat
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    ot##1_1_1_0_0 := ot#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    x##1_1_1_0_0 := t#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    y##1_1_1_0_0 := u#0;
                    assert {:id "id479"} defass#c#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    c##1_1_1_0_0 := c#0;
                    assert {:id "id480"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), $Heap_at_0);
                    assert {:id "id481"} $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap_at_0);
                    assert {:id "id482"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap_at_0);
                    call {:id "id483"} $rhs##1_1_1_0_0 := Call$$TwoStateAt.OT.M($Heap_at_0, $Heap, TBitvector(19), Tclass._System.Tuple0(), ot##1_1_1_0_0, $Box(x##1_1_1_0_0), $Box(y##1_1_1_0_0), c##1_1_1_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    n#0 := $rhs##1_1_1_0_0;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(622,16)
                    assume true;
                    // TrCallStmt: Adding lhs with type nat
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    ot##1_1_1_0_1 := ot#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    x##1_1_1_0_1 := t#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    y##1_1_1_0_1 := u#0;
                    assert {:id "id485"} defass#c#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    c##1_1_1_0_1 := c#0;
                    assert {:id "id486"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TBitvector(19)), old($Heap));
                    assert {:id "id487"} $IsAlloc(u#0, Tclass._System.Tuple0(), old($Heap));
                    assert {:id "id488"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
                    call {:id "id489"} $rhs##1_1_1_0_1 := Call$$TwoStateAt.OT.M(old($Heap), $Heap, TBitvector(19), Tclass._System.Tuple0(), ot##1_1_1_0_1, $Box(x##1_1_1_0_1), $Box(y##1_1_1_0_1), c##1_1_1_0_1);
                    // TrCallStmt: After ProcessCallStmt
                    n#0 := $rhs##1_1_1_0_1;
                }
                else
                {
                }
            }
        }
    }
}



procedure {:verboseName "TwoStateAt.TestOthers4 (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.TestOthers4(d0#0: DatatypeType
       where $Is(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
         && $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap)
         && $IsA#TwoStateAt.DT(d0#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.TestOthers4 (call)"} Call$$TwoStateAt.__default.TestOthers4(d0#0: DatatypeType
       where $Is(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
         && $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap)
         && $IsA#TwoStateAt.DT(d0#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.TestOthers4 (correctness)"} Impl$$TwoStateAt.__default.TestOthers4(d0#0: DatatypeType
       where $Is(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
         && $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap)
         && $IsA#TwoStateAt.DT(d0#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function TwoStateAt.DT.F#Handle(TwoStateAt.DT$X: Ty, TwoStateAt.DT.F$Y: Ty, h: Heap, self: DatatypeType)
   : HandleType;

// function declaration for TwoStateAt.DT.F
function TwoStateAt.DT.F(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int
uses {
// definition axiom for TwoStateAt.DT.F (revealed)
axiom {:id "id590"} 1 <= $FunctionContextHeight
   ==> (forall TwoStateAt.DT$X: Ty, 
      TwoStateAt.DT.F$Y: Ty, 
      $prevHeap: Heap, 
      $Heap: Heap, 
      this: DatatypeType, 
      x#0: Box, 
      y#0: Box, 
      c#0: ref :: 
    { TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
    TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
           && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $prevHeap)
           && $IsBox(x#0, TwoStateAt.DT$X)
           && $IsBox(y#0, TwoStateAt.DT.F$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
         == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
           - $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int);
}

function TwoStateAt.DT.F#canCall(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Apply3(TwoStateAt.DT$X, 
      TwoStateAt.DT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.F#Handle(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Apply3(TwoStateAt.DT$X, 
      TwoStateAt.DT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.F#Handle(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Box(TwoStateAt.DT.F(TwoStateAt.DT$X, 
        TwoStateAt.DT.F$Y, 
        $prevHeap, 
        $heap, 
        $self, 
        $fh$0x#0, 
        $fh$0x#1, 
        $Unbox($fh$0x#2): ref)));

axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Requires3(TwoStateAt.DT$X, 
      TwoStateAt.DT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.F#Handle(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Requires3(TwoStateAt.DT$X, 
      TwoStateAt.DT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.F#Handle(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == TwoStateAt.DT.F#requires(TwoStateAt.DT$X, 
      TwoStateAt.DT.F$Y, 
      $prevHeap, 
      $heap, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $Unbox($fh$0x#2): ref));

axiom (forall $bx: Box, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Set#IsMember(Reads3(TwoStateAt.DT$X, 
        TwoStateAt.DT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.DT.F#Handle(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx) } 
  Set#IsMember(Reads3(TwoStateAt.DT$X, 
        TwoStateAt.DT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.DT.F#Handle(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $Unbox($fh$0x#2): ref));

axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: ref :: 
  { TwoStateAt.DT.F(TwoStateAt.DT$X, 
      TwoStateAt.DT.F$Y, 
      $prevHeap, 
      $heap, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  TwoStateAt.DT.F(TwoStateAt.DT$X, 
      TwoStateAt.DT.F$Y, 
      $prevHeap, 
      $heap, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Unbox(Apply3(TwoStateAt.DT$X, 
        TwoStateAt.DT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.DT.F#Handle(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $Box($fh$0x#2))): int);

function TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y: Ty, h: Heap, self: int) : HandleType;

// function declaration for TwoStateAt.NT.F
function TwoStateAt.NT.F(TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref)
   : int
uses {
// definition axiom for TwoStateAt.NT.F (revealed)
axiom {:id "id630"} 1 <= $FunctionContextHeight
   ==> (forall TwoStateAt.NT.F$Y: Ty, 
      $prevHeap: Heap, 
      $Heap: Heap, 
      this: int, 
      y#0: Box, 
      c#0: ref :: 
    { TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0), $IsGoodHeap($Heap) } 
    TwoStateAt.NT.F#canCall(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          LitInt(0) <= this
           && this < 86
           && $IsBox(y#0, TwoStateAt.NT.F$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0)
         == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
           - $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int);
}

function TwoStateAt.NT.F#canCall(TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref)
   : bool;

axiom (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: int, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(TwoStateAt.NT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(TwoStateAt.NT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $heap, $self, $fh$0x#0, $Unbox($fh$0x#1): ref)));

axiom (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: int, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(TwoStateAt.NT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(TwoStateAt.NT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1)
     == TwoStateAt.NT.F#requires(TwoStateAt.NT.F$Y, $prevHeap, $heap, $self, $fh$0x#0, $Unbox($fh$0x#1): ref));

axiom (forall $bx: Box, 
    TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: int, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(TwoStateAt.NT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(TwoStateAt.NT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $Unbox($fh$0x#1): ref));

axiom (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: int, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: ref :: 
  { TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $heap, $self, $fh$0x#0, $fh$0x#1) } 
  TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $heap, $self, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(TwoStateAt.NT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.NT.F#Handle(TwoStateAt.NT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $Box($fh$0x#1))): int);

function TwoStateAt.OT.F#Handle(TwoStateAt.OT$X: Ty, TwoStateAt.OT.F$Y: Ty, h: Heap, self: Box) : HandleType;

// function declaration for TwoStateAt.OT.F
function TwoStateAt.OT.F(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int
uses {
// definition axiom for TwoStateAt.OT.F (revealed)
axiom {:id "id665"} 1 <= $FunctionContextHeight
   ==> (forall TwoStateAt.OT$X: Ty, 
      TwoStateAt.OT.F$Y: Ty, 
      $prevHeap: Heap, 
      $Heap: Heap, 
      this: Box, 
      x#0: Box, 
      y#0: Box, 
      c#0: ref :: 
    { TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
    TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
           && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $prevHeap)
           && $IsBox(x#0, TwoStateAt.OT$X)
           && $IsBox(y#0, TwoStateAt.OT.F$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
         == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
           - $Unbox(read($prevHeap, c#0, TwoStateAt.Cell.data)): int);
}

function TwoStateAt.OT.F#canCall(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: Box, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Apply3(TwoStateAt.OT$X, 
      TwoStateAt.OT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.F#Handle(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Apply3(TwoStateAt.OT$X, 
      TwoStateAt.OT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.F#Handle(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Box(TwoStateAt.OT.F(TwoStateAt.OT$X, 
        TwoStateAt.OT.F$Y, 
        $prevHeap, 
        $heap, 
        $self, 
        $fh$0x#0, 
        $fh$0x#1, 
        $Unbox($fh$0x#2): ref)));

axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: Box, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Requires3(TwoStateAt.OT$X, 
      TwoStateAt.OT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.F#Handle(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Requires3(TwoStateAt.OT$X, 
      TwoStateAt.OT.F$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.F#Handle(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $self), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == TwoStateAt.OT.F#requires(TwoStateAt.OT$X, 
      TwoStateAt.OT.F$Y, 
      $prevHeap, 
      $heap, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $Unbox($fh$0x#2): ref));

axiom (forall $bx: Box, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: Box, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Set#IsMember(Reads3(TwoStateAt.OT$X, 
        TwoStateAt.OT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.OT.F#Handle(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx) } 
  Set#IsMember(Reads3(TwoStateAt.OT$X, 
        TwoStateAt.OT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.OT.F#Handle(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $Unbox($fh$0x#2): ref));

axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $self: Box, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: ref :: 
  { TwoStateAt.OT.F(TwoStateAt.OT$X, 
      TwoStateAt.OT.F$Y, 
      $prevHeap, 
      $heap, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  TwoStateAt.OT.F(TwoStateAt.OT$X, 
      TwoStateAt.OT.F$Y, 
      $prevHeap, 
      $heap, 
      $self, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Unbox(Apply3(TwoStateAt.OT$X, 
        TwoStateAt.OT.F$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.OT.F#Handle(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $self), 
        $fh$0x#0, 
        $fh$0x#1, 
        $Box($fh$0x#2))): int);

function TwoStateAt.DT.G#Handle(TwoStateAt.DT$X: Ty, TwoStateAt.DT.G$Y: Ty, h: Heap) : HandleType;

// function declaration for TwoStateAt.DT.G
function TwoStateAt.DT.G(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int
uses {
// definition axiom for TwoStateAt.DT.G (revealed)
axiom {:id "id608"} 2 <= $FunctionContextHeight
   ==> (forall TwoStateAt.DT$X: Ty, 
      TwoStateAt.DT.G$Y: Ty, 
      $prevHeap: Heap, 
      $Heap: Heap, 
      x#0: Box, 
      y#0: Box, 
      c#0: ref :: 
    { TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
    TwoStateAt.DT.G#canCall(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $IsBox(x#0, TwoStateAt.DT$X)
           && $IsBox(y#0, TwoStateAt.DT.G$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, 
          TwoStateAt.DT.G$Y, 
          $prevHeap, 
          $Heap, 
          Lit(#TwoStateAt.DT.Green()), 
          x#0, 
          y#0, 
          c#0)
         && TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0)
           == TwoStateAt.DT.F(TwoStateAt.DT$X, 
            TwoStateAt.DT.G$Y, 
            $prevHeap, 
            $Heap, 
            Lit(#TwoStateAt.DT.Green()), 
            x#0, 
            y#0, 
            c#0));
}

function TwoStateAt.DT.G#canCall(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Apply3(TwoStateAt.DT$X, 
      TwoStateAt.DT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.G#Handle(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Apply3(TwoStateAt.DT$X, 
      TwoStateAt.DT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.G#Handle(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Box(TwoStateAt.DT.G(TwoStateAt.DT$X, 
        TwoStateAt.DT.G$Y, 
        $prevHeap, 
        $heap, 
        $fh$0x#0, 
        $fh$0x#1, 
        $Unbox($fh$0x#2): ref)));

axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Requires3(TwoStateAt.DT$X, 
      TwoStateAt.DT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.G#Handle(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  Requires3(TwoStateAt.DT$X, 
      TwoStateAt.DT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.DT.G#Handle(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == TwoStateAt.DT.G#requires(TwoStateAt.DT$X, 
      TwoStateAt.DT.G$Y, 
      $prevHeap, 
      $heap, 
      $fh$0x#0, 
      $fh$0x#1, 
      $Unbox($fh$0x#2): ref));

axiom (forall $bx: Box, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box :: 
  { Set#IsMember(Reads3(TwoStateAt.DT$X, 
        TwoStateAt.DT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.DT.G#Handle(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx) } 
  Set#IsMember(Reads3(TwoStateAt.DT$X, 
        TwoStateAt.DT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.DT.G#Handle(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $Unbox($fh$0x#2): ref));

axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: ref :: 
  { TwoStateAt.DT.G(TwoStateAt.DT$X, 
      TwoStateAt.DT.G$Y, 
      $prevHeap, 
      $heap, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2) } 
  TwoStateAt.DT.G(TwoStateAt.DT$X, 
      TwoStateAt.DT.G$Y, 
      $prevHeap, 
      $heap, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2)
     == $Unbox(Apply3(TwoStateAt.DT$X, 
        TwoStateAt.DT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.DT.G#Handle(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1, 
        $Box($fh$0x#2))): int);

function TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y: Ty, h: Heap) : HandleType;

// function declaration for TwoStateAt.NT.G
function TwoStateAt.NT.G(TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $heap: Heap, y#0: Box, c#0: ref) : int
uses {
// definition axiom for TwoStateAt.NT.G (revealed)
axiom {:id "id646"} 2 <= $FunctionContextHeight
   ==> (forall TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $Heap: Heap, y#0: Box, c#0: ref :: 
    { TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0), $IsGoodHeap($Heap) } 
    TwoStateAt.NT.G#canCall(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $IsBox(y#0, TwoStateAt.NT.G$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.NT.F#canCall(TwoStateAt.NT.G$Y, $prevHeap, $Heap, LitInt(82), y#0, c#0)
         && TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0)
           == TwoStateAt.NT.F(TwoStateAt.NT.G$Y, $prevHeap, $Heap, LitInt(82), y#0, c#0));
}

function TwoStateAt.NT.G#canCall(TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $heap: Heap, y#0: Box, c#0: ref) : bool;

axiom (forall TwoStateAt.NT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Apply2(TwoStateAt.NT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Apply2(TwoStateAt.NT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1)
     == $Box(TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $heap, $fh$0x#0, $Unbox($fh$0x#1): ref)));

axiom (forall TwoStateAt.NT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Requires2(TwoStateAt.NT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1) } 
  Requires2(TwoStateAt.NT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1)
     == TwoStateAt.NT.G#requires(TwoStateAt.NT.G$Y, $prevHeap, $heap, $fh$0x#0, $Unbox($fh$0x#1): ref));

axiom (forall $bx: Box, 
    TwoStateAt.NT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box :: 
  { Set#IsMember(Reads2(TwoStateAt.NT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx) } 
  Set#IsMember(Reads2(TwoStateAt.NT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $Unbox($fh$0x#1): ref));

axiom (forall TwoStateAt.NT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: ref :: 
  { TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $heap, $fh$0x#0, $fh$0x#1) } 
  TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $heap, $fh$0x#0, $fh$0x#1)
     == $Unbox(Apply2(TwoStateAt.NT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.NT.G#Handle(TwoStateAt.NT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $Box($fh$0x#1))): int);

function TwoStateAt.OT.G#Handle(TwoStateAt.OT$X: Ty, TwoStateAt.OT.G$Y: Ty, h: Heap) : HandleType;

// function declaration for TwoStateAt.OT.G
function TwoStateAt.OT.G(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : int
uses {
// definition axiom for TwoStateAt.OT.G (revealed)
axiom {:id "id683"} 2 <= $FunctionContextHeight
   ==> (forall TwoStateAt.OT$X: Ty, 
      TwoStateAt.OT.G$Y: Ty, 
      $prevHeap: Heap, 
      $Heap: Heap, 
      ot#0: Box, 
      x#0: Box, 
      y#0: Box, 
      c#0: ref :: 
    { TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
    TwoStateAt.OT.G#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
           && $IsBox(x#0, TwoStateAt.OT$X)
           && $IsBox(y#0, TwoStateAt.OT.G$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell()))
       ==> TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
         && TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
           == TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0));
}

function TwoStateAt.OT.G#canCall(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   : bool;

axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box, 
    $fh$0x#3: Box :: 
  { Apply4(Tclass.TwoStateAt.OT(TwoStateAt.OT$X), 
      TwoStateAt.OT$X, 
      TwoStateAt.OT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.G#Handle(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2, 
      $fh$0x#3) } 
  Apply4(Tclass.TwoStateAt.OT(TwoStateAt.OT$X), 
      TwoStateAt.OT$X, 
      TwoStateAt.OT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.G#Handle(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2, 
      $fh$0x#3)
     == $Box(TwoStateAt.OT.G(TwoStateAt.OT$X, 
        TwoStateAt.OT.G$Y, 
        $prevHeap, 
        $heap, 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2, 
        $Unbox($fh$0x#3): ref)));

axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box, 
    $fh$0x#3: Box :: 
  { Requires4(Tclass.TwoStateAt.OT(TwoStateAt.OT$X), 
      TwoStateAt.OT$X, 
      TwoStateAt.OT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.G#Handle(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2, 
      $fh$0x#3) } 
  Requires4(Tclass.TwoStateAt.OT(TwoStateAt.OT$X), 
      TwoStateAt.OT$X, 
      TwoStateAt.OT.G$Y, 
      Tclass.TwoStateAt.Cell(), 
      TInt, 
      $heap, 
      TwoStateAt.OT.G#Handle(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap), 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2, 
      $fh$0x#3)
     == TwoStateAt.OT.G#requires(TwoStateAt.OT$X, 
      TwoStateAt.OT.G$Y, 
      $prevHeap, 
      $heap, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2, 
      $Unbox($fh$0x#3): ref));

axiom (forall $bx: Box, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box, 
    $fh$0x#3: Box :: 
  { Set#IsMember(Reads4(Tclass.TwoStateAt.OT(TwoStateAt.OT$X), 
        TwoStateAt.OT$X, 
        TwoStateAt.OT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.OT.G#Handle(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2, 
        $fh$0x#3), 
      $bx) } 
  Set#IsMember(Reads4(Tclass.TwoStateAt.OT(TwoStateAt.OT$X), 
        TwoStateAt.OT$X, 
        TwoStateAt.OT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.OT.G#Handle(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2, 
        $fh$0x#3), 
      $bx)
     == 
    ($Unbox($bx): ref
     == $Unbox($fh$0x#3): ref));

axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $heap: Heap, 
    $fh$0x#0: Box, 
    $fh$0x#1: Box, 
    $fh$0x#2: Box, 
    $fh$0x#3: ref :: 
  { TwoStateAt.OT.G(TwoStateAt.OT$X, 
      TwoStateAt.OT.G$Y, 
      $prevHeap, 
      $heap, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2, 
      $fh$0x#3) } 
  TwoStateAt.OT.G(TwoStateAt.OT$X, 
      TwoStateAt.OT.G$Y, 
      $prevHeap, 
      $heap, 
      $fh$0x#0, 
      $fh$0x#1, 
      $fh$0x#2, 
      $fh$0x#3)
     == $Unbox(Apply4(Tclass.TwoStateAt.OT(TwoStateAt.OT$X), 
        TwoStateAt.OT$X, 
        TwoStateAt.OT.G$Y, 
        Tclass.TwoStateAt.Cell(), 
        TInt, 
        $heap, 
        TwoStateAt.OT.G#Handle(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap), 
        $fh$0x#0, 
        $fh$0x#1, 
        $fh$0x#2, 
        $Box($fh$0x#3))): int);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.TestOthers4 (correctness)"} Impl$$TwoStateAt.__default.TestOthers4(d0#0: DatatypeType, nt#0: int, ot#0: Box, r#0: ref, u#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var d1#0: DatatypeType
     where $Is(d1#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
       && $IsAlloc(d1#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap);
  var $Heap_at_0: Heap;
  var f0#0_0: HandleType
     where $Is(f0#0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(f0#0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt), 
        $Heap);
  var f1#0_0: HandleType
     where $Is(f1#0_0, Tclass._System.___hFunc2(TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(f1#0_0, Tclass._System.___hFunc2(TInt, Tclass.TwoStateAt.Cell(), TInt), $Heap);
  var f2#0_0: HandleType
     where $Is(f2#0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(f2#0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt), 
        $Heap);
  var f3#0_0: HandleType
     where $Is(f3#0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(f3#0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt), 
        $Heap);
  var g0#1_0_0: HandleType
     where $Is(g0#1_0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(g0#1_0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt), 
        $Heap);
  var g1#1_0_0: HandleType
     where $Is(g1#1_0_0, Tclass._System.___hFunc2(TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(g1#1_0_0, Tclass._System.___hFunc2(TInt, Tclass.TwoStateAt.Cell(), TInt), $Heap);
  var g2#1_0_0: HandleType
     where $Is(g2#1_0_0, 
        Tclass._System.___hFunc4(Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), 
          Tclass.TwoStateAt.Cell(), 
          TInt, 
          Tclass.TwoStateAt.Cell(), 
          TInt))
       && $IsAlloc(g2#1_0_0, 
        Tclass._System.___hFunc4(Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), 
          Tclass.TwoStateAt.Cell(), 
          TInt, 
          Tclass.TwoStateAt.Cell(), 
          TInt), 
        $Heap);
  var h0#1_1_0_0: HandleType
     where $Is(h0#1_1_0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(h0#1_1_0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt), 
        $Heap);
  var h1#1_1_0_0: HandleType
     where $Is(h1#1_1_0_0, Tclass._System.___hFunc2(TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(h1#1_1_0_0, 
        Tclass._System.___hFunc2(TInt, Tclass.TwoStateAt.Cell(), TInt), 
        $Heap);
  var h2#1_1_0_0: HandleType
     where $Is(h2#1_1_0_0, 
        Tclass._System.___hFunc4(Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), 
          Tclass.TwoStateAt.Cell(), 
          TInt, 
          Tclass.TwoStateAt.Cell(), 
          TInt))
       && $IsAlloc(h2#1_1_0_0, 
        Tclass._System.___hFunc4(Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), 
          Tclass.TwoStateAt.Cell(), 
          TInt, 
          Tclass.TwoStateAt.Cell(), 
          TInt), 
        $Heap);
  var h3#1_1_0_0: HandleType
     where $Is(h3#1_1_0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt))
       && $IsAlloc(h3#1_1_0_0, 
        Tclass._System.___hFunc3(Tclass.TwoStateAt.Cell(), TInt, Tclass.TwoStateAt.Cell(), TInt), 
        $Heap);

    // AddMethodImpl: TestOthers4, Impl$$TwoStateAt.__default.TestOthers4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(627,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(627,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(333);
    call {:id "id491"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(628,12)
    assume true;
    assert {:id "id493"} defass#c#0;
    assume true;
    d1#0 := #TwoStateAt.DT.Blue($Box(c#0));
    $Heap_at_0 := $Heap;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(631,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(632,20)
        assume true;
        assert {:id "id495"} 1 != $FunctionContextHeight;
        assert {:id "id496"} $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), old($Heap));
        assume true;
        f0#0_0 := TwoStateAt.DT.F#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap), d0#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(633,20)
        assume true;
        assert {:id "id498"} 1 != $FunctionContextHeight;
        assume true;
        f1#0_0 := TwoStateAt.NT.F#Handle(TInt, old($Heap), nt#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(634,20)
        assume true;
        assert {:id "id500"} 1 != $FunctionContextHeight;
        assert {:id "id501"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), old($Heap));
        assume true;
        f2#0_0 := TwoStateAt.OT.F#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap), ot#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(635,20)
        assume true;
        assert {:id "id503"} 1 != $FunctionContextHeight;
        assert {:id "id504"} $IsAlloc(d1#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), old($Heap));
        assume true;
        f3#0_0 := TwoStateAt.DT.F#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap), d1#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(636,12)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(637,20)
            assume true;
            assert {:id "id506"} 2 != $FunctionContextHeight;
            assume true;
            g0#1_0_0 := TwoStateAt.DT.G#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap));
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(638,20)
            assume true;
            assert {:id "id508"} 2 != $FunctionContextHeight;
            assume true;
            g1#1_0_0 := TwoStateAt.NT.G#Handle(TInt, old($Heap));
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(639,20)
            assume true;
            assert {:id "id510"} 2 != $FunctionContextHeight;
            assume true;
            g2#1_0_0 := TwoStateAt.OT.G#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap));
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(640,12)
            if (*)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(641,20)
                assume true;
                assert {:id "id512"} 2 != $FunctionContextHeight;
                assume true;
                h0#1_1_0_0 := TwoStateAt.DT.G#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap));
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(642,20)
                assume true;
                assert {:id "id514"} 2 != $FunctionContextHeight;
                assume true;
                h1#1_1_0_0 := TwoStateAt.NT.G#Handle(TInt, old($Heap));
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(643,20)
                assume true;
                assert {:id "id516"} 2 != $FunctionContextHeight;
                assume true;
                h2#1_1_0_0 := TwoStateAt.OT.G#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap));
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(644,20)
                assume true;
                assert {:id "id518"} 2 != $FunctionContextHeight;
                assume true;
                h3#1_1_0_0 := TwoStateAt.DT.G#Handle(Tclass.TwoStateAt.Cell(), TInt, old($Heap));
            }
            else
            {
            }
        }
    }

  after_0:
}



procedure {:verboseName "TwoStateAt.FieldAccess (well-formedness)"} CheckWellFormed$$TwoStateAt.__default.FieldAccess(d0#0: DatatypeType
       where $Is(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
         && $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap)
         && $IsA#TwoStateAt.DT(d0#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.FieldAccess (call)"} Call$$TwoStateAt.__default.FieldAccess(d0#0: DatatypeType
       where $Is(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
         && $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap)
         && $IsA#TwoStateAt.DT(d0#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0));
  // user-defined preconditions
  requires {:id "id521"} TwoStateAt.DT.Blue_q(d0#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.FieldAccess (correctness)"} Impl$$TwoStateAt.__default.FieldAccess(d0#0: DatatypeType
       where $Is(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
         && $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap)
         && $IsA#TwoStateAt.DT(d0#0), 
    nt#0: int where LitInt(0) <= nt#0 && nt#0 < 86, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), $Heap), 
    r#0: ref
       where $Is(r#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(r#0, Tclass.TwoStateAt.Cell(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._System.Tuple0())
         && $IsAlloc(u#0, Tclass._System.Tuple0(), $Heap)
         && $IsA#_System.Tuple0(u#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id522"} TwoStateAt.DT.Blue_q(d0#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function TwoStateAt.NT.value(this: int) : int
uses {
axiom (forall this: int :: 
  { TwoStateAt.NT.value(this): int } 
  TwoStateAt.NT.value(this): int == LitInt(18));
// NT.value: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: int :: 
    { TwoStateAt.NT.value($o) } 
    $Is($o, Tclass.TwoStateAt.NT()) ==> $Is(TwoStateAt.NT.value($o), TInt));
// NT.value: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: int :: 
    { TwoStateAt.NT.value($o), $IsAlloc($o, Tclass.TwoStateAt.NT(), $h) } 
    $IsGoodHeap($h)
         && $Is($o, Tclass.TwoStateAt.NT())
         && $IsAlloc($o, Tclass.TwoStateAt.NT(), $h)
       ==> $IsAlloc(TwoStateAt.NT.value($o), TInt, $h));
}

function TwoStateAt.OT.value(TwoStateAt.OT$X: Ty, this: Box) : int
uses {
axiom (forall TwoStateAt.OT$X: Ty, this: Box :: 
  { TwoStateAt.OT.value(TwoStateAt.OT$X, this): int } 
  TwoStateAt.OT.value(TwoStateAt.OT$X, this): int == LitInt(18));
// OT.value: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TwoStateAt.OT$X: Ty, $o: Box :: 
    { TwoStateAt.OT.value(TwoStateAt.OT$X, $o) } 
    $IsBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       ==> $Is(TwoStateAt.OT.value(TwoStateAt.OT$X, $o), TInt));
// OT.value: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TwoStateAt.OT$X: Ty, $h: Heap, $o: Box :: 
    { TwoStateAt.OT.value(TwoStateAt.OT$X, $o), $IsAllocBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $h) } 
    $IsGoodHeap($h)
         && $IsBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox($o, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $h)
       ==> $IsAlloc(TwoStateAt.OT.value(TwoStateAt.OT$X, $o), TInt, $h));
}

function TwoStateAt.DT.sc(TwoStateAt.DT$X: Ty) : int
uses {
axiom (forall TwoStateAt.DT$X: Ty :: 
  { TwoStateAt.DT.sc(TwoStateAt.DT$X): int } 
  TwoStateAt.DT.sc(TwoStateAt.DT$X): int == LitInt(18));
// DT.sc: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TwoStateAt.DT$X: Ty :: 
    { TwoStateAt.DT.sc(TwoStateAt.DT$X) } 
    $Is(TwoStateAt.DT.sc(TwoStateAt.DT$X), TInt));
}

function TwoStateAt.NT.sc() : int
uses {
axiom TwoStateAt.NT.sc(): int == LitInt(18);
// NT.sc: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(TwoStateAt.NT.sc(), TInt);
}

function TwoStateAt.OT.sc(TwoStateAt.OT$X: Ty) : int
uses {
axiom (forall TwoStateAt.OT$X: Ty :: 
  { TwoStateAt.OT.sc(TwoStateAt.OT$X): int } 
  TwoStateAt.OT.sc(TwoStateAt.OT$X): int == LitInt(18));
// OT.sc: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TwoStateAt.OT$X: Ty :: 
    { TwoStateAt.OT.sc(TwoStateAt.OT$X) } 
    $Is(TwoStateAt.OT.sc(TwoStateAt.OT$X), TInt));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.FieldAccess (correctness)"} Impl$$TwoStateAt.__default.FieldAccess(d0#0: DatatypeType, nt#0: int, ot#0: Box, r#0: ref, u#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $Heap);
  var $nw: ref;
  var x##0: int;
  var d1#0: DatatypeType
     where $Is(d1#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()))
       && $IsAlloc(d1#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap);
  var $Heap_at_0: Heap;
  var defass#f0#0_0: bool;
  var f0#0_0: ref
     where defass#f0#0_0
       ==> $Is(f0#0_0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(f0#0_0, Tclass.TwoStateAt.Cell(), $Heap);
  var f1#0_0: int;
  var f2#0_0: int;
  var defass#f3#0_0: bool;
  var f3#0_0: ref
     where defass#f3#0_0
       ==> $Is(f3#0_0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(f3#0_0, Tclass.TwoStateAt.Cell(), $Heap);
  var g0#1_0_0: int;
  var g1#1_0_0: int;
  var g2#1_0_0: int;
  var h0#1_1_0_0: int;
  var h1#1_1_0_0: int;
  var h2#1_1_0_0: int;
  var h3#1_1_0_0: int;
  var defass#f0#1_1_1_0_0: bool;
  var f0#1_1_1_0_0: ref
     where defass#f0#1_1_1_0_0
       ==> $Is(f0#1_1_1_0_0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(f0#1_1_1_0_0, Tclass.TwoStateAt.Cell(), $Heap);
  var f1#1_1_1_0_0: int;
  var f2#1_1_1_0_0: int;
  var defass#f3#1_1_1_0_0: bool;
  var f3#1_1_1_0_0: ref
     where defass#f3#1_1_1_0_0
       ==> $Is(f3#1_1_1_0_0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(f3#1_1_1_0_0, Tclass.TwoStateAt.Cell(), $Heap);
  var g0#1_1_1_1_0_0: int;
  var g1#1_1_1_1_0_0: int;
  var g2#1_1_1_1_0_0: int;
  var h0#1_1_1_1_1_0_0: int;
  var h1#1_1_1_1_1_0_0: int;
  var h2#1_1_1_1_1_0_0: int;
  var h3#1_1_1_1_1_0_0: int;

    // AddMethodImpl: FieldAccess, Impl$$TwoStateAt.__default.FieldAccess
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(651,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(651,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(333);
    call {:id "id523"} $nw := Call$$TwoStateAt.Cell.__ctor(x##0);
    // TrCallStmt: After ProcessCallStmt
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(652,12)
    assume true;
    assert {:id "id525"} defass#c#0;
    assume true;
    d1#0 := #TwoStateAt.DT.Blue($Box(c#0));
    $Heap_at_0 := $Heap;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(655,5)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(656,20)
        assume true;
        assert {:id "id527"} TwoStateAt.DT.Blue_q(d0#0);
        assert {:id "id528"} $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), old($Heap));
        assume true;
        f0#0_0 := $Unbox(TwoStateAt.DT.value(d0#0)): ref;
        defass#f0#0_0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(657,20)
        assume true;
        assume true;
        f1#0_0 := TwoStateAt.NT.value(nt#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(658,20)
        assume true;
        assert {:id "id531"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), old($Heap));
        assume true;
        f2#0_0 := TwoStateAt.OT.value(Tclass.TwoStateAt.Cell(), ot#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(659,20)
        assume true;
        assert {:id "id533"} TwoStateAt.DT.Blue_q(d1#0);
        assert {:id "id534"} $IsAlloc(d1#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), old($Heap));
        assume true;
        f3#0_0 := $Unbox(TwoStateAt.DT.value(d1#0)): ref;
        defass#f3#0_0 := true;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(660,12)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(661,20)
            assume true;
            assume true;
            g0#1_0_0 := TwoStateAt.DT.sc(Tclass.TwoStateAt.Cell());
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(662,20)
            assume true;
            assume true;
            g1#1_0_0 := TwoStateAt.NT.sc();
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(663,20)
            assume true;
            assume true;
            g2#1_0_0 := TwoStateAt.OT.sc(Tclass.TwoStateAt.Cell());
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(664,12)
            if (*)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(665,20)
                assume true;
                assume true;
                h0#1_1_0_0 := TwoStateAt.DT.sc(Tclass.TwoStateAt.Cell());
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(666,20)
                assume true;
                assume true;
                h1#1_1_0_0 := TwoStateAt.NT.sc();
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(667,20)
                assume true;
                assume true;
                h2#1_1_0_0 := TwoStateAt.OT.sc(Tclass.TwoStateAt.Cell());
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(668,20)
                assume true;
                assume true;
                h3#1_1_0_0 := TwoStateAt.DT.sc(Tclass.TwoStateAt.Cell());
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(669,12)
                if (*)
                {
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(670,20)
                    assume true;
                    assert {:id "id543"} TwoStateAt.DT.Blue_q(d0#0);
                    assert {:id "id544"} $IsAlloc(d0#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap_at_0);
                    assume true;
                    f0#1_1_1_0_0 := $Unbox(TwoStateAt.DT.value(d0#0)): ref;
                    defass#f0#1_1_1_0_0 := true;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(671,20)
                    assume true;
                    assume true;
                    f1#1_1_1_0_0 := TwoStateAt.NT.value(nt#0);
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(672,20)
                    assume true;
                    assert {:id "id547"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(Tclass.TwoStateAt.Cell()), $Heap_at_0);
                    assume true;
                    f2#1_1_1_0_0 := TwoStateAt.OT.value(Tclass.TwoStateAt.Cell(), ot#0);
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(673,20)
                    assume true;
                    assert {:id "id549"} TwoStateAt.DT.Blue_q(d1#0);
                    assert {:id "id550"} $IsAlloc(d1#0, Tclass.TwoStateAt.DT(Tclass.TwoStateAt.Cell()), $Heap_at_0);
                    assume true;
                    f3#1_1_1_0_0 := $Unbox(TwoStateAt.DT.value(d1#0)): ref;
                    defass#f3#1_1_1_0_0 := true;
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(674,12)
                    if (*)
                    {
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(675,20)
                        assume true;
                        assume true;
                        g0#1_1_1_1_0_0 := TwoStateAt.DT.sc(Tclass.TwoStateAt.Cell());
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(676,20)
                        assume true;
                        assume true;
                        g1#1_1_1_1_0_0 := TwoStateAt.NT.sc();
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(677,20)
                        assume true;
                        assume true;
                        g2#1_1_1_1_0_0 := TwoStateAt.OT.sc(Tclass.TwoStateAt.Cell());
                    }
                    else
                    {
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(678,12)
                        if (*)
                        {
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(679,20)
                            assume true;
                            assume true;
                            h0#1_1_1_1_1_0_0 := TwoStateAt.DT.sc(Tclass.TwoStateAt.Cell());
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(680,20)
                            assume true;
                            assume true;
                            h1#1_1_1_1_1_0_0 := TwoStateAt.NT.sc();
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(681,20)
                            assume true;
                            assume true;
                            h2#1_1_1_1_1_0_0 := TwoStateAt.OT.sc(Tclass.TwoStateAt.Cell());
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(682,20)
                            assume true;
                            assume true;
                            h3#1_1_1_1_1_0_0 := TwoStateAt.DT.sc(Tclass.TwoStateAt.Cell());
                        }
                        else
                        {
                        }
                    }
                }
            }
        }
    }

  after_0:
}



procedure {:verboseName "TwoStateAt.reveal_Opaque (well-formedness)"} {:verify false} CheckWellFormed$$TwoStateAt.__default.reveal__Opaque(previous$Heap: Heap, current$Heap: Heap);
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



procedure {:verboseName "TwoStateAt.reveal_Opaque (call)"} {:verify false} Call$$TwoStateAt.__default.reveal__Opaque(previous$Heap: Heap, current$Heap: Heap);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_TwoStateAt._default.Opaque;



const unique class.TwoStateAt.Cell?: ClassName;

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass.TwoStateAt.Cell?()) } 
  $Is($o, Tclass.TwoStateAt.Cell?())
     <==> $o == null || dtype($o) == Tclass.TwoStateAt.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TwoStateAt.Cell?(), $h) } 
  $IsAlloc($o, Tclass.TwoStateAt.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const TwoStateAt.Cell.data: Field
uses {
axiom FDim(TwoStateAt.Cell.data) == 0
   && FieldOfDecl(class.TwoStateAt.Cell?, field$data) == TwoStateAt.Cell.data
   && !$IsGhostField(TwoStateAt.Cell.data);
}

// Cell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TwoStateAt.Cell.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.TwoStateAt.Cell?()
     ==> $Is($Unbox(read($h, $o, TwoStateAt.Cell.data)): int, TInt));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, TwoStateAt.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TwoStateAt.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, TwoStateAt.Cell.data)): int, TInt, $h));

procedure {:verboseName "TwoStateAt.Cell._ctor (well-formedness)"} CheckWellFormed$$TwoStateAt.Cell.__ctor(x#0: int) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.Cell._ctor (call)"} Call$$TwoStateAt.Cell.__ctor(x#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.TwoStateAt.Cell())
         && $IsAlloc(this, Tclass.TwoStateAt.Cell(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id560"} $Unbox(read($Heap, this, TwoStateAt.Cell.data)): int == x#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoStateAt.Cell._ctor (correctness)"} Impl$$TwoStateAt.Cell.__ctor(x#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id561"} $Unbox(read($Heap, this, TwoStateAt.Cell.data)): int == x#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Cell._ctor (correctness)"} Impl$$TwoStateAt.Cell.__ctor(x#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.data: int;

    // AddMethodImpl: _ctor, Impl$$TwoStateAt.Cell.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(246,5)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(247,12)
    assume true;
    assume true;
    this.data := x#0;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(246,5)
    assume this != null && $Is(this, Tclass.TwoStateAt.Cell?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, TwoStateAt.Cell.data)): int == this.data;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(246,5)
}



// function declaration for TwoStateAt.Cell.Sum
function TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : int
uses {
// definition axiom for TwoStateAt.Cell.Sum (revealed)
axiom {:id "id563"} 3 <= $FunctionContextHeight
   ==> (forall TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
    { TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
    TwoStateAt.Cell.Sum#canCall(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(c#0, Tclass.TwoStateAt.Cell())
           && $IsBox(y#0, TwoStateAt.Cell.Sum$Y))
       ==> TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
         && TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
           == TwoStateAt.Cell.Plus(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0));
}

function TwoStateAt.Cell.Sum#canCall(TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $heap: Heap, c#0: ref, y#0: Box)
   : bool;

// frame axiom for TwoStateAt.Cell.Sum
axiom (forall TwoStateAt.Cell.Sum$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    c#0: ref, 
    y#0: Box :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $h1, c#0, y#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.Cell.Sum#canCall(TwoStateAt.Cell.Sum$Y, $prevHeap, $h0, c#0, y#0)
         || ($Is(c#0, Tclass.TwoStateAt.Cell()) && $IsBox(y#0, TwoStateAt.Cell.Sum$Y)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $h0, c#0, y#0)
       == TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, $prevHeap, $h1, c#0, y#0));

function TwoStateAt.Cell.Sum#requires(Ty, Heap, Heap, ref, Box) : bool;

// #requires axiom for TwoStateAt.Cell.Sum
axiom (forall TwoStateAt.Cell.Sum$Y: Ty, $prevHeap: Heap, $Heap: Heap, c#0: ref, y#0: Box :: 
  { TwoStateAt.Cell.Sum#requires(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
       && $IsBox(y#0, TwoStateAt.Cell.Sum$Y)
     ==> TwoStateAt.Cell.Sum#requires(TwoStateAt.Cell.Sum$Y, $prevHeap, $Heap, c#0, y#0)
       == ($IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.Cell.Sum$Y, $prevHeap)));

procedure {:verboseName "TwoStateAt.Cell.Sum (well-formedness)"} CheckWellformed$$TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.Sum$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.Sum$Y, previous$Heap));
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Cell.Sum (well-formedness)"} CheckWellformed$$TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    c#0: ref, 
    y#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##y#0: Box;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        assert {:id "id564"} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass.TwoStateAt.Cell?(), $Heap);
        ##y#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#0, TwoStateAt.Cell.Sum$Y, $Heap);
        assert {:id "id565"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assert {:id "id566"} $IsAllocBox(y#0, TwoStateAt.Cell.Sum$Y, old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == c#0
             ==> $_ReadsFrame[$o, $f]);
        assume TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Sum$Y, old($Heap), $Heap, c#0, y#0);
        assume {:id "id567"} TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, old($Heap), $Heap, c#0, y#0)
           == TwoStateAt.Cell.Plus(TwoStateAt.Cell.Sum$Y, old($Heap), $Heap, c#0, y#0);
        assume TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Sum$Y, old($Heap), $Heap, c#0, y#0);
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.Cell.Sum(TwoStateAt.Cell.Sum$Y, old($Heap), $Heap, c#0, y#0), TInt);
        assert {:id "id568"} b$reqreads#0;
        return;

        assume false;
    }
}



// frame axiom for TwoStateAt.Cell.Plus
axiom (forall TwoStateAt.Cell.Plus$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref, 
    y#0: Box :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $h1, this, y#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.TwoStateAt.Cell())
       && (TwoStateAt.Cell.Plus#canCall(TwoStateAt.Cell.Plus$Y, $prevHeap, $h0, this, y#0)
         || $IsBox(y#0, TwoStateAt.Cell.Plus$Y))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $h0, this, y#0)
       == TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, $prevHeap, $h1, this, y#0));

function TwoStateAt.Cell.Plus#requires(Ty, Heap, Heap, ref, Box) : bool;

// #requires axiom for TwoStateAt.Cell.Plus
axiom (forall TwoStateAt.Cell.Plus$Y: Ty, $prevHeap: Heap, $Heap: Heap, this: ref, y#0: Box :: 
  { TwoStateAt.Cell.Plus#requires(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.TwoStateAt.Cell())
       && $IsAlloc(this, Tclass.TwoStateAt.Cell(), $prevHeap)
       && $IsBox(y#0, TwoStateAt.Cell.Plus$Y)
     ==> TwoStateAt.Cell.Plus#requires(TwoStateAt.Cell.Plus$Y, $prevHeap, $Heap, this, y#0)
       == $IsAllocBox(y#0, TwoStateAt.Cell.Plus$Y, $prevHeap));

procedure {:verboseName "TwoStateAt.Cell.Plus (well-formedness)"} CheckWellformed$$TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.TwoStateAt.Cell())
         && $IsAlloc(this, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.Plus$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.Plus$Y, previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Cell.Plus (well-formedness)"} CheckWellformed$$TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref, 
    y#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##c#0: ref;
  var ##y#0: Box;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
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
        ##c#0 := this;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
        ##y#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#0, TwoStateAt.Cell.Plus$Y, $Heap);
        assert {:id "id570"} $IsAlloc(this, Tclass.TwoStateAt.Cell(), old($Heap));
        assert {:id "id571"} $IsAllocBox(y#0, TwoStateAt.Cell.Plus$Y, old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == ##c#0
             ==> $_ReadsFrame[$o, $f]);
        assume TwoStateAt.__default.SP#canCall(TwoStateAt.Cell.Plus$Y, old($Heap), $Heap, this, y#0);
        assume {:id "id572"} TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, old($Heap), $Heap, this, y#0)
           == TwoStateAt.__default.SP(TwoStateAt.Cell.Plus$Y, old($Heap), $Heap, this, y#0);
        assume TwoStateAt.__default.SP#canCall(TwoStateAt.Cell.Plus$Y, old($Heap), $Heap, this, y#0);
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.Cell.Plus(TwoStateAt.Cell.Plus$Y, old($Heap), $Heap, this, y#0), TInt);
        assert {:id "id573"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.Cell.LL (well-formedness)"} CheckWellFormed$$TwoStateAt.Cell.LL(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.LL$Y: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.TwoStateAt.Cell())
         && $IsAlloc(this, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.LL$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.LL$Y, previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.Cell.LL$Y, previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Cell.LL (well-formedness)"} CheckWellFormed$$TwoStateAt.Cell.LL(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.LL$Y: Ty, 
    this: ref, 
    y#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: LL, CheckWellFormed$$TwoStateAt.Cell.LL
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id574"} $IsAlloc(this, Tclass.TwoStateAt.Cell(), old($Heap));
    assume {:id "id575"} $Unbox(read(old($Heap), this, TwoStateAt.Cell.data)): int
       < $Unbox(read($Heap, this, TwoStateAt.Cell.data)): int;
}



procedure {:verboseName "TwoStateAt.Cell.LL (call)"} Call$$TwoStateAt.Cell.LL(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.LL$Y: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.TwoStateAt.Cell())
         && $IsAlloc(this, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.LL$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.LL$Y, previous$Heap));
  requires $IsAllocBox(y#0, TwoStateAt.Cell.LL$Y, previous$Heap);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id576"} $Unbox(read(previous$Heap, this, TwoStateAt.Cell.data)): int
     < $Unbox(read(current$Heap, this, TwoStateAt.Cell.data)): int;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.Cell.LL (correctness)"} Impl$$TwoStateAt.Cell.LL(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.LL$Y: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass.TwoStateAt.Cell())
         && $IsAlloc(this, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.LL$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.LL$Y, previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.Cell.LL$Y, previous$Heap);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id577"} $Unbox(read(previous$Heap, this, TwoStateAt.Cell.data)): int
     < $Unbox(read(current$Heap, this, TwoStateAt.Cell.data)): int;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Cell.LL (correctness)"} Impl$$TwoStateAt.Cell.LL(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.LL$Y: Ty, 
    this: ref, 
    y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c##1_0_0: ref;
  var y##1_0_0: Box;

    // AddMethodImpl: LL, Impl$$TwoStateAt.Cell.LL
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(265,7)
    assert {:id "id578"} $IsAlloc(this, Tclass.TwoStateAt.Cell(), old($Heap));
    assume true;
    if ($Unbox(read(old($Heap), this, TwoStateAt.Cell.data)): int
       < $Unbox(read($Heap, this, TwoStateAt.Cell.data)): int)
    {
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(267,14)
        assert {:id "id579"} $IsAlloc(this, Tclass.TwoStateAt.Cell(), old($Heap));
        assume true;
        if ($Unbox(read(old($Heap), this, TwoStateAt.Cell.data)): int
           != $Unbox(read($Heap, this, TwoStateAt.Cell.data)): int)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(269,22)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##1_0_0 := this;
            assume true;
            // ProcessCallStmt: CheckSubrange
            y##1_0_0 := y#0;
            assert {:id "id580"} $IsAlloc(this, Tclass.TwoStateAt.Cell(), old($Heap));
            assert {:id "id581"} $IsAllocBox(y#0, TwoStateAt.Cell.LL$Y, old($Heap));
            call {:id "id582"} Call$$TwoStateAt.Cell.IdentityLemma(old($Heap), $Heap, TwoStateAt.Cell.LL$Y, c##1_0_0, y##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(270,9)
            assume true;
            assert {:id "id583"} Lit(false);
        }
        else
        {
        }
    }
}



procedure {:verboseName "TwoStateAt.Cell.IdentityLemma (well-formedness)"} CheckWellFormed$$TwoStateAt.Cell.IdentityLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.IdentityLemma$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.IdentityLemma$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.IdentityLemma$Y, previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.Cell.IdentityLemma$Y, previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Cell.IdentityLemma (well-formedness)"} CheckWellFormed$$TwoStateAt.Cell.IdentityLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.IdentityLemma$Y: Ty, 
    c#0: ref, 
    y#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: IdentityLemma, CheckWellFormed$$TwoStateAt.Cell.IdentityLemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id584"} c#0 != null;
    assert {:id "id585"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id586"} c#0 != null;
    assume {:id "id587"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
       == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
}



procedure {:verboseName "TwoStateAt.Cell.IdentityLemma (call)"} Call$$TwoStateAt.Cell.IdentityLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.IdentityLemma$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.IdentityLemma$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.IdentityLemma$Y, previous$Heap));
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.Cell.IdentityLemma$Y, previous$Heap);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id588"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     == $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.Cell.IdentityLemma (correctness)"} Impl$$TwoStateAt.Cell.IdentityLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.IdentityLemma$Y: Ty, 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.Cell.IdentityLemma$Y)
         && $IsAllocBox(y#0, TwoStateAt.Cell.IdentityLemma$Y, previous$Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.Cell.IdentityLemma$Y, previous$Heap);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id589"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     == $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.Cell.IdentityLemma (correctness)"} Impl$$TwoStateAt.Cell.IdentityLemma(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.Cell.IdentityLemma$Y: Ty, 
    c#0: ref, 
    y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: IdentityLemma, Impl$$TwoStateAt.Cell.IdentityLemma
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// $Is axiom for non-null type TwoStateAt.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.TwoStateAt.Cell()) } { $Is(c#0, Tclass.TwoStateAt.Cell?()) } 
  $Is(c#0, Tclass.TwoStateAt.Cell())
     <==> $Is(c#0, Tclass.TwoStateAt.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type TwoStateAt.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass.TwoStateAt.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass.TwoStateAt.Cell?(), $h));

// Constructor function declaration
function #TwoStateAt.DT.Green() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TwoStateAt.DT.Green()) == ##TwoStateAt.DT.Green;
// Constructor literal
axiom #TwoStateAt.DT.Green() == Lit(#TwoStateAt.DT.Green());
}

const unique ##TwoStateAt.DT.Green: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TwoStateAt.DT.Green()) == ##TwoStateAt.DT.Green;
}

function TwoStateAt.DT.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Green_q(d) } 
  TwoStateAt.DT.Green_q(d) <==> DatatypeCtorId(d) == ##TwoStateAt.DT.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Green_q(d) } 
  TwoStateAt.DT.Green_q(d) ==> d == #TwoStateAt.DT.Green());

// Constructor $Is
axiom (forall TwoStateAt.DT$X: Ty :: 
  { $Is(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $Is(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X)));

// Constructor $IsAlloc
axiom (forall TwoStateAt.DT$X: Ty, $h: Heap :: 
  { $IsAlloc(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TwoStateAt.DT.Green(), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h));

// Constructor function declaration
function #TwoStateAt.DT.Blue(Box) : DatatypeType;

const unique ##TwoStateAt.DT.Blue: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #TwoStateAt.DT.Blue(a#4#0#0) } 
  DatatypeCtorId(#TwoStateAt.DT.Blue(a#4#0#0)) == ##TwoStateAt.DT.Blue);
}

function TwoStateAt.DT.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Blue_q(d) } 
  TwoStateAt.DT.Blue_q(d) <==> DatatypeCtorId(d) == ##TwoStateAt.DT.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TwoStateAt.DT.Blue_q(d) } 
  TwoStateAt.DT.Blue_q(d)
     ==> (exists a#5#0#0: Box :: d == #TwoStateAt.DT.Blue(a#5#0#0)));

// Constructor $Is
axiom (forall TwoStateAt.DT$X: Ty, a#6#0#0: Box :: 
  { $Is(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $Is(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
     <==> $IsBox(a#6#0#0, TwoStateAt.DT$X));

// Constructor $IsAlloc
axiom (forall TwoStateAt.DT$X: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TwoStateAt.DT.Blue(a#6#0#0), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h)
       <==> $IsAllocBox(a#6#0#0, TwoStateAt.DT$X, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TwoStateAt.DT$X: Ty, $h: Heap :: 
  { $IsAllocBox(TwoStateAt.DT.value(d), TwoStateAt.DT$X, $h) } 
  $IsGoodHeap($h)
       && 
      TwoStateAt.DT.Blue_q(d)
       && $IsAlloc(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $h)
     ==> $IsAllocBox(TwoStateAt.DT.value(d), TwoStateAt.DT$X, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #TwoStateAt.DT.Blue(Lit(a#7#0#0)) } 
  #TwoStateAt.DT.Blue(Lit(a#7#0#0)) == Lit(#TwoStateAt.DT.Blue(a#7#0#0)));

function TwoStateAt.DT.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #TwoStateAt.DT.Blue(a#8#0#0) } 
  TwoStateAt.DT.value(#TwoStateAt.DT.Blue(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #TwoStateAt.DT.Blue(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#TwoStateAt.DT.Blue(a#9#0#0)));

// Depth-one case-split function
function $IsA#TwoStateAt.DT(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TwoStateAt.DT(d) } 
  $IsA#TwoStateAt.DT(d) ==> TwoStateAt.DT.Green_q(d) || TwoStateAt.DT.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall TwoStateAt.DT$X: Ty, d: DatatypeType :: 
  { TwoStateAt.DT.Blue_q(d), $Is(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
    { TwoStateAt.DT.Green_q(d), $Is(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X)) } 
  $Is(d, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
     ==> TwoStateAt.DT.Green_q(d) || TwoStateAt.DT.Blue_q(d));

// Datatype extensional equality declaration
function TwoStateAt.DT#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TwoStateAt.DT.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Green_q(a) } 
    { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Green_q(b) } 
  TwoStateAt.DT.Green_q(a) && TwoStateAt.DT.Green_q(b)
     ==> TwoStateAt.DT#Equal(a, b));

// Datatype extensional equality definition: #TwoStateAt.DT.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Blue_q(a) } 
    { TwoStateAt.DT#Equal(a, b), TwoStateAt.DT.Blue_q(b) } 
  TwoStateAt.DT.Blue_q(a) && TwoStateAt.DT.Blue_q(b)
     ==> (TwoStateAt.DT#Equal(a, b)
       <==> TwoStateAt.DT.value(a) == TwoStateAt.DT.value(b)));

// Datatype extensionality axiom: TwoStateAt.DT
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoStateAt.DT#Equal(a, b) } 
  TwoStateAt.DT#Equal(a, b) <==> a == b);

const unique class.TwoStateAt.DT: ClassName;

procedure {:verboseName "TwoStateAt.DT.sc (well-formedness)"} CheckWellFormed$$TwoStateAt.DT.sc(TwoStateAt.DT$X: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// DT.sc: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TwoStateAt.DT$X: Ty, $h: Heap :: 
    { $IsAlloc(TwoStateAt.DT.sc(TwoStateAt.DT$X), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(TwoStateAt.DT.sc(TwoStateAt.DT$X), TInt, $h));

// frame axiom for TwoStateAt.DT.F
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
       && (TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
         || (
          $IsBox(x#0, TwoStateAt.DT$X)
           && $IsBox(y#0, TwoStateAt.DT.F$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
       == TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0));

function TwoStateAt.DT.F#requires(Ty, Ty, Heap, Heap, DatatypeType, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.DT.F
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.DT.F#requires(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
       && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $prevHeap)
       && $IsBox(x#0, TwoStateAt.DT$X)
       && $IsBox(y#0, TwoStateAt.DT.F$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.DT.F#requires(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       == (
        $IsAllocBox(x#0, TwoStateAt.DT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.DT.F$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

procedure {:verboseName "TwoStateAt.DT.F (well-formedness)"} CheckWellformed$$TwoStateAt.DT.F(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: DatatypeType
       where $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
         && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.F$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.F$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.DT.F (well-formedness)"} CheckWellformed$$TwoStateAt.DT.F(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.F$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        assert {:id "id591"} c#0 != null;
        b$reqreads#0 := $_ReadsFrame[c#0, TwoStateAt.Cell.data];
        assert {:id "id592"} c#0 != null;
        assert {:id "id593"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume {:id "id594"} TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, old($Heap), $Heap, this, x#0, y#0, c#0)
           == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
             - $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.F$Y, old($Heap), $Heap, this, x#0, y#0, c#0), 
          TInt);
        assert {:id "id595"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.DT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.DT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.L$Y: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
         && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.DT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.DT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.L$Y: Ty, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L, CheckWellFormed$$TwoStateAt.DT.L
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id596"} c#0 != null;
    assert {:id "id597"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id598"} c#0 != null;
    assume {:id "id599"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
       <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
    havoc n#0;
}



procedure {:verboseName "TwoStateAt.DT.L (call)"} Call$$TwoStateAt.DT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.L$Y: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
         && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id600"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.DT.L (correctness)"} Impl$$TwoStateAt.DT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.L$Y: Ty, 
    this: DatatypeType
       where $Is(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X))
         && $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id601"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.DT.L (correctness)"} Impl$$TwoStateAt.DT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.L$Y: Ty, 
    this: DatatypeType, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: Box;
  var ##y#0: Box;
  var ##c#0: ref;

    // AddMethodImpl: L, Impl$$TwoStateAt.DT.L
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(487,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, TwoStateAt.DT$X, $Heap);
    ##y#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#0, TwoStateAt.DT.L$Y, $Heap);
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
    assert {:id "id602"} $IsAlloc(this, Tclass.TwoStateAt.DT(TwoStateAt.DT$X), old($Heap));
    assert {:id "id603"} $IsAllocBox(x#0, TwoStateAt.DT$X, old($Heap));
    assert {:id "id604"} $IsAllocBox(y#0, TwoStateAt.DT.L$Y, old($Heap));
    assert {:id "id605"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assume TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, TwoStateAt.DT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0);
    assert {:id "id606"} $Is(TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0), 
      Tclass._System.nat());
    assume TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, TwoStateAt.DT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0);
    n#0 := TwoStateAt.DT.F(TwoStateAt.DT$X, TwoStateAt.DT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0);
}



// frame axiom for TwoStateAt.DT.G
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h1, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.DT.G#canCall(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h0, x#0, y#0, c#0)
         || (
          $IsBox(x#0, TwoStateAt.DT$X)
           && $IsBox(y#0, TwoStateAt.DT.G$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h0, x#0, y#0, c#0)
       == TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $h1, x#0, y#0, c#0));

function TwoStateAt.DT.G#requires(Ty, Ty, Heap, Heap, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.DT.G
axiom (forall TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.DT.G#requires(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $IsBox(x#0, TwoStateAt.DT$X)
       && $IsBox(y#0, TwoStateAt.DT.G$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.DT.G#requires(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, $prevHeap, $Heap, x#0, y#0, c#0)
       == (
        $IsAllocBox(x#0, TwoStateAt.DT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.DT.G$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

procedure {:verboseName "TwoStateAt.DT.G (well-formedness)"} CheckWellformed$$TwoStateAt.DT.G(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.G$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.G$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.DT.G (well-formedness)"} CheckWellformed$$TwoStateAt.DT.G(TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.G$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: Box;
  var ##y#0: Box;
  var ##c#0: ref;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#TwoStateAt.DT.Green())), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, TwoStateAt.DT$X, $Heap);
        ##y#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#0, TwoStateAt.DT.G$Y, $Heap);
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id609"} $IsAlloc(Lit(#TwoStateAt.DT.Green()), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), old($Heap));
        assert {:id "id610"} $IsAllocBox(x#0, TwoStateAt.DT$X, old($Heap));
        assert {:id "id611"} $IsAllocBox(y#0, TwoStateAt.DT.G$Y, old($Heap));
        assert {:id "id612"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == ##c#0
             ==> $_ReadsFrame[$o, $f]);
        assume TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, 
          TwoStateAt.DT.G$Y, 
          old($Heap), 
          $Heap, 
          Lit(#TwoStateAt.DT.Green()), 
          x#0, 
          y#0, 
          c#0);
        assume {:id "id613"} TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, old($Heap), $Heap, x#0, y#0, c#0)
           == TwoStateAt.DT.F(TwoStateAt.DT$X, 
            TwoStateAt.DT.G$Y, 
            old($Heap), 
            $Heap, 
            Lit(#TwoStateAt.DT.Green()), 
            x#0, 
            y#0, 
            c#0);
        assume TwoStateAt.DT.F#canCall(TwoStateAt.DT$X, 
          TwoStateAt.DT.G$Y, 
          old($Heap), 
          $Heap, 
          Lit(#TwoStateAt.DT.Green()), 
          x#0, 
          y#0, 
          c#0);
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.DT.G(TwoStateAt.DT$X, TwoStateAt.DT.G$Y, old($Heap), $Heap, x#0, y#0, c#0), 
          TInt);
        assert {:id "id614"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.DT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.DT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.M$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.DT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.DT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.M$Y: Ty, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M, CheckWellFormed$$TwoStateAt.DT.M
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id615"} c#0 != null;
    assert {:id "id616"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id617"} c#0 != null;
    assume {:id "id618"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
       <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
    havoc n#0;
}



procedure {:verboseName "TwoStateAt.DT.M (call)"} Call$$TwoStateAt.DT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.M$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id619"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.DT.M (correctness)"} Impl$$TwoStateAt.DT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.M$Y: Ty, 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.DT$X) && $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.DT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0, $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.DT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.DT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id620"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.DT.M (correctness)"} Impl$$TwoStateAt.DT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.DT$X: Ty, 
    TwoStateAt.DT.M$Y: Ty, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: int;
  var x##0: Box;
  var y##0: Box;
  var c##0: ref;

    // AddMethodImpl: M, Impl$$TwoStateAt.DT.M
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(497,19)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := y#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    assert {:id "id621"} $IsAlloc(Lit(#TwoStateAt.DT.Green()), Tclass.TwoStateAt.DT(TwoStateAt.DT$X), old($Heap));
    assert {:id "id622"} $IsAllocBox(x#0, TwoStateAt.DT$X, old($Heap));
    assert {:id "id623"} $IsAllocBox(y#0, TwoStateAt.DT.M$Y, old($Heap));
    assert {:id "id624"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    call {:id "id625"} $rhs##0 := Call$$TwoStateAt.DT.L(old($Heap), $Heap, TwoStateAt.DT$X, TwoStateAt.DT.M$Y, Lit(#TwoStateAt.DT.Green()), x##0, y##0, c##0);
    // TrCallStmt: After ProcessCallStmt
    n#0 := $rhs##0;
}



procedure {:verboseName "TwoStateAt.NT (well-formedness)"} CheckWellFormed$$TwoStateAt.NT(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.NT (well-formedness)"} CheckWellFormed$$TwoStateAt.NT(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype NT
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        if (LitInt(0) <= x#0)
        {
        }

        assume {:id "id627"} LitInt(0) <= x#0 && x#0 < 86;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id628"} {:subsumption 0} LitInt(0) <= LitInt(0);
        assert {:id "id629"} {:subsumption 0} Lit(0 < 86);
        assume false;
    }
}



// $Is axiom for newtype TwoStateAt.NT
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.TwoStateAt.NT()) } 
  $Is(x#0, Tclass.TwoStateAt.NT()) <==> LitInt(0) <= x#0 && x#0 < 86);

// $IsAlloc axiom for newtype TwoStateAt.NT
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.TwoStateAt.NT(), $h) } 
  $IsAlloc(x#0, Tclass.TwoStateAt.NT(), $h));

const unique class.TwoStateAt.NT: ClassName;

procedure {:verboseName "TwoStateAt.NT.value (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.value(this: int where LitInt(0) <= this && this < 86);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.NT.sc (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.sc();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// NT.sc: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(TwoStateAt.NT.sc(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(TwoStateAt.NT.sc(), TInt, $h));

// frame axiom for TwoStateAt.NT.F
axiom (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $h1, this, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      LitInt(0) <= this
       && this < 86
       && (TwoStateAt.NT.F#canCall(TwoStateAt.NT.F$Y, $prevHeap, $h0, this, y#0, c#0)
         || ($IsBox(y#0, TwoStateAt.NT.F$Y) && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $h0, this, y#0, c#0)
       == TwoStateAt.NT.F(TwoStateAt.NT.F$Y, $prevHeap, $h1, this, y#0, c#0));

function TwoStateAt.NT.F#requires(Ty, Heap, Heap, int, Box, ref) : bool;

// #requires axiom for TwoStateAt.NT.F
axiom (forall TwoStateAt.NT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.NT.F#requires(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      LitInt(0) <= this
       && this < 86
       && $IsBox(y#0, TwoStateAt.NT.F$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.NT.F#requires(TwoStateAt.NT.F$Y, $prevHeap, $Heap, this, y#0, c#0)
       == ($IsAllocBox(y#0, TwoStateAt.NT.F$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

procedure {:verboseName "TwoStateAt.NT.F (well-formedness)"} CheckWellformed$$TwoStateAt.NT.F(TwoStateAt.NT.F$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: int where LitInt(0) <= this && this < 86, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.F$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.F$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.NT.F (well-formedness)"} CheckWellformed$$TwoStateAt.NT.F(TwoStateAt.NT.F$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: int, 
    y#0: Box, 
    c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        assert {:id "id631"} c#0 != null;
        b$reqreads#0 := $_ReadsFrame[c#0, TwoStateAt.Cell.data];
        assert {:id "id632"} c#0 != null;
        assert {:id "id633"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume {:id "id634"} TwoStateAt.NT.F(TwoStateAt.NT.F$Y, old($Heap), $Heap, this, y#0, c#0)
           == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
             - $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.NT.F(TwoStateAt.NT.F$Y, old($Heap), $Heap, this, y#0, c#0), TInt);
        assert {:id "id635"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.NT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.L$Y: Ty, 
    this: int where LitInt(0) <= this && this < 86, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.NT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.L$Y: Ty, 
    this: int, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L, CheckWellFormed$$TwoStateAt.NT.L
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id636"} c#0 != null;
    assert {:id "id637"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id638"} c#0 != null;
    assume {:id "id639"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
       <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
    havoc n#0;
}



procedure {:verboseName "TwoStateAt.NT.L (call)"} Call$$TwoStateAt.NT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.L$Y: Ty, 
    this: int where LitInt(0) <= this && this < 86, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id640"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.NT.L (correctness)"} Impl$$TwoStateAt.NT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.L$Y: Ty, 
    this: int where LitInt(0) <= this && this < 86, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.NT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id641"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.NT.L (correctness)"} Impl$$TwoStateAt.NT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.L$Y: Ty, 
    this: int, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##y#0: Box;
  var ##c#0: ref;

    // AddMethodImpl: L, Impl$$TwoStateAt.NT.L
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(512,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass.TwoStateAt.NT(), $Heap);
    ##y#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#0, TwoStateAt.NT.L$Y, $Heap);
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
    assert {:id "id642"} $IsAllocBox(y#0, TwoStateAt.NT.L$Y, old($Heap));
    assert {:id "id643"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assume TwoStateAt.NT.F#canCall(TwoStateAt.NT.L$Y, old($Heap), $Heap, this, y#0, c#0);
    assert {:id "id644"} $Is(TwoStateAt.NT.F(TwoStateAt.NT.L$Y, old($Heap), $Heap, this, y#0, c#0), 
      Tclass._System.nat());
    assume TwoStateAt.NT.F#canCall(TwoStateAt.NT.L$Y, old($Heap), $Heap, this, y#0, c#0);
    n#0 := TwoStateAt.NT.F(TwoStateAt.NT.L$Y, old($Heap), $Heap, this, y#0, c#0);
}



// frame axiom for TwoStateAt.NT.G
axiom (forall TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $h0: Heap, $h1: Heap, y#0: Box, c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $h1, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.NT.G#canCall(TwoStateAt.NT.G$Y, $prevHeap, $h0, y#0, c#0)
         || ($IsBox(y#0, TwoStateAt.NT.G$Y) && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $h0, y#0, c#0)
       == TwoStateAt.NT.G(TwoStateAt.NT.G$Y, $prevHeap, $h1, y#0, c#0));

function TwoStateAt.NT.G#requires(Ty, Heap, Heap, Box, ref) : bool;

// #requires axiom for TwoStateAt.NT.G
axiom (forall TwoStateAt.NT.G$Y: Ty, $prevHeap: Heap, $Heap: Heap, y#0: Box, c#0: ref :: 
  { TwoStateAt.NT.G#requires(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $IsBox(y#0, TwoStateAt.NT.G$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.NT.G#requires(TwoStateAt.NT.G$Y, $prevHeap, $Heap, y#0, c#0)
       == ($IsAllocBox(y#0, TwoStateAt.NT.G$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

procedure {:verboseName "TwoStateAt.NT.G (well-formedness)"} CheckWellformed$$TwoStateAt.NT.G(TwoStateAt.NT.G$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.G$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.G$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.NT.G (well-formedness)"} CheckWellformed$$TwoStateAt.NT.G(TwoStateAt.NT.G$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    y#0: Box, 
    c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var ##y#0: Box;
  var ##c#0: ref;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        newtype$check#0 := LitInt(82);
        assert {:id "id647"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 86;
        newtype$check#1 := LitInt(82);
        assert {:id "id648"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 86;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(LitInt(82)), Tclass.TwoStateAt.NT(), $Heap);
        ##y#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#0, TwoStateAt.NT.G$Y, $Heap);
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id649"} $IsAllocBox(y#0, TwoStateAt.NT.G$Y, old($Heap));
        assert {:id "id650"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == ##c#0
             ==> $_ReadsFrame[$o, $f]);
        assume TwoStateAt.NT.F#canCall(TwoStateAt.NT.G$Y, old($Heap), $Heap, LitInt(82), y#0, c#0);
        assume {:id "id651"} TwoStateAt.NT.G(TwoStateAt.NT.G$Y, old($Heap), $Heap, y#0, c#0)
           == TwoStateAt.NT.F(TwoStateAt.NT.G$Y, old($Heap), $Heap, LitInt(82), y#0, c#0);
        assume TwoStateAt.NT.F#canCall(TwoStateAt.NT.G$Y, old($Heap), $Heap, LitInt(82), y#0, c#0);
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.NT.G(TwoStateAt.NT.G$Y, old($Heap), $Heap, y#0, c#0), TInt);
        assert {:id "id652"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.NT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.M$Y: Ty, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.NT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.NT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.M$Y: Ty, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M, CheckWellFormed$$TwoStateAt.NT.M
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id653"} c#0 != null;
    assert {:id "id654"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id655"} c#0 != null;
    assume {:id "id656"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
       <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
    havoc n#0;
}



procedure {:verboseName "TwoStateAt.NT.M (call)"} Call$$TwoStateAt.NT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.M$Y: Ty, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id657"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.NT.M (correctness)"} Impl$$TwoStateAt.NT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.M$Y: Ty, 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.NT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0, $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.NT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id658"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.NT.M (correctness)"} Impl$$TwoStateAt.NT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.NT.M$Y: Ty, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: int;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var y##0: Box;
  var c##0: ref;

    // AddMethodImpl: M, Impl$$TwoStateAt.NT.M
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(522,24)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := LitInt(82);
    assert {:id "id659"} LitInt(0) <= newtype$check#0 && newtype$check#0 < 86;
    newtype$check#1 := LitInt(82);
    assert {:id "id660"} LitInt(0) <= newtype$check#1 && newtype$check#1 < 86;
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := y#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    assert {:id "id661"} $IsAllocBox(y#0, TwoStateAt.NT.M$Y, old($Heap));
    assert {:id "id662"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    call {:id "id663"} $rhs##0 := Call$$TwoStateAt.NT.L(old($Heap), $Heap, TwoStateAt.NT.M$Y, LitInt(82), y##0, c##0);
    // TrCallStmt: After ProcessCallStmt
    n#0 := $rhs##0;
}



const unique class.TwoStateAt.OT: ClassName;

procedure {:verboseName "TwoStateAt.OT.value (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.value(TwoStateAt.OT$X: Ty, 
    this: Box
       where $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoStateAt.OT.sc (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.sc(TwoStateAt.OT$X: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// OT.sc: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall TwoStateAt.OT$X: Ty, $h: Heap :: 
    { $IsAlloc(TwoStateAt.OT.sc(TwoStateAt.OT$X), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(TwoStateAt.OT.sc(TwoStateAt.OT$X), TInt, $h));

// frame axiom for TwoStateAt.OT.F
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       && (TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
         || (
          $IsBox(x#0, TwoStateAt.OT$X)
           && $IsBox(y#0, TwoStateAt.OT.F$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h0, this, x#0, y#0, c#0)
       == TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $h1, this, x#0, y#0, c#0));

function TwoStateAt.OT.F#requires(Ty, Ty, Heap, Heap, Box, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.OT.F
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.OT.F#requires(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $prevHeap)
       && $IsBox(x#0, TwoStateAt.OT$X)
       && $IsBox(y#0, TwoStateAt.OT.F$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.OT.F#requires(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, $prevHeap, $Heap, this, x#0, y#0, c#0)
       == (
        $IsAllocBox(x#0, TwoStateAt.OT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.OT.F$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

procedure {:verboseName "TwoStateAt.OT.F (well-formedness)"} CheckWellformed$$TwoStateAt.OT.F(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.F$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.F$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.OT.F (well-formedness)"} CheckWellformed$$TwoStateAt.OT.F(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.F$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        assert {:id "id666"} c#0 != null;
        b$reqreads#0 := $_ReadsFrame[c#0, TwoStateAt.Cell.data];
        assert {:id "id667"} c#0 != null;
        assert {:id "id668"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        assume {:id "id669"} TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, old($Heap), $Heap, this, x#0, y#0, c#0)
           == $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int
             - $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.F$Y, old($Heap), $Heap, this, x#0, y#0, c#0), 
          TInt);
        assert {:id "id670"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.OT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.L$Y: Ty, 
    this: Box
       where $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.OT.L (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.L$Y: Ty, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: L, CheckWellFormed$$TwoStateAt.OT.L
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id671"} c#0 != null;
    assert {:id "id672"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id673"} c#0 != null;
    assume {:id "id674"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
       <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
    havoc n#0;
}



procedure {:verboseName "TwoStateAt.OT.L (call)"} Call$$TwoStateAt.OT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.L$Y: Ty, 
    this: Box
       where $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id675"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.OT.L (correctness)"} Impl$$TwoStateAt.OT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.L$Y: Ty, 
    this: Box
       where $IsBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.L$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.L$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id676"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.OT.L (correctness)"} Impl$$TwoStateAt.OT.L(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.L$Y: Ty, 
    this: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: Box;
  var ##y#0: Box;
  var ##c#0: ref;

    // AddMethodImpl: L, Impl$$TwoStateAt.OT.L
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(537,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x#0, TwoStateAt.OT$X, $Heap);
    ##y#0 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##y#0, TwoStateAt.OT.L$Y, $Heap);
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
    assert {:id "id677"} $IsAllocBox(this, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), old($Heap));
    assert {:id "id678"} $IsAllocBox(x#0, TwoStateAt.OT$X, old($Heap));
    assert {:id "id679"} $IsAllocBox(y#0, TwoStateAt.OT.L$Y, old($Heap));
    assert {:id "id680"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assume TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0);
    assert {:id "id681"} $Is(TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0), 
      Tclass._System.nat());
    assume TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0);
    n#0 := TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.L$Y, old($Heap), $Heap, this, x#0, y#0, c#0);
}



// frame axiom for TwoStateAt.OT.G
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h1, ot#0, x#0, y#0, c#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (TwoStateAt.OT.G#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h0, ot#0, x#0, y#0, c#0)
         || (
          $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
           && $IsBox(x#0, TwoStateAt.OT$X)
           && $IsBox(y#0, TwoStateAt.OT.G$Y)
           && $Is(c#0, Tclass.TwoStateAt.Cell())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == c#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h0, ot#0, x#0, y#0, c#0)
       == TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $h1, ot#0, x#0, y#0, c#0));

function TwoStateAt.OT.G#requires(Ty, Ty, Heap, Heap, Box, Box, Box, ref) : bool;

// #requires axiom for TwoStateAt.OT.G
axiom (forall TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    $prevHeap: Heap, 
    $Heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref :: 
  { TwoStateAt.OT.G#requires(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
       && $IsBox(x#0, TwoStateAt.OT$X)
       && $IsBox(y#0, TwoStateAt.OT.G$Y)
       && $Is(c#0, Tclass.TwoStateAt.Cell())
     ==> TwoStateAt.OT.G#requires(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, $prevHeap, $Heap, ot#0, x#0, y#0, c#0)
       == (
        $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $prevHeap)
         && $IsAllocBox(x#0, TwoStateAt.OT$X, $prevHeap)
         && $IsAllocBox(y#0, TwoStateAt.OT.G$Y, $prevHeap)
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), $prevHeap)));

procedure {:verboseName "TwoStateAt.OT.G (well-formedness)"} CheckWellformed$$TwoStateAt.OT.G(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.G$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.G$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap));
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.OT.G (well-formedness)"} CheckWellformed$$TwoStateAt.OT.G(TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.G$Y: Ty, 
    previous$Heap: Heap, 
    current$Heap: Heap, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: Box;
  var ##y#0: Box;
  var ##c#0: ref;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
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
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), $Heap);
        ##x#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, TwoStateAt.OT$X, $Heap);
        ##y#0 := y#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##y#0, TwoStateAt.OT.G$Y, $Heap);
        ##c#0 := c#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##c#0, Tclass.TwoStateAt.Cell(), $Heap);
        assert {:id "id684"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), old($Heap));
        assert {:id "id685"} $IsAllocBox(x#0, TwoStateAt.OT$X, old($Heap));
        assert {:id "id686"} $IsAllocBox(y#0, TwoStateAt.OT.G$Y, old($Heap));
        assert {:id "id687"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == ##c#0
             ==> $_ReadsFrame[$o, $f]);
        assume TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, old($Heap), $Heap, ot#0, x#0, y#0, c#0);
        assume {:id "id688"} TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, old($Heap), $Heap, ot#0, x#0, y#0, c#0)
           == TwoStateAt.OT.F(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, old($Heap), $Heap, ot#0, x#0, y#0, c#0);
        assume TwoStateAt.OT.F#canCall(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, old($Heap), $Heap, ot#0, x#0, y#0, c#0);
        // CheckWellformedWithResult: any expression
        assume $Is(TwoStateAt.OT.G(TwoStateAt.OT$X, TwoStateAt.OT.G$Y, old($Heap), $Heap, ot#0, x#0, y#0, c#0), 
          TInt);
        assert {:id "id689"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TwoStateAt.OT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.M$Y: Ty, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.OT.M (well-formedness)"} CheckWellFormed$$TwoStateAt.OT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.M$Y: Ty, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M, CheckWellFormed$$TwoStateAt.OT.M
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id690"} c#0 != null;
    assert {:id "id691"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    assert {:id "id692"} c#0 != null;
    assume {:id "id693"} $Unbox(read(old($Heap), c#0, TwoStateAt.Cell.data)): int
       <= $Unbox(read($Heap, c#0, TwoStateAt.Cell.data)): int;
    havoc n#0;
}



procedure {:verboseName "TwoStateAt.OT.M (call)"} Call$$TwoStateAt.OT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.M$Y: Ty, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0);
  requires $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id694"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "TwoStateAt.OT.M (correctness)"} Impl$$TwoStateAt.OT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.M$Y: Ty, 
    ot#0: Box
       where $IsBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X))
         && $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap), 
    x#0: Box
       where $IsBox(x#0, TwoStateAt.OT$X) && $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap), 
    y#0: Box
       where $IsBox(y#0, TwoStateAt.OT.M$Y)
         && $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass.TwoStateAt.Cell())
         && $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap))
   returns (n#0: int where LitInt(0) <= n#0, $_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), previous$Heap);
  requires $IsAllocBox(x#0, TwoStateAt.OT$X, previous$Heap);
  requires $IsAllocBox(y#0, TwoStateAt.OT.M$Y, previous$Heap);
  requires $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), previous$Heap);
  // user-defined preconditions
  requires {:id "id695"} $Unbox(read(previous$Heap, c#0, TwoStateAt.Cell.data)): int
     <= $Unbox(read(current$Heap, c#0, TwoStateAt.Cell.data)): int;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoStateAt.OT.M (correctness)"} Impl$$TwoStateAt.OT.M(previous$Heap: Heap, 
    current$Heap: Heap, 
    TwoStateAt.OT$X: Ty, 
    TwoStateAt.OT.M$Y: Ty, 
    ot#0: Box, 
    x#0: Box, 
    y#0: Box, 
    c#0: ref)
   returns (n#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##0: int;
  var x##0: Box;
  var y##0: Box;
  var c##0: ref;

    // AddMethodImpl: M, Impl$$TwoStateAt.OT.M
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Twostate-Verification.dfy(547,16)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := y#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    assert {:id "id696"} $IsAllocBox(ot#0, Tclass.TwoStateAt.OT(TwoStateAt.OT$X), old($Heap));
    assert {:id "id697"} $IsAllocBox(x#0, TwoStateAt.OT$X, old($Heap));
    assert {:id "id698"} $IsAllocBox(y#0, TwoStateAt.OT.M$Y, old($Heap));
    assert {:id "id699"} $IsAlloc(c#0, Tclass.TwoStateAt.Cell(), old($Heap));
    call {:id "id700"} $rhs##0 := Call$$TwoStateAt.OT.L(old($Heap), $Heap, TwoStateAt.OT$X, TwoStateAt.OT.M$Y, ot#0, x##0, y##0, c##0);
    // TrCallStmt: After ProcessCallStmt
    n#0 := $rhs##0;
}



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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$DT: TyTagFamily;

const unique tytagFamily$NT: TyTagFamily;

const unique field$data: NameFamily;
