.class public LMb/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMb/p$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMb/p;->K(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)LMb/p$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$texture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->f0(IIF)V

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->k0(IIF)V

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->d0(IIF)V

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->Z(IIFFFF)V

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->H(II)F

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->K(II)F

    move-result p1

    return p1
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getWidth()I

    move-result v0

    return v0
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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->I(II)F

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->J(II)F

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->h0(IIF)V

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

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public l(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
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
            "colorINT"
        }
    .end annotation

    iget-object v0, p0, LMb/p$a;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->c0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method
