.class public LTb/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTb/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTb/d;-><init>([[LTb/d$d;LMb/p;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LMb/p;

.field public final synthetic b:LTb/d;


# direct methods
.method public constructor <init>(LTb/d;LMb/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LTb/d$b;->b:LTb/d;

    iput-object p2, p0, LTb/d$b;->a:LMb/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2}, LMb/p;->v(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public apply()V
    .locals 1

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0}, LMb/p;->apply()V

    return-void
.end method

.method public b(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2, p3}, LMb/p;->n0(IIF)V

    return-void
.end method

.method public c(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2, p3}, LMb/p;->p0(IIF)V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public d(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2, p3}, LMb/p;->m0(IIF)V

    return-void
.end method

.method public e(IIFFFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, LMb/p;->r0(IIFFFF)V

    return-void
.end method

.method public f(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2}, LMb/p;->y(II)F

    move-result p1

    return p1
.end method

.method public g(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2}, LMb/p;->B(II)F

    move-result p1

    return p1
.end method

.method public h(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2}, LMb/p;->z(II)F

    move-result p1

    return p1
.end method

.method public i(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2}, LMb/p;->A(II)F

    move-result p1

    return p1
.end method

.method public j(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2, p3}, LMb/p;->o0(IIF)V

    return-void
.end method

.method public k(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    invoke-virtual {v0, p1, p2, p3}, LMb/p;->w(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public l(IIFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    iget-object v0, p0, LTb/d$b;->a:LMb/p;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, LMb/p;->q0(IIFFF)V

    return-void
.end method

.method public m(FFFF)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget-object v1, p0, LTb/d$b;->b:LTb/d;

    invoke-static {v1}, LTb/d;->a(LTb/d;)I

    move-result v1

    if-ge v8, v1, :cond_1

    move v9, v0

    :goto_1
    iget-object v1, p0, LTb/d$b;->b:LTb/d;

    invoke-static {v1}, LTb/d;->b(LTb/d;)I

    move-result v1

    if-ge v9, v1, :cond_0

    iget-object v1, p0, LTb/d$b;->a:LMb/p;

    move v2, v8

    move v3, v9

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, LMb/p;->r0(IIFFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
