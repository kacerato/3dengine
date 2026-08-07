.class public LUb/i;
.super Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LUb/i$b;
    }
.end annotation


# instance fields
.field public A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final u:LUb/i$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, LUb/i$a;

    invoke-direct {v0, p0}, LUb/i$a;-><init>(LUb/i;)V

    iput-object v0, p0, LUb/i;->u:LUb/i$b;

    .line 3
    iput-object p1, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "instance can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;LUb/i$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "listener"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    iput-object p2, p0, LUb/i;->u:LUb/i$b;

    .line 7
    iput-object p1, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "instance can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public W0()F
    .locals 1

    iget-object v0, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    return v0
.end method

.method public X0()F
    .locals 1

    iget-object v0, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    return v0
.end method

.method public Y0()F
    .locals 1

    iget-object v0, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    return v0
.end method

.method public a3(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    return-void
.end method

.method public b3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iput-object p1, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public e2(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    invoke-virtual {p0}, LUb/i;->W0()F

    move-result v0

    invoke-virtual {p0}, LUb/i;->X0()F

    move-result v1

    invoke-virtual {p0}, LUb/i;->Y0()F

    move-result v2

    iget-object v3, p0, LUb/i;->u:LUb/i$b;

    invoke-interface {v3, v0, v1, v2}, LUb/i$b;->a(FFF)V

    invoke-virtual {p0, v0, v1, v2}, LUb/i;->a3(FFF)V

    return p1
.end method

.method public i2(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    invoke-virtual {p0}, LUb/i;->W0()F

    move-result v0

    invoke-virtual {p0}, LUb/i;->X0()F

    move-result v1

    invoke-virtual {p0}, LUb/i;->Y0()F

    move-result v2

    iget-object v3, p0, LUb/i;->u:LUb/i$b;

    invoke-interface {v3, v0, v1, v2}, LUb/i$b;->a(FFF)V

    invoke-virtual {p0, v0, v1, v2}, LUb/i;->a3(FFF)V

    return p1
.end method

.method public j2(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    iget-object v0, p0, LUb/i;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    invoke-virtual {p0}, LUb/i;->W0()F

    move-result v0

    invoke-virtual {p0}, LUb/i;->X0()F

    move-result v1

    invoke-virtual {p0}, LUb/i;->Y0()F

    move-result v2

    iget-object v3, p0, LUb/i;->u:LUb/i$b;

    invoke-interface {v3, v0, v1, v2}, LUb/i$b;->a(FFF)V

    invoke-virtual {p0, v0, v1, v2}, LUb/i;->a3(FFF)V

    return p1
.end method
