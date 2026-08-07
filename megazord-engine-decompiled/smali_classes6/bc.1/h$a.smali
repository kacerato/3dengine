.class public Lbc/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lbc/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public a(Lbc/h$a;)Lbc/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public b(Lbc/h$a;)Lbc/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public c(F)Lbc/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->r0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public d(Lbc/h$a;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public e(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T0(I)F

    move-result p1

    return p1
.end method

.method public f()Lbc/h$a;
    .locals 1

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public g(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "i"
        }
    .end annotation

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    iget-object p2, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    :goto_0
    return-void
.end method

.method public h(Lbc/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public i([J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longs"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    long-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void
.end method

.method public j(Lbc/h$a;)Lbc/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/h$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method
