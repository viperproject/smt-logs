// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy

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

const unique class._module.__default: ClassName;

function Tclass._module.FailureCompatible() : Ty
uses {
axiom $AlwaysAllocated(Tclass._module.FailureCompatible());
}

procedure {:verboseName "P (well-formedness)"} CheckWellFormed$$_module.__default.P(t#0: Box
       where $IsBox(t#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P (call)"} Call$$_module.__default.P(t#0: Box
       where $IsBox(t#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "P (correctness)"} Impl$$_module.__default.P(t#0: Box
       where $IsBox(t#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap))
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



function _module.FailureCompatible.c(this: Box) : int
uses {
// FailureCompatible.c: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: Box :: 
    { _module.FailureCompatible.c($o) } 
    $IsBox($o, Tclass._module.FailureCompatible())
       ==> $Is(_module.FailureCompatible.c($o), TInt));
// FailureCompatible.c: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: Box :: 
    { _module.FailureCompatible.c($o), $IsAllocBox($o, Tclass._module.FailureCompatible(), $h) } 
    $IsGoodHeap($h)
         && $IsBox($o, Tclass._module.FailureCompatible())
         && $IsAllocBox($o, Tclass._module.FailureCompatible(), $h)
       ==> $IsAlloc(_module.FailureCompatible.c($o), TInt, $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P (correctness)"} Impl$$_module.__default.P(t#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: bool;
  var pf#0_0: int;
  var e#1_0: real;

    // AddMethodImpl: P, Impl$$_module.__default.P
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(127,9)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap);
    assume _module.FailureCompatible.IsFailure#canCall(t#0);
    assume _module.FailureCompatible.IsFailure#canCall(t#0);
    b#0 := _module.FailureCompatible.IsFailure(t#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(128,3)
    assume true;
    if (_module.FailureCompatible.c(t#0) < 10)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(129,5)
        assume true;
        assert {:id "id1"} b#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(130,12)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap);
        assert {:id "id2"} {:subsumption 0} _module.FailureCompatible.IsFailure#canCall(t#0)
           ==> _module.FailureCompatible.IsFailure(t#0)
             || _module.FailureCompatible.c(t#0) < 10;
        assume _module.FailureCompatible.IsFailure(t#0);
        assume _module.FailureCompatible.PropagateFailure#canCall(t#0);
        assume _module.FailureCompatible.PropagateFailure#canCall(t#0);
        pf#0_0 := _module.FailureCompatible.PropagateFailure(t#0);
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(132,5)
        assume true;
        assert {:id "id4"} !b#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(133,11)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap);
        assert {:id "id5"} {:subsumption 0} !_module.FailureCompatible.IsFailure(t#0);
        assume !_module.FailureCompatible.IsFailure(t#0);
        assume _module.FailureCompatible.Extract#canCall(t#0);
        assume _module.FailureCompatible.Extract#canCall(t#0);
        e#1_0 := _module.FailureCompatible.Extract(t#0);
    }
}



procedure {:verboseName "P' (well-formedness)"} CheckWellFormed$$_module.__default.P_k(t#0: Box
       where $IsBox(t#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P' (call)"} Call$$_module.__default.P_k(t#0: Box
       where $IsBox(t#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "P' (correctness)"} Impl$$_module.__default.P_k(t#0: Box
       where $IsBox(t#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P' (correctness)"} Impl$$_module.__default.P_k(t#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var e#0_0: real;
  var pf#1_0: int;

    // AddMethodImpl: P', Impl$$_module.__default.P_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(138,3)
    assume true;
    if (_module.FailureCompatible.c(t#0) < 10)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(139,11)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap);
        assert {:id "id7"} {:subsumption 0} !_module.FailureCompatible.IsFailure(t#0);
        assume !_module.FailureCompatible.IsFailure(t#0);
        assume _module.FailureCompatible.Extract#canCall(t#0);
        assume _module.FailureCompatible.Extract#canCall(t#0);
        e#0_0 := _module.FailureCompatible.Extract(t#0);
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(141,12)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(t#0, Tclass._module.FailureCompatible(), $Heap);
        assert {:id "id9"} {:subsumption 0} _module.FailureCompatible.IsFailure#canCall(t#0)
           ==> _module.FailureCompatible.IsFailure(t#0)
             || _module.FailureCompatible.c(t#0) < 10;
        assume _module.FailureCompatible.IsFailure(t#0);
        assume _module.FailureCompatible.PropagateFailure#canCall(t#0);
        assume _module.FailureCompatible.PropagateFailure#canCall(t#0);
        pf#1_0 := _module.FailureCompatible.PropagateFailure(t#0);
    }
}



procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M()
   returns (r#0: Box
       where $IsBox(r#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(r#0, Tclass._module.FailureCompatible(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M (call)"} Call$$_module.__default.M()
   returns (r#0: Box
       where $IsBox(r#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(r#0, Tclass._module.FailureCompatible(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M()
   returns (r#0: Box
       where $IsBox(r#0, Tclass._module.FailureCompatible())
         && $IsAllocBox(r#0, Tclass._module.FailureCompatible(), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M() returns (r#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var r#1: Box;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(146,5)
    havoc r#1;
    if ($IsBox(r#1, Tclass._module.FailureCompatible())
       && $IsAllocBox(r#1, Tclass._module.FailureCompatible(), $Heap))
    {
        assume true;
    }

    assert {:id "id11"} Lit(true);
    havoc r#0;
    assume {:id "id12"} true;
}



const unique class._module.Opaque: ClassName;

function _module.Opaque.y(this: Box) : int
uses {
// Opaque.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: Box :: 
    { _module.Opaque.y($o) } 
    $IsBox($o, Tclass._module.Opaque()) ==> $Is(_module.Opaque.y($o), TInt));
// Opaque.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: Box :: 
    { _module.Opaque.y($o), $IsAllocBox($o, Tclass._module.Opaque(), $h) } 
    $IsGoodHeap($h)
         && $IsBox($o, Tclass._module.Opaque())
         && $IsAllocBox($o, Tclass._module.Opaque(), $h)
       ==> $IsAlloc(_module.Opaque.y($o), TInt, $h));
}

function Tclass._module.Opaque() : Ty
uses {
axiom $AlwaysAllocated(Tclass._module.Opaque());
}

function _module.Opaque.z(this: Box) : int
uses {
axiom (forall this: Box :: 
  { _module.Opaque.z(this): int } 
  _module.Opaque.z(this): int == LitInt(25));
// Opaque.z: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: Box :: 
    { _module.Opaque.z($o) } 
    $IsBox($o, Tclass._module.Opaque()) ==> $Is(_module.Opaque.z($o), TInt));
// Opaque.z: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: Box :: 
    { _module.Opaque.z($o), $IsAllocBox($o, Tclass._module.Opaque(), $h) } 
    $IsGoodHeap($h)
         && $IsBox($o, Tclass._module.Opaque())
         && $IsAllocBox($o, Tclass._module.Opaque(), $h)
       ==> $IsAlloc(_module.Opaque.z($o), TInt, $h));
}

procedure {:verboseName "Opaque.z (well-formedness)"} CheckWellFormed$$_module.Opaque.z(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Opaque.F
function _module.Opaque.F(this: Box) : int
uses {
// definition axiom for _module.Opaque.F (revealed)
axiom {:id "id13"} 1 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    { _module.Opaque.F(this) } 
    _module.Opaque.F#canCall(this)
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.Opaque()))
       ==> _module.Opaque.F(this) == _module.Opaque.z(this));
// definition axiom for _module.Opaque.F for all literals (revealed)
axiom {:id "id14"} 1 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    {:weight 3} { _module.Opaque.F(Lit(this)) } 
    _module.Opaque.F#canCall(Lit(this))
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.Opaque()))
       ==> _module.Opaque.F(Lit(this)) == _module.Opaque.z(Lit(this)));
}

function _module.Opaque.F#canCall(this: Box) : bool;

function _module.Opaque.F#requires(Box) : bool;

// #requires axiom for _module.Opaque.F
axiom (forall this: Box :: 
  { _module.Opaque.F#requires(this) } 
  $IsBox(this, Tclass._module.Opaque())
     ==> _module.Opaque.F#requires(this) == true);

procedure {:verboseName "Opaque.F (well-formedness)"} CheckWellformed$$_module.Opaque.F(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Opaque.G (well-formedness)"} CheckWellFormed$$_module.Opaque.G(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    a#0: int)
   returns (b#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Opaque.G (call)"} Call$$_module.Opaque.G(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    a#0: int)
   returns (b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Opaque.G (correctness)"} Impl$$_module.Opaque.G(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    a#0: int)
   returns (b#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Opaque.LemmaF25 (well-formedness)"} CheckWellFormed$$_module.Opaque.LemmaF25(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Opaque.LemmaF25 (call)"} Call$$_module.Opaque.LemmaF25(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id18"} _module.Opaque.z(this) == LitInt(25);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Opaque.LemmaF25 (correctness)"} Impl$$_module.Opaque.LemmaF25(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id19"} _module.Opaque.z(this) == LitInt(25);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Opaque.LemmaF25 (correctness)"} Impl$$_module.Opaque.LemmaF25(this: Box, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zz#0: int;

    // AddMethodImpl: LemmaF25, Impl$$_module.Opaque.LemmaF25
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(13,12)
    assume true;
    assume true;
    zz#0 := _module.Opaque.z(this) + _module.Opaque.y(this);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(14,5)
    assume true;
    assert {:id "id21"} zz#0 - _module.Opaque.y(this) == LitInt(25);
}



// function declaration for _module.Opaque.H
function _module.Opaque.H($prevHeap: Heap, $heap: Heap, this: Box, a#0: ref) : int
uses {
// definition axiom for _module.Opaque.H (revealed)
axiom {:id "id22"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
    { _module.Opaque.H($prevHeap, $Heap, this, a#0), $IsGoodHeap($Heap) } 
    _module.Opaque.H#canCall($prevHeap, $Heap, this, a#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $IsBox(this, Tclass._module.Opaque())
           && $IsAllocBox(this, Tclass._module.Opaque(), $prevHeap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.Opaque.H($prevHeap, $Heap, this, a#0)
         == (if _System.array.Length(a#0) == LitInt(100)
           then $Unbox(read($prevHeap, a#0, IndexField(LitInt(3)))): int
             + _module.Opaque.y(this)
             + 2
           else 0));
// definition axiom for _module.Opaque.H for decreasing-related literals (revealed)
axiom {:id "id23"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
    {:weight 3} { _module.Opaque.H($prevHeap, $Heap, this, Lit(a#0)), $IsGoodHeap($Heap) } 
    _module.Opaque.H#canCall($prevHeap, $Heap, this, Lit(a#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $IsBox(this, Tclass._module.Opaque())
           && $IsAllocBox(this, Tclass._module.Opaque(), $prevHeap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.Opaque.H($prevHeap, $Heap, this, Lit(a#0))
         == (if LitInt(_System.array.Length(Lit(a#0))) == LitInt(100)
           then $Unbox(read($prevHeap, Lit(a#0), IndexField(LitInt(3)))): int
             + _module.Opaque.y(this)
             + 2
           else 0));
// definition axiom for _module.Opaque.H for all literals (revealed)
axiom {:id "id24"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
    {:weight 3} { _module.Opaque.H($prevHeap, $Heap, Lit(this), Lit(a#0)), $IsGoodHeap($Heap) } 
    _module.Opaque.H#canCall($prevHeap, $Heap, Lit(this), Lit(a#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $IsBox(this, Tclass._module.Opaque())
           && $IsAllocBox(this, Tclass._module.Opaque(), $prevHeap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.Opaque.H($prevHeap, $Heap, Lit(this), Lit(a#0))
         == (if LitInt(_System.array.Length(Lit(a#0))) == LitInt(100)
           then $Unbox(read($prevHeap, Lit(a#0), IndexField(LitInt(3)))): int
             + _module.Opaque.y(Lit(this))
             + 2
           else 0));
}

function _module.Opaque.H#canCall($prevHeap: Heap, $heap: Heap, this: Box, a#0: ref) : bool;

// frame axiom for _module.Opaque.H
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: Box, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Opaque.H($prevHeap, $h1, this, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && $IsBox(this, Tclass._module.Opaque())
       && (_module.Opaque.H#canCall($prevHeap, $h0, this, a#0)
         || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> _module.Opaque.H($prevHeap, $h0, this, a#0)
       == _module.Opaque.H($prevHeap, $h1, this, a#0));

function _module.Opaque.H#requires(Heap, Heap, Box, ref) : bool;

// #requires axiom for _module.Opaque.H
axiom (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
  { _module.Opaque.H#requires($prevHeap, $Heap, this, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      $IsBox(this, Tclass._module.Opaque())
       && $IsAllocBox(this, Tclass._module.Opaque(), $prevHeap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.Opaque.H#requires($prevHeap, $Heap, this, a#0)
       == $IsAlloc(a#0, Tclass._System.array(TInt), $prevHeap));

procedure {:verboseName "Opaque.H (well-formedness)"} CheckWellformed$$_module.Opaque.H(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Opaque.H (well-formedness)"} CheckWellformed$$_module.Opaque.H(previous$Heap: Heap, current$Heap: Heap, this: Box, a#0: ref)
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
        assert {:id "id25"} a#0 != null;
        if (_System.array.Length(a#0) == LitInt(100))
        {
            assert {:id "id26"} a#0 != null;
            assert {:id "id27"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id28"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
            assume {:id "id29"} _module.Opaque.H(old($Heap), $Heap, this, a#0)
               == $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
                 + _module.Opaque.y(this)
                 + 2;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Opaque.H(old($Heap), $Heap, this, a#0), TInt);
            return;
        }
        else
        {
            assume {:id "id30"} _module.Opaque.H(old($Heap), $Heap, this, a#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Opaque.H(old($Heap), $Heap, this, a#0), TInt);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "Opaque.Two (well-formedness)"} CheckWellFormed$$_module.Opaque.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Opaque.Two (well-formedness)"} CheckWellFormed$$_module.Opaque.Two(previous$Heap: Heap, current$Heap: Heap, this: Box, a#0: ref) returns (u#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Two, CheckWellFormed$$_module.Opaque.Two
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id31"} a#0 != null;
    assume {:id "id32"} _System.array.Length(a#0) == LitInt(100);
    assert {:id "id33"} $IsAllocBox(this, Tclass._module.Opaque(), old($Heap));
    assert {:id "id34"} a#0 != null;
    assert {:id "id35"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id36"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume {:id "id37"} _module.Opaque.y(this)
         + $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
       == _module.Opaque.y(this);
    havoc u#0;
    assert {:id "id38"} a#0 != null;
    assert {:id "id39"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id40"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assert {:id "id41"} $IsAllocBox(this, Tclass._module.Opaque(), old($Heap));
    assume {:id "id42"} $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
         + _module.Opaque.y(this)
       == _module.Opaque.y(this);
}



procedure {:verboseName "Opaque.Two (call)"} Call$$_module.Opaque.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  // user-defined preconditions
  requires {:id "id43"} _System.array.Length(a#0) == LitInt(100);
  requires {:id "id44"} _module.Opaque.y(this)
       + $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
     == _module.Opaque.y(this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id45"} $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
       + _module.Opaque.y(this)
     == _module.Opaque.y(this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Opaque.Two (correctness)"} Impl$$_module.Opaque.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  // user-defined preconditions
  requires {:id "id46"} _System.array.Length(a#0) == LitInt(100);
  requires {:id "id47"} _module.Opaque.y(this)
       + $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
     == _module.Opaque.y(this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id48"} $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
       + _module.Opaque.y(this)
     == _module.Opaque.y(this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Opaque.Two (correctness)"} Impl$$_module.Opaque.Two(previous$Heap: Heap, current$Heap: Heap, this: Box, a#0: ref)
   returns (u#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#0: int;
  var u'#0: int;
  var f'#0: int;

    // AddMethodImpl: Two, Impl$$_module.Opaque.Two
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(25,7)
    assume true;
    assert {:id "id49"} $IsAllocBox(this, Tclass._module.Opaque(), old($Heap));
    assert {:id "id50"} a#0 != null;
    assert {:id "id51"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id52"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume true;
    u#0 := _module.Opaque.y(this)
       + $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(26,11)
    assume true;
    assert {:id "id54"} $IsAllocBox(this, Tclass._module.Opaque(), old($Heap));
    assume _module.Opaque.F#canCall(this);
    assume _module.Opaque.F#canCall(this);
    f#0 := _module.Opaque.F(this);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(27,12)
    assume true;
    assert {:id "id56"} a#0 != null;
    assert {:id "id57"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume true;
    u'#0 := _module.Opaque.y(this) + $Unbox(read($Heap, a#0, IndexField(LitInt(3)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(28,12)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(this, Tclass._module.Opaque(), $Heap);
    assume _module.Opaque.F#canCall(this);
    assume _module.Opaque.F#canCall(this);
    f'#0 := _module.Opaque.F(this);
}



// function declaration for _module.Opaque.Q
function _module.Opaque.Q($ly: LayerType, this: Box, u#0: int) : bool
uses {
// definition axiom for _module.Opaque.Q (revealed)
axiom {:id "id60"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int :: 
    { _module.Opaque.Q($LS($ly), this, u#0) } 
    _module.Opaque.Q#canCall(this, u#0)
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.Opaque()))
       ==> (20 <= _module.Opaque.y(this) + _module.Opaque.z(this)
           ==> _module.Opaque.Q#canCall(this, u#0 + 1))
         && _module.Opaque.Q($LS($ly), this, u#0)
           == (_module.Opaque.y(this) + _module.Opaque.z(this) < 20
             || _module.Opaque.Q($ly, this, u#0 + 1)));
}

function _module.Opaque.Q#canCall(this: Box, u#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: Box, u#0: int :: 
  { _module.Opaque.Q($LS($ly), this, u#0) } 
  _module.Opaque.Q($LS($ly), this, u#0) == _module.Opaque.Q($ly, this, u#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: Box, u#0: int :: 
  { _module.Opaque.Q(AsFuelBottom($ly), this, u#0) } 
  _module.Opaque.Q($ly, this, u#0) == _module.Opaque.Q($LZ, this, u#0));

function _module.Opaque.Q#requires(LayerType, Box, int) : bool;

// #requires axiom for _module.Opaque.Q
axiom (forall $ly: LayerType, this: Box, u#0: int :: 
  { _module.Opaque.Q#requires($ly, this, u#0) } 
  $IsBox(this, Tclass._module.Opaque())
     ==> _module.Opaque.Q#requires($ly, this, u#0) == true);

// 1st prefix predicate axiom for _module.Opaque.Q_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int :: 
    { _module.Opaque.Q($LS($ly), this, u#0) } 
    $IsBox(this, Tclass._module.Opaque()) && _module.Opaque.Q($LS($ly), this, u#0)
       ==> (exists _k#0: Box :: 
        { _module.Opaque.Q_h($LS($ly), this, _k#0, u#0) } 
        _module.Opaque.Q_h($LS($ly), this, _k#0, u#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int :: 
    { _module.Opaque.Q($LS($ly), this, u#0) } 
    $IsBox(this, Tclass._module.Opaque())
         && (exists _k#0: Box :: 
          { _module.Opaque.Q_h($LS($ly), this, _k#0, u#0) } 
          _module.Opaque.Q_h($LS($ly), this, _k#0, u#0))
       ==> _module.Opaque.Q($LS($ly), this, u#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int, _k#0: Box :: 
    { _module.Opaque.Q_h($ly, this, _k#0, u#0) } 
    $IsBox(this, Tclass._module.Opaque()) && _k#0 == ORD#FromNat(0)
       ==> !_module.Opaque.Q_h($ly, this, _k#0, u#0));

// targeted prefix predicate monotonicity axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int, _k#0: Box, _m: Box, _limit: Box :: 
    { _module.Opaque.Q_h($ly, this, _k#0, u#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.Opaque.Q_h($ly, this, _k#0, u#0)
       ==> _module.Opaque.Q_h($ly, this, _m, u#0));

procedure {:verboseName "Opaque.Q (well-formedness)"} CheckWellformed$$_module.Opaque.Q(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    u#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Opaque.Q#
function _module.Opaque.Q_h($ly: LayerType, this: Box, _k#0: Box, u#0: int) : bool
uses {
// definition axiom for _module.Opaque.Q_h (revealed)
axiom {:id "id62"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
    { _module.Opaque.Q_h($LS($ly), this, _k#0, u#0) } 
    _module.Opaque.Q_h#canCall(this, _k#0, u#0)
         || (2 < $FunctionContextHeight && $IsBox(this, Tclass._module.Opaque()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= _module.Opaque.y(this) + _module.Opaque.z(this)
           ==> _module.Opaque.Q_h#canCall(this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20
             || _module.Opaque.Q_h($ly, this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.Opaque.Q_h($ly, this, _k'#0, u#0) } 
            ORD#LessThanLimit(_k'#0, _k#0) ==> _module.Opaque.Q_h#canCall(this, _k'#0, u#0)))
         && _module.Opaque.Q_h($LS($ly), this, _k#0, u#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20
                 || _module.Opaque.Q_h($ly, this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#0: Box :: 
                { _module.Opaque.Q_h($ly, this, _k'#0, u#0) } 
                ORD#LessThanLimit(_k'#0, _k#0) && _module.Opaque.Q_h($ly, this, _k'#0, u#0)))));
// definition axiom for _module.Opaque.Q_h for decreasing-related literals (revealed)
axiom {:id "id63"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
    {:weight 3} { _module.Opaque.Q_h($LS($ly), this, Lit(_k#0), u#0) } 
    _module.Opaque.Q_h#canCall(this, Lit(_k#0), u#0)
         || (2 < $FunctionContextHeight && $IsBox(this, Tclass._module.Opaque()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= _module.Opaque.y(this) + _module.Opaque.z(this)
           ==> _module.Opaque.Q_h#canCall(this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20
             || _module.Opaque.Q_h($LS($ly), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.Opaque.Q_h($LS($ly), this, _k'#1, u#0) } 
            ORD#LessThanLimit(_k'#1, _k#0) ==> _module.Opaque.Q_h#canCall(this, _k'#1, u#0)))
         && _module.Opaque.Q_h($LS($ly), this, Lit(_k#0), u#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20
                 || _module.Opaque.Q_h($LS($ly), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#1: Box :: 
                { _module.Opaque.Q_h($LS($ly), this, _k'#1, u#0) } 
                ORD#LessThanLimit(_k'#1, _k#0) && _module.Opaque.Q_h($LS($ly), this, _k'#1, u#0)))));
// definition axiom for _module.Opaque.Q_h for all literals (revealed)
axiom {:id "id64"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
    {:weight 3} { _module.Opaque.Q_h($LS($ly), Lit(this), Lit(_k#0), LitInt(u#0)) } 
    _module.Opaque.Q_h#canCall(Lit(this), Lit(_k#0), LitInt(u#0))
         || (2 < $FunctionContextHeight && $IsBox(this, Tclass._module.Opaque()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= _module.Opaque.y(Lit(this)) + _module.Opaque.z(Lit(this))
           ==> _module.Opaque.Q_h#canCall(Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.Opaque.y(Lit(this)) + _module.Opaque.z(Lit(this)) < 20
             || _module.Opaque.Q_h($LS($ly), Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.Opaque.Q_h($LS($ly), this, _k'#2, u#0) } 
            ORD#LessThanLimit(_k'#2, _k#0) ==> _module.Opaque.Q_h#canCall(this, _k'#2, u#0)))
         && _module.Opaque.Q_h($LS($ly), Lit(this), Lit(_k#0), LitInt(u#0))
           == ((0 < ORD#Offset(_k#0)
               ==> _module.Opaque.y(Lit(this)) + _module.Opaque.z(Lit(this)) < 20
                 || _module.Opaque.Q_h($LS($ly), Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#2: Box :: 
                { _module.Opaque.Q_h($LS($ly), this, _k'#2, u#0) } 
                ORD#LessThanLimit(_k'#2, _k#0) && _module.Opaque.Q_h($LS($ly), this, _k'#2, u#0)))));
}

function _module.Opaque.Q_h#canCall(this: Box, _k#0: Box, u#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
  { _module.Opaque.Q_h($LS($ly), this, _k#0, u#0) } 
  _module.Opaque.Q_h($LS($ly), this, _k#0, u#0)
     == _module.Opaque.Q_h($ly, this, _k#0, u#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
  { _module.Opaque.Q_h(AsFuelBottom($ly), this, _k#0, u#0) } 
  _module.Opaque.Q_h($ly, this, _k#0, u#0)
     == _module.Opaque.Q_h($LZ, this, _k#0, u#0));

function _module.Opaque.Q_h#requires(LayerType, Box, Box, int) : bool;

// #requires axiom for _module.Opaque.Q_h
axiom (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
  { _module.Opaque.Q_h#requires($ly, this, _k#0, u#0) } 
  $IsBox(this, Tclass._module.Opaque())
     ==> _module.Opaque.Q_h#requires($ly, this, _k#0, u#0) == true);

procedure {:verboseName "Opaque.QL (well-formedness)"} CheckWellFormed$$_module.Opaque.QL(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    u#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Opaque.QL (call)"} Call$$_module.Opaque.QL(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    u#0: int);
  // user-defined preconditions
  requires {:id "id67"} _module.Opaque.Q#canCall(this, u#0)
     ==> _module.Opaque.Q($LS($LZ), this, u#0)
       || 
      _module.Opaque.y(this) + _module.Opaque.z(this) < 20
       || _module.Opaque.Q($LS($LS($LZ)), this, u#0 + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id68"} _module.Opaque.y(this) + _module.Opaque.z(this) < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Opaque.QL# (co-call)"} CoCall$$_module.Opaque.QL_h(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    _k#0: Box, 
    u#1: int);
  // user-defined preconditions
  requires {:id "id69"} _module.Opaque.Q_h#canCall(this, _k#0, u#1)
     ==> _module.Opaque.Q_h($LS($LZ), this, _k#0, u#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20
           || _module.Opaque.Q_h($LS($LS($LZ)), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#1 + 1));
  requires {:id "id70"} _module.Opaque.Q_h#canCall(this, _k#0, u#1)
     ==> _module.Opaque.Q_h($LS($LZ), this, _k#0, u#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.Opaque.Q_h($LS($LZ), this, _k'#0, u#1) } 
          ORD#LessThanLimit(_k'#0, _k#0) && _module.Opaque.Q_h($LS($LZ), this, _k'#0, u#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id71"} _module.Opaque.y(this) + _module.Opaque.z(this) < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Opaque.QL# (correctness)"} Impl$$_module.Opaque.QL_h(this: Box
       where $IsBox(this, Tclass._module.Opaque())
         && $IsAllocBox(this, Tclass._module.Opaque(), $Heap), 
    _k#0: Box, 
    u#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id72"} _module.Opaque.Q_h#canCall(this, _k#0, u#1)
     && 
    _module.Opaque.Q_h($LS($LZ), this, _k#0, u#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20
         || _module.Opaque.Q_h($LS($LZ), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#1 + 1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.Opaque.Q_h($LS($LZ), this, _k'#1, u#1) } 
        ORD#LessThanLimit(_k'#1, _k#0) && _module.Opaque.Q_h($LS($LZ), this, _k'#1, u#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id73"} _module.Opaque.y(this) + _module.Opaque.z(this) < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Opaque.QL# (correctness)"} Impl$$_module.Opaque.QL_h(this: Box, _k#0: Box, u#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var w#0: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: QL#, Impl$$_module.Opaque.QL_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#u0#0: int :: 
      { _module.Opaque.Q_h($LS($LZ), this, $ih#_k0#0, $ih#u0#0) } 
      _module.Opaque.Q_h($LS($LZ), this, $ih#_k0#0, $ih#u0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#u0#0 && $ih#u0#0 < u#1))
         ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(37,3)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(38,11)
        assume true;
        assume true;
        w#0 := _module.Opaque.y(this) + _module.Opaque.z(this);
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(37,3)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, u#2: int :: 
          { _module.Opaque.Q_h($LS($LZ), this, _k'#2, u#2) } 
          ORD#Less(_k'#2, _k#0) && _module.Opaque.Q_h($LS($LZ), this, _k'#2, u#2)
             ==> _module.Opaque.y(this) + _module.Opaque.z(this) < 20);
    }
}



const unique class._module.StaticOpaque: ClassName;

function _module.StaticOpaque.y() : int
uses {
// StaticOpaque.y: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.StaticOpaque.y(), TInt);
}

// StaticOpaque.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.StaticOpaque.y(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.StaticOpaque.y(), TInt, $h));

function _module.StaticOpaque.z() : int
uses {
axiom _module.StaticOpaque.z(): int == LitInt(25);
// StaticOpaque.z: Type axiom
axiom 0 < $FunctionContextHeight ==> $Is(_module.StaticOpaque.z(), TInt);
}

procedure {:verboseName "StaticOpaque.z (well-formedness)"} CheckWellFormed$$_module.StaticOpaque.z();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// StaticOpaque.z: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.StaticOpaque.z(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(_module.StaticOpaque.z(), TInt, $h));

// function declaration for _module.StaticOpaque.F
function _module.StaticOpaque.F() : int
uses {
// definition axiom for _module.StaticOpaque.F (revealed)
axiom {:id "id75"} 1 <= $FunctionContextHeight
   ==> 
  _module.StaticOpaque.F#canCall() || 1 < $FunctionContextHeight
   ==> _module.StaticOpaque.F() == _module.StaticOpaque.z();
// definition axiom for _module.StaticOpaque.F for all literals (revealed)
axiom {:id "id76"} 1 <= $FunctionContextHeight
   ==> 
  _module.StaticOpaque.F#canCall() || 1 < $FunctionContextHeight
   ==> _module.StaticOpaque.F() == _module.StaticOpaque.z();
}

function _module.StaticOpaque.F#canCall() : bool;

function _module.StaticOpaque.F#requires() : bool
uses {
// #requires axiom for _module.StaticOpaque.F
axiom _module.StaticOpaque.F#requires() == true;
}

procedure {:verboseName "StaticOpaque.F (well-formedness)"} CheckWellformed$$_module.StaticOpaque.F();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StaticOpaque.G (well-formedness)"} CheckWellFormed$$_module.StaticOpaque.G(a#0: int) returns (b#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StaticOpaque.G (call)"} Call$$_module.StaticOpaque.G(a#0: int) returns (b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StaticOpaque.G (correctness)"} Impl$$_module.StaticOpaque.G(a#0: int) returns (b#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "StaticOpaque.LemmaF25 (well-formedness)"} CheckWellFormed$$_module.StaticOpaque.LemmaF25(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StaticOpaque.LemmaF25 (call)"} Call$$_module.StaticOpaque.LemmaF25(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id80"} _module.StaticOpaque.z() == LitInt(25);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "StaticOpaque.LemmaF25 (correctness)"} Impl$$_module.StaticOpaque.LemmaF25(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id81"} _module.StaticOpaque.z() == LitInt(25);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StaticOpaque.LemmaF25 (correctness)"} Impl$$_module.StaticOpaque.LemmaF25(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var zz#0: int;

    // AddMethodImpl: LemmaF25, Impl$$_module.StaticOpaque.LemmaF25
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(51,12)
    assume true;
    assume true;
    zz#0 := _module.StaticOpaque.z() + _module.StaticOpaque.y();
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(52,5)
    assume true;
    assert {:id "id83"} zz#0 - _module.StaticOpaque.y() == LitInt(25);
}



// function declaration for _module.StaticOpaque.H
function _module.StaticOpaque.H($prevHeap: Heap, $heap: Heap, a#0: ref) : int
uses {
// definition axiom for _module.StaticOpaque.H (revealed)
axiom {:id "id84"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, a#0: ref :: 
    { _module.StaticOpaque.H($prevHeap, $Heap, a#0), $IsGoodHeap($Heap) } 
    _module.StaticOpaque.H#canCall($prevHeap, $Heap, a#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.StaticOpaque.H($prevHeap, $Heap, a#0)
         == (if _System.array.Length(a#0) == LitInt(100)
           then $Unbox(read($prevHeap, a#0, IndexField(LitInt(3)))): int
             + _module.StaticOpaque.y()
             + 2
           else 0));
// definition axiom for _module.StaticOpaque.H for all literals (revealed)
axiom {:id "id85"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, a#0: ref :: 
    {:weight 3} { _module.StaticOpaque.H($prevHeap, $Heap, Lit(a#0)), $IsGoodHeap($Heap) } 
    _module.StaticOpaque.H#canCall($prevHeap, $Heap, Lit(a#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.StaticOpaque.H($prevHeap, $Heap, Lit(a#0))
         == (if LitInt(_System.array.Length(Lit(a#0))) == LitInt(100)
           then $Unbox(read($prevHeap, Lit(a#0), IndexField(LitInt(3)))): int
             + _module.StaticOpaque.y()
             + 2
           else 0));
}

function _module.StaticOpaque.H#canCall($prevHeap: Heap, $heap: Heap, a#0: ref) : bool;

// frame axiom for _module.StaticOpaque.H
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.StaticOpaque.H($prevHeap, $h1, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.StaticOpaque.H#canCall($prevHeap, $h0, a#0)
         || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> _module.StaticOpaque.H($prevHeap, $h0, a#0)
       == _module.StaticOpaque.H($prevHeap, $h1, a#0));

function _module.StaticOpaque.H#requires(Heap, Heap, ref) : bool;

// #requires axiom for _module.StaticOpaque.H
axiom (forall $prevHeap: Heap, $Heap: Heap, a#0: ref :: 
  { _module.StaticOpaque.H#requires($prevHeap, $Heap, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.StaticOpaque.H#requires($prevHeap, $Heap, a#0)
       == $IsAlloc(a#0, Tclass._System.array(TInt), $prevHeap));

procedure {:verboseName "StaticOpaque.H (well-formedness)"} CheckWellformed$$_module.StaticOpaque.H(previous$Heap: Heap, 
    current$Heap: Heap, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StaticOpaque.H (well-formedness)"} CheckWellformed$$_module.StaticOpaque.H(previous$Heap: Heap, current$Heap: Heap, a#0: ref)
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
        assert {:id "id86"} a#0 != null;
        if (_System.array.Length(a#0) == LitInt(100))
        {
            assert {:id "id87"} a#0 != null;
            assert {:id "id88"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id89"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
            assume {:id "id90"} _module.StaticOpaque.H(old($Heap), $Heap, a#0)
               == $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
                 + _module.StaticOpaque.y()
                 + 2;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.StaticOpaque.H(old($Heap), $Heap, a#0), TInt);
            return;
        }
        else
        {
            assume {:id "id91"} _module.StaticOpaque.H(old($Heap), $Heap, a#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.StaticOpaque.H(old($Heap), $Heap, a#0), TInt);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "StaticOpaque.Two (well-formedness)"} CheckWellFormed$$_module.StaticOpaque.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StaticOpaque.Two (well-formedness)"} CheckWellFormed$$_module.StaticOpaque.Two(previous$Heap: Heap, current$Heap: Heap, a#0: ref) returns (u#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Two, CheckWellFormed$$_module.StaticOpaque.Two
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id92"} a#0 != null;
    assume {:id "id93"} _System.array.Length(a#0) == LitInt(100);
    assert {:id "id94"} a#0 != null;
    assert {:id "id95"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id96"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume {:id "id97"} _module.StaticOpaque.y()
         + $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
       == _module.StaticOpaque.y();
    havoc u#0;
    assert {:id "id98"} a#0 != null;
    assert {:id "id99"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id100"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume {:id "id101"} $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
         + _module.StaticOpaque.y()
       == _module.StaticOpaque.y();
}



procedure {:verboseName "StaticOpaque.Two (call)"} Call$$_module.StaticOpaque.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  // user-defined preconditions
  requires {:id "id102"} _System.array.Length(a#0) == LitInt(100);
  requires {:id "id103"} _module.StaticOpaque.y()
       + $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
     == _module.StaticOpaque.y();
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id104"} $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
       + _module.StaticOpaque.y()
     == _module.StaticOpaque.y();
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "StaticOpaque.Two (correctness)"} Impl$$_module.StaticOpaque.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  // user-defined preconditions
  requires {:id "id105"} _System.array.Length(a#0) == LitInt(100);
  requires {:id "id106"} _module.StaticOpaque.y()
       + $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
     == _module.StaticOpaque.y();
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id107"} $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
       + _module.StaticOpaque.y()
     == _module.StaticOpaque.y();
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StaticOpaque.Two (correctness)"} Impl$$_module.StaticOpaque.Two(previous$Heap: Heap, current$Heap: Heap, a#0: ref)
   returns (u#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#0: int;
  var u'#0: int;
  var f'#0: int;

    // AddMethodImpl: Two, Impl$$_module.StaticOpaque.Two
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(63,7)
    assume true;
    assert {:id "id108"} a#0 != null;
    assert {:id "id109"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id110"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume true;
    u#0 := _module.StaticOpaque.y()
       + $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(64,11)
    assume true;
    assume _module.StaticOpaque.F#canCall();
    assume _module.StaticOpaque.F#canCall();
    f#0 := LitInt(_module.StaticOpaque.F());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(65,12)
    assume true;
    assert {:id "id113"} a#0 != null;
    assert {:id "id114"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume true;
    u'#0 := _module.StaticOpaque.y() + $Unbox(read($Heap, a#0, IndexField(LitInt(3)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(66,12)
    assume true;
    assume _module.StaticOpaque.F#canCall();
    assume _module.StaticOpaque.F#canCall();
    f'#0 := LitInt(_module.StaticOpaque.F());
}



// function declaration for _module.StaticOpaque.Q
function _module.StaticOpaque.Q($ly: LayerType, u#0: int) : bool
uses {
// definition axiom for _module.StaticOpaque.Q (revealed)
axiom {:id "id117"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, u#0: int :: 
    { _module.StaticOpaque.Q($LS($ly), u#0) } 
    _module.StaticOpaque.Q#canCall(u#0) || 1 < $FunctionContextHeight
       ==> (20 <= _module.StaticOpaque.y() + _module.StaticOpaque.z()
           ==> _module.StaticOpaque.Q#canCall(u#0 + 1))
         && _module.StaticOpaque.Q($LS($ly), u#0)
           == (_module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
             || _module.StaticOpaque.Q($ly, u#0 + 1)));
}

function _module.StaticOpaque.Q#canCall(u#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, u#0: int :: 
  { _module.StaticOpaque.Q($LS($ly), u#0) } 
  _module.StaticOpaque.Q($LS($ly), u#0) == _module.StaticOpaque.Q($ly, u#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, u#0: int :: 
  { _module.StaticOpaque.Q(AsFuelBottom($ly), u#0) } 
  _module.StaticOpaque.Q($ly, u#0) == _module.StaticOpaque.Q($LZ, u#0));

function _module.StaticOpaque.Q#requires(LayerType, int) : bool;

// #requires axiom for _module.StaticOpaque.Q
axiom (forall $ly: LayerType, u#0: int :: 
  { _module.StaticOpaque.Q#requires($ly, u#0) } 
  _module.StaticOpaque.Q#requires($ly, u#0) == true);

// 1st prefix predicate axiom for _module.StaticOpaque.Q_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, u#0: int :: 
    { _module.StaticOpaque.Q($LS($ly), u#0) } 
    _module.StaticOpaque.Q($LS($ly), u#0)
       ==> (exists _k#0: Box :: 
        { _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0) } 
        _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, u#0: int :: 
    { _module.StaticOpaque.Q($LS($ly), u#0) } 
    (exists _k#0: Box :: 
        { _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0) } 
        _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0))
       ==> _module.StaticOpaque.Q($LS($ly), u#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, u#0: int, _k#0: Box :: 
    { _module.StaticOpaque.Q_h($ly, _k#0, u#0) } 
    _k#0 == ORD#FromNat(0) ==> !_module.StaticOpaque.Q_h($ly, _k#0, u#0));

// targeted prefix predicate monotonicity axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, u#0: int, _k#0: Box, _m: Box, _limit: Box :: 
    { _module.StaticOpaque.Q_h($ly, _k#0, u#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.StaticOpaque.Q_h($ly, _k#0, u#0)
       ==> _module.StaticOpaque.Q_h($ly, _m, u#0));

procedure {:verboseName "StaticOpaque.Q (well-formedness)"} CheckWellformed$$_module.StaticOpaque.Q(u#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.StaticOpaque.Q#
function _module.StaticOpaque.Q_h($ly: LayerType, _k#0: Box, u#0: int) : bool
uses {
// definition axiom for _module.StaticOpaque.Q_h (revealed)
axiom {:id "id119"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, u#0: int :: 
    { _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0) } 
    _module.StaticOpaque.Q_h#canCall(_k#0, u#0) || 2 < $FunctionContextHeight
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= _module.StaticOpaque.y() + _module.StaticOpaque.z()
           ==> _module.StaticOpaque.Q_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
             || _module.StaticOpaque.Q_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.StaticOpaque.Q_h($ly, _k'#0, u#0) } 
            ORD#LessThanLimit(_k'#0, _k#0) ==> _module.StaticOpaque.Q_h#canCall(_k'#0, u#0)))
         && _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
                 || _module.StaticOpaque.Q_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#0: Box :: 
                { _module.StaticOpaque.Q_h($ly, _k'#0, u#0) } 
                ORD#LessThanLimit(_k'#0, _k#0) && _module.StaticOpaque.Q_h($ly, _k'#0, u#0)))));
// definition axiom for _module.StaticOpaque.Q_h for decreasing-related literals (revealed)
axiom {:id "id120"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, u#0: int :: 
    {:weight 3} { _module.StaticOpaque.Q_h($LS($ly), Lit(_k#0), u#0) } 
    _module.StaticOpaque.Q_h#canCall(Lit(_k#0), u#0) || 2 < $FunctionContextHeight
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= _module.StaticOpaque.y() + _module.StaticOpaque.z()
           ==> _module.StaticOpaque.Q_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
             || _module.StaticOpaque.Q_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.StaticOpaque.Q_h($LS($ly), _k'#1, u#0) } 
            ORD#LessThanLimit(_k'#1, _k#0) ==> _module.StaticOpaque.Q_h#canCall(_k'#1, u#0)))
         && _module.StaticOpaque.Q_h($LS($ly), Lit(_k#0), u#0)
           == ((0 < ORD#Offset(_k#0)
               ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
                 || _module.StaticOpaque.Q_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#1: Box :: 
                { _module.StaticOpaque.Q_h($LS($ly), _k'#1, u#0) } 
                ORD#LessThanLimit(_k'#1, _k#0) && _module.StaticOpaque.Q_h($LS($ly), _k'#1, u#0)))));
// definition axiom for _module.StaticOpaque.Q_h for all literals (revealed)
axiom {:id "id121"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, u#0: int :: 
    {:weight 3} { _module.StaticOpaque.Q_h($LS($ly), Lit(_k#0), LitInt(u#0)) } 
    _module.StaticOpaque.Q_h#canCall(Lit(_k#0), LitInt(u#0))
         || 2 < $FunctionContextHeight
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= _module.StaticOpaque.y() + _module.StaticOpaque.z()
           ==> _module.StaticOpaque.Q_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
             || _module.StaticOpaque.Q_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.StaticOpaque.Q_h($LS($ly), _k'#2, u#0) } 
            ORD#LessThanLimit(_k'#2, _k#0) ==> _module.StaticOpaque.Q_h#canCall(_k'#2, u#0)))
         && _module.StaticOpaque.Q_h($LS($ly), Lit(_k#0), LitInt(u#0))
           == ((0 < ORD#Offset(_k#0)
               ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
                 || _module.StaticOpaque.Q_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#2: Box :: 
                { _module.StaticOpaque.Q_h($LS($ly), _k'#2, u#0) } 
                ORD#LessThanLimit(_k'#2, _k#0) && _module.StaticOpaque.Q_h($LS($ly), _k'#2, u#0)))));
}

function _module.StaticOpaque.Q_h#canCall(_k#0: Box, u#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, u#0: int :: 
  { _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0) } 
  _module.StaticOpaque.Q_h($LS($ly), _k#0, u#0)
     == _module.StaticOpaque.Q_h($ly, _k#0, u#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, u#0: int :: 
  { _module.StaticOpaque.Q_h(AsFuelBottom($ly), _k#0, u#0) } 
  _module.StaticOpaque.Q_h($ly, _k#0, u#0)
     == _module.StaticOpaque.Q_h($LZ, _k#0, u#0));

function _module.StaticOpaque.Q_h#requires(LayerType, Box, int) : bool;

// #requires axiom for _module.StaticOpaque.Q_h
axiom (forall $ly: LayerType, _k#0: Box, u#0: int :: 
  { _module.StaticOpaque.Q_h#requires($ly, _k#0, u#0) } 
  _module.StaticOpaque.Q_h#requires($ly, _k#0, u#0) == true);

procedure {:verboseName "StaticOpaque.QL (well-formedness)"} CheckWellFormed$$_module.StaticOpaque.QL(u#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "StaticOpaque.QL (call)"} Call$$_module.StaticOpaque.QL(u#0: int);
  // user-defined preconditions
  requires {:id "id124"} _module.StaticOpaque.Q#canCall(u#0)
     ==> _module.StaticOpaque.Q($LS($LZ), u#0)
       || 
      _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
       || _module.StaticOpaque.Q($LS($LS($LZ)), u#0 + 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id125"} _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "StaticOpaque.QL# (co-call)"} CoCall$$_module.StaticOpaque.QL_h(_k#0: Box, u#1: int);
  // user-defined preconditions
  requires {:id "id126"} _module.StaticOpaque.Q_h#canCall(_k#0, u#1)
     ==> _module.StaticOpaque.Q_h($LS($LZ), _k#0, u#1)
       || (0 < ORD#Offset(_k#0)
         ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
           || _module.StaticOpaque.Q_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), u#1 + 1));
  requires {:id "id127"} _module.StaticOpaque.Q_h#canCall(_k#0, u#1)
     ==> _module.StaticOpaque.Q_h($LS($LZ), _k#0, u#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.StaticOpaque.Q_h($LS($LZ), _k'#0, u#1) } 
          ORD#LessThanLimit(_k'#0, _k#0) && _module.StaticOpaque.Q_h($LS($LZ), _k'#0, u#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id128"} _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "StaticOpaque.QL# (correctness)"} Impl$$_module.StaticOpaque.QL_h(_k#0: Box, u#1: int) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id129"} _module.StaticOpaque.Q_h#canCall(_k#0, u#1)
     && 
    _module.StaticOpaque.Q_h($LS($LZ), _k#0, u#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20
         || _module.StaticOpaque.Q_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), u#1 + 1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.StaticOpaque.Q_h($LS($LZ), _k'#1, u#1) } 
        ORD#LessThanLimit(_k'#1, _k#0) && _module.StaticOpaque.Q_h($LS($LZ), _k'#1, u#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id130"} _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "StaticOpaque.QL# (correctness)"} Impl$$_module.StaticOpaque.QL_h(_k#0: Box, u#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var w#0: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: QL#, Impl$$_module.StaticOpaque.QL_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#u0#0: int :: 
      { _module.StaticOpaque.Q_h($LS($LZ), $ih#_k0#0, $ih#u0#0) } 
      _module.StaticOpaque.Q_h($LS($LZ), $ih#_k0#0, $ih#u0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#u0#0 && $ih#u0#0 < u#1))
         ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(75,3)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(76,11)
        assume true;
        assume true;
        w#0 := _module.StaticOpaque.y() + _module.StaticOpaque.z();
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(75,3)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, u#2: int :: 
          { _module.StaticOpaque.Q_h($LS($LZ), _k'#2, u#2) } 
          ORD#Less(_k'#2, _k#0) && _module.StaticOpaque.Q_h($LS($LZ), _k'#2, u#2)
             ==> _module.StaticOpaque.y() + _module.StaticOpaque.z() < 20);
    }
}



const unique class._module.OpaqueErrors: ClassName;

function _module.OpaqueErrors.y(this: Box) : int
uses {
// OpaqueErrors.y: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: Box :: 
    { _module.OpaqueErrors.y($o) } 
    $IsBox($o, Tclass._module.OpaqueErrors())
       ==> $Is(_module.OpaqueErrors.y($o), TInt));
// OpaqueErrors.y: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: Box :: 
    { _module.OpaqueErrors.y($o), $IsAllocBox($o, Tclass._module.OpaqueErrors(), $h) } 
    $IsGoodHeap($h)
         && $IsBox($o, Tclass._module.OpaqueErrors())
         && $IsAllocBox($o, Tclass._module.OpaqueErrors(), $h)
       ==> $IsAlloc(_module.OpaqueErrors.y($o), TInt, $h));
}

function Tclass._module.OpaqueErrors() : Ty
uses {
axiom $AlwaysAllocated(Tclass._module.OpaqueErrors());
}

function _module.OpaqueErrors.z(this: Box) : int
uses {
axiom (forall this: Box :: 
  { _module.OpaqueErrors.z(this): int } 
  _module.OpaqueErrors.z(this): int == LitInt(25));
// OpaqueErrors.z: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: Box :: 
    { _module.OpaqueErrors.z($o) } 
    $IsBox($o, Tclass._module.OpaqueErrors())
       ==> $Is(_module.OpaqueErrors.z($o), TInt));
// OpaqueErrors.z: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: Box :: 
    { _module.OpaqueErrors.z($o), $IsAllocBox($o, Tclass._module.OpaqueErrors(), $h) } 
    $IsGoodHeap($h)
         && $IsBox($o, Tclass._module.OpaqueErrors())
         && $IsAllocBox($o, Tclass._module.OpaqueErrors(), $h)
       ==> $IsAlloc(_module.OpaqueErrors.z($o), TInt, $h));
}

procedure {:verboseName "OpaqueErrors.z (well-formedness)"} CheckWellFormed$$_module.OpaqueErrors.z(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.OpaqueErrors.F
function _module.OpaqueErrors.F(this: Box) : int
uses {
// definition axiom for _module.OpaqueErrors.F (revealed)
axiom {:id "id132"} 1 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    { _module.OpaqueErrors.F(this) } 
    _module.OpaqueErrors.F#canCall(this)
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.OpaqueErrors()))
       ==> _module.OpaqueErrors.F(this)
         == Div(100, _module.OpaqueErrors.z(this)) + Div(100, _module.OpaqueErrors.y(this)));
// definition axiom for _module.OpaqueErrors.F for all literals (revealed)
axiom {:id "id133"} 1 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    {:weight 3} { _module.OpaqueErrors.F(Lit(this)) } 
    _module.OpaqueErrors.F#canCall(Lit(this))
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.OpaqueErrors()))
       ==> _module.OpaqueErrors.F(Lit(this))
         == Div(100, _module.OpaqueErrors.z(Lit(this)))
           + Div(100, _module.OpaqueErrors.y(Lit(this))));
}

function _module.OpaqueErrors.F#canCall(this: Box) : bool;

function _module.OpaqueErrors.F#requires(Box) : bool;

// #requires axiom for _module.OpaqueErrors.F
axiom (forall this: Box :: 
  { _module.OpaqueErrors.F#requires(this) } 
  $IsBox(this, Tclass._module.OpaqueErrors())
     ==> _module.OpaqueErrors.F#requires(this) == true);

procedure {:verboseName "OpaqueErrors.F (well-formedness)"} CheckWellformed$$_module.OpaqueErrors.F(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.F (well-formedness)"} CheckWellformed$$_module.OpaqueErrors.F(this: Box)
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
        assert {:id "id134"} _module.OpaqueErrors.z(this) != 0;
        assert {:id "id135"} _module.OpaqueErrors.y(this) != 0;
        assume {:id "id136"} _module.OpaqueErrors.F(this)
           == Div(100, _module.OpaqueErrors.z(this)) + Div(100, _module.OpaqueErrors.y(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.OpaqueErrors.F(this), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "OpaqueErrors.G (well-formedness)"} CheckWellFormed$$_module.OpaqueErrors.G(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    a#0: int)
   returns (b#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OpaqueErrors.G (call)"} Call$$_module.OpaqueErrors.G(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    a#0: int)
   returns (b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OpaqueErrors.G (correctness)"} Impl$$_module.OpaqueErrors.G(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    a#0: int)
   returns (b#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.G (correctness)"} Impl$$_module.OpaqueErrors.G(this: Box, a#0: int) returns (b#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: G, Impl$$_module.OpaqueErrors.G
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(84,41)
    assume true;
    assert {:id "id137"} _module.OpaqueErrors.y(this) != 0;
    assume true;
    b#0 := a#0 + Div(100, _module.OpaqueErrors.y(this));
}



// function declaration for _module.OpaqueErrors.H
function _module.OpaqueErrors.H($prevHeap: Heap, $heap: Heap, this: Box, a#0: ref) : int
uses {
// definition axiom for _module.OpaqueErrors.H (revealed)
axiom {:id "id139"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
    { _module.OpaqueErrors.H($prevHeap, $Heap, this, a#0), $IsGoodHeap($Heap) } 
    _module.OpaqueErrors.H#canCall($prevHeap, $Heap, this, a#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $IsBox(this, Tclass._module.OpaqueErrors())
           && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $prevHeap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.OpaqueErrors.H($prevHeap, $Heap, this, a#0)
         == $Unbox(read($prevHeap, a#0, IndexField(LitInt(3)))): int
           + _module.OpaqueErrors.y(this)
           + 2);
// definition axiom for _module.OpaqueErrors.H for decreasing-related literals (revealed)
axiom {:id "id140"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
    {:weight 3} { _module.OpaqueErrors.H($prevHeap, $Heap, this, Lit(a#0)), $IsGoodHeap($Heap) } 
    _module.OpaqueErrors.H#canCall($prevHeap, $Heap, this, Lit(a#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $IsBox(this, Tclass._module.OpaqueErrors())
           && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $prevHeap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.OpaqueErrors.H($prevHeap, $Heap, this, Lit(a#0))
         == $Unbox(read($prevHeap, Lit(a#0), IndexField(LitInt(3)))): int
           + _module.OpaqueErrors.y(this)
           + 2);
// definition axiom for _module.OpaqueErrors.H for all literals (revealed)
axiom {:id "id141"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
    {:weight 3} { _module.OpaqueErrors.H($prevHeap, $Heap, Lit(this), Lit(a#0)), $IsGoodHeap($Heap) } 
    _module.OpaqueErrors.H#canCall($prevHeap, $Heap, Lit(this), Lit(a#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          $IsBox(this, Tclass._module.OpaqueErrors())
           && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $prevHeap)
           && $Is(a#0, Tclass._System.array(TInt)))
       ==> _module.OpaqueErrors.H($prevHeap, $Heap, Lit(this), Lit(a#0))
         == $Unbox(read($prevHeap, Lit(a#0), IndexField(LitInt(3)))): int
           + _module.OpaqueErrors.y(Lit(this))
           + 2);
}

function _module.OpaqueErrors.H#canCall($prevHeap: Heap, $heap: Heap, this: Box, a#0: ref) : bool;

// frame axiom for _module.OpaqueErrors.H
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: Box, a#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.OpaqueErrors.H($prevHeap, $h1, this, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && $IsBox(this, Tclass._module.OpaqueErrors())
       && (_module.OpaqueErrors.H#canCall($prevHeap, $h0, this, a#0)
         || $Is(a#0, Tclass._System.array(TInt)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> _module.OpaqueErrors.H($prevHeap, $h0, this, a#0)
       == _module.OpaqueErrors.H($prevHeap, $h1, this, a#0));

function _module.OpaqueErrors.H#requires(Heap, Heap, Box, ref) : bool;

// #requires axiom for _module.OpaqueErrors.H
axiom (forall $prevHeap: Heap, $Heap: Heap, this: Box, a#0: ref :: 
  { _module.OpaqueErrors.H#requires($prevHeap, $Heap, this, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      $IsBox(this, Tclass._module.OpaqueErrors())
       && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $prevHeap)
       && $Is(a#0, Tclass._System.array(TInt))
     ==> _module.OpaqueErrors.H#requires($prevHeap, $Heap, this, a#0)
       == $IsAlloc(a#0, Tclass._System.array(TInt), $prevHeap));

procedure {:verboseName "OpaqueErrors.H (well-formedness)"} CheckWellformed$$_module.OpaqueErrors.H(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.H (well-formedness)"} CheckWellformed$$_module.OpaqueErrors.H(previous$Heap: Heap, current$Heap: Heap, this: Box, a#0: ref)
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
        assert {:id "id142"} a#0 != null;
        assert {:id "id143"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id144"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
        assume {:id "id145"} _module.OpaqueErrors.H(old($Heap), $Heap, this, a#0)
           == $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
             + _module.OpaqueErrors.y(this)
             + 2;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.OpaqueErrors.H(old($Heap), $Heap, this, a#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "OpaqueErrors.Two (well-formedness)"} CheckWellFormed$$_module.OpaqueErrors.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.Two (well-formedness)"} CheckWellFormed$$_module.OpaqueErrors.Two(previous$Heap: Heap, current$Heap: Heap, this: Box, a#0: ref) returns (u#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Two, CheckWellFormed$$_module.OpaqueErrors.Two
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id146"} $IsAllocBox(this, Tclass._module.OpaqueErrors(), old($Heap));
    assert {:id "id147"} a#0 != null;
    assert {:id "id148"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id149"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume {:id "id150"} _module.OpaqueErrors.y(this)
         + $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
       == _module.OpaqueErrors.y(this);
    havoc u#0;
    assert {:id "id151"} a#0 != null;
    assert {:id "id152"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id153"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assert {:id "id154"} $IsAllocBox(this, Tclass._module.OpaqueErrors(), old($Heap));
    assume {:id "id155"} $Unbox(read(old($Heap), a#0, IndexField(LitInt(3)))): int
         + _module.OpaqueErrors.y(this)
       == _module.OpaqueErrors.y(this);
}



procedure {:verboseName "OpaqueErrors.Two (call)"} Call$$_module.OpaqueErrors.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  // user-defined preconditions
  requires {:id "id156"} _module.OpaqueErrors.y(this)
       + $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
     == _module.OpaqueErrors.y(this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id157"} $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
       + _module.OpaqueErrors.y(this)
     == _module.OpaqueErrors.y(this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OpaqueErrors.Two (correctness)"} Impl$$_module.OpaqueErrors.Two(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), previous$Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap))
   returns (u#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  requires $IsAlloc(a#0, Tclass._System.array(TInt), previous$Heap);
  // user-defined preconditions
  requires {:id "id158"} _module.OpaqueErrors.y(this)
       + $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
     == _module.OpaqueErrors.y(this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id159"} $Unbox(read(previous$Heap, a#0, IndexField(LitInt(3)))): int
       + _module.OpaqueErrors.y(this)
     == _module.OpaqueErrors.y(this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.Two (correctness)"} Impl$$_module.OpaqueErrors.Two(previous$Heap: Heap, current$Heap: Heap, this: Box, a#0: ref)
   returns (u#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#0: int;
  var u'#0: int;
  var f'#0: int;

    // AddMethodImpl: Two, Impl$$_module.OpaqueErrors.Two
    $Heap := current$Heap;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(93,7)
    assume true;
    assert {:id "id160"} $IsAllocBox(this, Tclass._module.OpaqueErrors(), old($Heap));
    assert {:id "id161"} a#0 != null;
    assert {:id "id162"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id163"} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(a#0);
    assume true;
    u#0 := _module.OpaqueErrors.y(this)
       + $Unbox(read(old($Heap), a#0, IndexField(LitInt(2)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(94,11)
    assume true;
    assert {:id "id165"} $IsAllocBox(this, Tclass._module.OpaqueErrors(), old($Heap));
    assume _module.OpaqueErrors.F#canCall(this);
    assume _module.OpaqueErrors.F#canCall(this);
    f#0 := _module.OpaqueErrors.F(this);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(95,12)
    assume true;
    assert {:id "id167"} a#0 != null;
    assert {:id "id168"} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(a#0);
    assume true;
    u'#0 := _module.OpaqueErrors.y(this)
       + $Unbox(read($Heap, a#0, IndexField(LitInt(2)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(96,12)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap);
    assume _module.OpaqueErrors.F#canCall(this);
    assume _module.OpaqueErrors.F#canCall(this);
    f'#0 := _module.OpaqueErrors.F(this);
}



// function declaration for _module.OpaqueErrors.Q
function _module.OpaqueErrors.Q($ly: LayerType, this: Box, u#0: int) : bool
uses {
// definition axiom for _module.OpaqueErrors.Q (revealed)
axiom {:id "id171"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int :: 
    { _module.OpaqueErrors.Q($LS($ly), this, u#0) } 
    _module.OpaqueErrors.Q#canCall(this, u#0)
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.OpaqueErrors()))
       ==> (20 <= Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this)
           ==> _module.OpaqueErrors.Q#canCall(this, u#0 + 1))
         && _module.OpaqueErrors.Q($LS($ly), this, u#0)
           == (Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
             || _module.OpaqueErrors.Q($ly, this, u#0 + 1)));
}

function _module.OpaqueErrors.Q#canCall(this: Box, u#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: Box, u#0: int :: 
  { _module.OpaqueErrors.Q($LS($ly), this, u#0) } 
  _module.OpaqueErrors.Q($LS($ly), this, u#0)
     == _module.OpaqueErrors.Q($ly, this, u#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: Box, u#0: int :: 
  { _module.OpaqueErrors.Q(AsFuelBottom($ly), this, u#0) } 
  _module.OpaqueErrors.Q($ly, this, u#0) == _module.OpaqueErrors.Q($LZ, this, u#0));

function _module.OpaqueErrors.Q#requires(LayerType, Box, int) : bool;

// #requires axiom for _module.OpaqueErrors.Q
axiom (forall $ly: LayerType, this: Box, u#0: int :: 
  { _module.OpaqueErrors.Q#requires($ly, this, u#0) } 
  $IsBox(this, Tclass._module.OpaqueErrors())
     ==> _module.OpaqueErrors.Q#requires($ly, this, u#0) == true);

// 1st prefix predicate axiom for _module.OpaqueErrors.Q_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int :: 
    { _module.OpaqueErrors.Q($LS($ly), this, u#0) } 
    $IsBox(this, Tclass._module.OpaqueErrors())
         && _module.OpaqueErrors.Q($LS($ly), this, u#0)
       ==> (exists _k#0: Box :: 
        { _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0) } 
        _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int :: 
    { _module.OpaqueErrors.Q($LS($ly), this, u#0) } 
    $IsBox(this, Tclass._module.OpaqueErrors())
         && (exists _k#0: Box :: 
          { _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0) } 
          _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0))
       ==> _module.OpaqueErrors.Q($LS($ly), this, u#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int, _k#0: Box :: 
    { _module.OpaqueErrors.Q_h($ly, this, _k#0, u#0) } 
    $IsBox(this, Tclass._module.OpaqueErrors()) && _k#0 == ORD#FromNat(0)
       ==> !_module.OpaqueErrors.Q_h($ly, this, _k#0, u#0));

// targeted prefix predicate monotonicity axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, u#0: int, _k#0: Box, _m: Box, _limit: Box :: 
    { _module.OpaqueErrors.Q_h($ly, this, _k#0, u#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.OpaqueErrors.Q_h($ly, this, _k#0, u#0)
       ==> _module.OpaqueErrors.Q_h($ly, this, _m, u#0));

procedure {:verboseName "OpaqueErrors.Q (well-formedness)"} CheckWellformed$$_module.OpaqueErrors.Q(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    u#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.Q (well-formedness)"} CheckWellformed$$_module.OpaqueErrors.Q(this: Box, u#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##u#0: int;


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
        assert {:id "id172"} _module.OpaqueErrors.y(this) != 0;
        if (20 <= Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap);
            ##u#0 := u#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##u#0, TInt, $Heap);
            assume _module.OpaqueErrors.Q#canCall(this, u#0 + 1);
        }

        assume {:id "id173"} _module.OpaqueErrors.Q($LS($LZ), this, u#0)
           == (Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
             || _module.OpaqueErrors.Q($LS($LZ), this, u#0 + 1));
        assume 20 <= Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this)
           ==> _module.OpaqueErrors.Q#canCall(this, u#0 + 1);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.OpaqueErrors.Q($LS($LZ), this, u#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module.OpaqueErrors.Q#
function _module.OpaqueErrors.Q_h($ly: LayerType, this: Box, _k#0: Box, u#0: int) : bool
uses {
// definition axiom for _module.OpaqueErrors.Q_h (revealed)
axiom {:id "id174"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
    { _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0) } 
    _module.OpaqueErrors.Q_h#canCall(this, _k#0, u#0)
         || (2 < $FunctionContextHeight && $IsBox(this, Tclass._module.OpaqueErrors()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this)
           ==> _module.OpaqueErrors.Q_h#canCall(this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
             || _module.OpaqueErrors.Q_h($ly, this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.OpaqueErrors.Q_h($ly, this, _k'#0, u#0) } 
            ORD#LessThanLimit(_k'#0, _k#0)
               ==> _module.OpaqueErrors.Q_h#canCall(this, _k'#0, u#0)))
         && _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0)
           == ((0 < ORD#Offset(_k#0)
               ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
                 || _module.OpaqueErrors.Q_h($ly, this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#0: Box :: 
                { _module.OpaqueErrors.Q_h($ly, this, _k'#0, u#0) } 
                ORD#LessThanLimit(_k'#0, _k#0)
                   && _module.OpaqueErrors.Q_h($ly, this, _k'#0, u#0)))));
// definition axiom for _module.OpaqueErrors.Q_h for decreasing-related literals (revealed)
axiom {:id "id175"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
    {:weight 3} { _module.OpaqueErrors.Q_h($LS($ly), this, Lit(_k#0), u#0) } 
    _module.OpaqueErrors.Q_h#canCall(this, Lit(_k#0), u#0)
         || (2 < $FunctionContextHeight && $IsBox(this, Tclass._module.OpaqueErrors()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20 <= Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this)
           ==> _module.OpaqueErrors.Q_h#canCall(this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
             || _module.OpaqueErrors.Q_h($LS($ly), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.OpaqueErrors.Q_h($LS($ly), this, _k'#1, u#0) } 
            ORD#LessThanLimit(_k'#1, _k#0)
               ==> _module.OpaqueErrors.Q_h#canCall(this, _k'#1, u#0)))
         && _module.OpaqueErrors.Q_h($LS($ly), this, Lit(_k#0), u#0)
           == ((0 < ORD#Offset(_k#0)
               ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
                 || _module.OpaqueErrors.Q_h($LS($ly), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#0 + 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#1: Box :: 
                { _module.OpaqueErrors.Q_h($LS($ly), this, _k'#1, u#0) } 
                ORD#LessThanLimit(_k'#1, _k#0)
                   && _module.OpaqueErrors.Q_h($LS($ly), this, _k'#1, u#0)))));
// definition axiom for _module.OpaqueErrors.Q_h for all literals (revealed)
axiom {:id "id176"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
    {:weight 3} { _module.OpaqueErrors.Q_h($LS($ly), Lit(this), Lit(_k#0), LitInt(u#0)) } 
    _module.OpaqueErrors.Q_h#canCall(Lit(this), Lit(_k#0), LitInt(u#0))
         || (2 < $FunctionContextHeight && $IsBox(this, Tclass._module.OpaqueErrors()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          20
             <= Div(100, _module.OpaqueErrors.y(Lit(this))) + _module.OpaqueErrors.z(Lit(this))
           ==> _module.OpaqueErrors.Q_h#canCall(Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> Div(100, _module.OpaqueErrors.y(Lit(this))) + _module.OpaqueErrors.z(Lit(this))
               < 20
             || _module.OpaqueErrors.Q_h($LS($ly), Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.OpaqueErrors.Q_h($LS($ly), this, _k'#2, u#0) } 
            ORD#LessThanLimit(_k'#2, _k#0)
               ==> _module.OpaqueErrors.Q_h#canCall(this, _k'#2, u#0)))
         && _module.OpaqueErrors.Q_h($LS($ly), Lit(this), Lit(_k#0), LitInt(u#0))
           == ((0 < ORD#Offset(_k#0)
               ==> Div(100, _module.OpaqueErrors.y(Lit(this))) + _module.OpaqueErrors.z(Lit(this))
                   < 20
                 || _module.OpaqueErrors.Q_h($LS($ly), Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(u#0 + 1)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#2: Box :: 
                { _module.OpaqueErrors.Q_h($LS($ly), this, _k'#2, u#0) } 
                ORD#LessThanLimit(_k'#2, _k#0)
                   && _module.OpaqueErrors.Q_h($LS($ly), this, _k'#2, u#0)))));
}

function _module.OpaqueErrors.Q_h#canCall(this: Box, _k#0: Box, u#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
  { _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0) } 
  _module.OpaqueErrors.Q_h($LS($ly), this, _k#0, u#0)
     == _module.OpaqueErrors.Q_h($ly, this, _k#0, u#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
  { _module.OpaqueErrors.Q_h(AsFuelBottom($ly), this, _k#0, u#0) } 
  _module.OpaqueErrors.Q_h($ly, this, _k#0, u#0)
     == _module.OpaqueErrors.Q_h($LZ, this, _k#0, u#0));

function _module.OpaqueErrors.Q_h#requires(LayerType, Box, Box, int) : bool;

// #requires axiom for _module.OpaqueErrors.Q_h
axiom (forall $ly: LayerType, this: Box, _k#0: Box, u#0: int :: 
  { _module.OpaqueErrors.Q_h#requires($ly, this, _k#0, u#0) } 
  $IsBox(this, Tclass._module.OpaqueErrors())
     ==> _module.OpaqueErrors.Q_h#requires($ly, this, _k#0, u#0) == true);

procedure {:verboseName "OpaqueErrors.QL (well-formedness)"} CheckWellFormed$$_module.OpaqueErrors.QL(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    u#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.QL (well-formedness)"} CheckWellFormed$$_module.OpaqueErrors.QL(this: Box, u#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##u#0: int;


    // AddMethodImpl: QL, CheckWellFormed$$_module.OpaqueErrors.QL
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap);
    ##u#0 := u#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##u#0, TInt, $Heap);
    assume _module.OpaqueErrors.Q#canCall(this, u#0);
    assume {:id "id177"} _module.OpaqueErrors.Q($LS($LZ), this, u#0);
    assume {:id "id178"} _module.OpaqueErrors.y(this) != 0;
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id179"} _module.OpaqueErrors.y(this) != 0;
    assume {:id "id180"} Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20;
}



procedure {:verboseName "OpaqueErrors.QL (call)"} Call$$_module.OpaqueErrors.QL(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    u#0: int);
  // user-defined preconditions
  requires {:id "id181"} _module.OpaqueErrors.Q#canCall(this, u#0)
     ==> _module.OpaqueErrors.Q($LS($LZ), this, u#0)
       || 
      Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
       || _module.OpaqueErrors.Q($LS($LS($LZ)), this, u#0 + 1);
  requires {:id "id182"} _module.OpaqueErrors.y(this) != 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id183"} Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OpaqueErrors.QL# (co-call)"} CoCall$$_module.OpaqueErrors.QL_h(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    _k#0: Box, 
    u#1: int);
  // user-defined preconditions
  requires {:id "id184"} _module.OpaqueErrors.Q_h#canCall(this, _k#0, u#1)
     ==> _module.OpaqueErrors.Q_h($LS($LZ), this, _k#0, u#1)
       || (0 < ORD#Offset(_k#0)
         ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
           || _module.OpaqueErrors.Q_h($LS($LS($LZ)), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#1 + 1));
  requires {:id "id185"} _module.OpaqueErrors.Q_h#canCall(this, _k#0, u#1)
     ==> _module.OpaqueErrors.Q_h($LS($LZ), this, _k#0, u#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.OpaqueErrors.Q_h($LS($LZ), this, _k'#0, u#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.OpaqueErrors.Q_h($LS($LZ), this, _k'#0, u#1)));
  requires {:id "id186"} _module.OpaqueErrors.y(this) != 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id187"} Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OpaqueErrors.QL# (correctness)"} Impl$$_module.OpaqueErrors.QL_h(this: Box
       where $IsBox(this, Tclass._module.OpaqueErrors())
         && $IsAllocBox(this, Tclass._module.OpaqueErrors(), $Heap), 
    _k#0: Box, 
    u#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id188"} _module.OpaqueErrors.Q_h#canCall(this, _k#0, u#1)
     && 
    _module.OpaqueErrors.Q_h($LS($LZ), this, _k#0, u#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20
         || _module.OpaqueErrors.Q_h($LS($LZ), this, ORD#Minus(_k#0, ORD#FromNat(1)), u#1 + 1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.OpaqueErrors.Q_h($LS($LZ), this, _k'#1, u#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.OpaqueErrors.Q_h($LS($LZ), this, _k'#1, u#1)));
  requires {:id "id189"} _module.OpaqueErrors.y(this) != 0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id190"} Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OpaqueErrors.QL# (correctness)"} Impl$$_module.OpaqueErrors.QL_h(this: Box, _k#0: Box, u#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var w#0: int;
  var w'#0: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: QL#, Impl$$_module.OpaqueErrors.QL_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#u0#0: int :: 
      { _module.OpaqueErrors.Q_h($LS($LZ), this, $ih#_k0#0, $ih#u0#0) } 
      _module.OpaqueErrors.Q_h($LS($LZ), this, $ih#_k0#0, $ih#u0#0)
           && _module.OpaqueErrors.y(this) != 0
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#u0#0 && $ih#u0#0 < u#1))
         ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(105,3)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(106,11)
        assume true;
        assert {:id "id191"} _module.OpaqueErrors.z(this) != 0;
        assume true;
        w#0 := _module.OpaqueErrors.y(this) + Div(20, _module.OpaqueErrors.z(this));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(107,12)
        assume true;
        assert {:id "id193"} _module.OpaqueErrors.y(this) + 1 != 0;
        assume true;
        w'#0 := Div(20, _module.OpaqueErrors.y(this) + 1);
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/OpaqueTypeWithMembers.dfy(105,3)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, u#2: int :: 
          { _module.OpaqueErrors.Q_h($LS($LZ), this, _k'#2, u#2) } 
          ORD#Less(_k'#2, _k#0)
               && 
              _module.OpaqueErrors.Q_h($LS($LZ), this, _k'#2, u#2)
               && _module.OpaqueErrors.y(this) != 0
             ==> Div(100, _module.OpaqueErrors.y(this)) + _module.OpaqueErrors.z(this) < 20);
    }
}



const unique class._module.FailureCompatible: ClassName;

// function declaration for _module.FailureCompatible.IsFailure
function _module.FailureCompatible.IsFailure(this: Box) : bool
uses {
// definition axiom for _module.FailureCompatible.IsFailure (revealed)
axiom {:id "id195"} 1 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    { _module.FailureCompatible.IsFailure(this) } 
    _module.FailureCompatible.IsFailure#canCall(this)
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.FailureCompatible()))
       ==> _module.FailureCompatible.IsFailure(this)
         == (_module.FailureCompatible.c(this) < 10));
// definition axiom for _module.FailureCompatible.IsFailure for all literals (revealed)
axiom {:id "id196"} 1 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    {:weight 3} { _module.FailureCompatible.IsFailure(Lit(this)) } 
    _module.FailureCompatible.IsFailure#canCall(Lit(this))
         || (1 < $FunctionContextHeight && $IsBox(this, Tclass._module.FailureCompatible()))
       ==> _module.FailureCompatible.IsFailure(Lit(this))
         == (_module.FailureCompatible.c(Lit(this)) < 10));
}

function _module.FailureCompatible.IsFailure#canCall(this: Box) : bool;

function _module.FailureCompatible.IsFailure#requires(Box) : bool;

// #requires axiom for _module.FailureCompatible.IsFailure
axiom (forall this: Box :: 
  { _module.FailureCompatible.IsFailure#requires(this) } 
  $IsBox(this, Tclass._module.FailureCompatible())
     ==> _module.FailureCompatible.IsFailure#requires(this) == true);

procedure {:verboseName "FailureCompatible.IsFailure (well-formedness)"} CheckWellformed$$_module.FailureCompatible.IsFailure(this: Box
       where $IsBox(this, Tclass._module.FailureCompatible())
         && $IsAllocBox(this, Tclass._module.FailureCompatible(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.FailureCompatible.PropagateFailure
function _module.FailureCompatible.PropagateFailure(this: Box) : int
uses {
// definition axiom for _module.FailureCompatible.PropagateFailure (revealed)
axiom {:id "id198"} 2 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    { _module.FailureCompatible.PropagateFailure(this) } 
    _module.FailureCompatible.PropagateFailure#canCall(this)
         || (2 < $FunctionContextHeight
           && 
          $IsBox(this, Tclass._module.FailureCompatible())
           && _module.FailureCompatible.IsFailure(this))
       ==> _module.FailureCompatible.PropagateFailure(this)
         == Div(100, _module.FailureCompatible.c(this) - 10));
// definition axiom for _module.FailureCompatible.PropagateFailure for all literals (revealed)
axiom {:id "id199"} 2 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    {:weight 3} { _module.FailureCompatible.PropagateFailure(Lit(this)) } 
    _module.FailureCompatible.PropagateFailure#canCall(Lit(this))
         || (2 < $FunctionContextHeight
           && 
          $IsBox(this, Tclass._module.FailureCompatible())
           && Lit(_module.FailureCompatible.IsFailure(Lit(this))))
       ==> _module.FailureCompatible.PropagateFailure(Lit(this))
         == Div(100, _module.FailureCompatible.c(Lit(this)) - 10));
}

function _module.FailureCompatible.PropagateFailure#canCall(this: Box) : bool;

function _module.FailureCompatible.PropagateFailure#requires(Box) : bool;

// #requires axiom for _module.FailureCompatible.PropagateFailure
axiom (forall this: Box :: 
  { _module.FailureCompatible.PropagateFailure#requires(this) } 
  $IsBox(this, Tclass._module.FailureCompatible())
     ==> _module.FailureCompatible.PropagateFailure#requires(this)
       == _module.FailureCompatible.IsFailure(this));

procedure {:verboseName "FailureCompatible.PropagateFailure (well-formedness)"} CheckWellformed$$_module.FailureCompatible.PropagateFailure(this: Box
       where $IsBox(this, Tclass._module.FailureCompatible())
         && $IsAllocBox(this, Tclass._module.FailureCompatible(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailureCompatible.PropagateFailure (well-formedness)"} CheckWellformed$$_module.FailureCompatible.PropagateFailure(this: Box)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(this, Tclass._module.FailureCompatible(), $Heap);
    assume _module.FailureCompatible.IsFailure#canCall(this);
    assume {:id "id200"} _module.FailureCompatible.IsFailure(this);
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
        assert {:id "id201"} _module.FailureCompatible.c(this) - 10 != 0;
        assume {:id "id202"} _module.FailureCompatible.PropagateFailure(this)
           == Div(100, _module.FailureCompatible.c(this) - 10);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.FailureCompatible.PropagateFailure(this), TInt);
        return;

        assume false;
    }
}



// function declaration for _module.FailureCompatible.Extract
function _module.FailureCompatible.Extract(this: Box) : real
uses {
// definition axiom for _module.FailureCompatible.Extract (revealed)
axiom {:id "id203"} 2 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    { _module.FailureCompatible.Extract(this) } 
    _module.FailureCompatible.Extract#canCall(this)
         || (2 < $FunctionContextHeight
           && 
          $IsBox(this, Tclass._module.FailureCompatible())
           && !_module.FailureCompatible.IsFailure(this))
       ==> _module.FailureCompatible.Extract(this)
         == 1e2 / Real(_module.FailureCompatible.c(this)));
// definition axiom for _module.FailureCompatible.Extract for all literals (revealed)
axiom {:id "id204"} 2 <= $FunctionContextHeight
   ==> (forall this: Box :: 
    {:weight 3} { _module.FailureCompatible.Extract(Lit(this)) } 
    _module.FailureCompatible.Extract#canCall(Lit(this))
         || (2 < $FunctionContextHeight
           && 
          $IsBox(this, Tclass._module.FailureCompatible())
           && !Lit(_module.FailureCompatible.IsFailure(Lit(this))))
       ==> _module.FailureCompatible.Extract(Lit(this))
         == 1e2 / Real(_module.FailureCompatible.c(Lit(this))));
}

function _module.FailureCompatible.Extract#canCall(this: Box) : bool;

function _module.FailureCompatible.Extract#requires(Box) : bool;

// #requires axiom for _module.FailureCompatible.Extract
axiom (forall this: Box :: 
  { _module.FailureCompatible.Extract#requires(this) } 
  $IsBox(this, Tclass._module.FailureCompatible())
     ==> _module.FailureCompatible.Extract#requires(this)
       == !_module.FailureCompatible.IsFailure(this));

procedure {:verboseName "FailureCompatible.Extract (well-formedness)"} CheckWellformed$$_module.FailureCompatible.Extract(this: Box
       where $IsBox(this, Tclass._module.FailureCompatible())
         && $IsAllocBox(this, Tclass._module.FailureCompatible(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailureCompatible.Extract (well-formedness)"} CheckWellformed$$_module.FailureCompatible.Extract(this: Box)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(this, Tclass._module.FailureCompatible(), $Heap);
    assume _module.FailureCompatible.IsFailure#canCall(this);
    assume {:id "id205"} !_module.FailureCompatible.IsFailure(this);
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
        assert {:id "id206"} Real(_module.FailureCompatible.c(this)) != 0e0;
        assume {:id "id207"} _module.FailureCompatible.Extract(this)
           == 1e2 / Real(_module.FailureCompatible.c(this));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.FailureCompatible.Extract(this), TReal);
        return;

        assume false;
    }
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
