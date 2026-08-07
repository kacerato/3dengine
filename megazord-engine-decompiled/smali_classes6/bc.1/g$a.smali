.class public Lbc/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lbc/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d1"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d1"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic a(Lbc/g$a;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method


# virtual methods
.method public b(Lbc/g$a;)Lbc/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    new-instance v0, Lbc/g$a;

    iget-object v1, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-direct {v0, p1}, Lbc/g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method

.method public c(Lbc/g$a;)Lbc/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public d(F)Lbc/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance v0, Lbc/g$a;

    iget-object v1, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->m0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-direct {v0, p1}, Lbc/g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method

.method public e(Lbc/g$a;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public f(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T0(I)F

    move-result p1

    return p1
.end method

.method public g()Lbc/g$a;
    .locals 1

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public h(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "i"
        }
    .end annotation

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    iget-object p2, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    return-void

    :cond_2
    iget-object p2, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    return-void
.end method

.method public i(Lbc/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p1"
        }
    .end annotation

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public j([J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longs"
        }
    .end annotation

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object v0, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    long-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void
.end method

.method public k(Lbc/g$a;)Lbc/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    new-instance v0, Lbc/g$a;

    iget-object v1, p0, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lbc/g$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-direct {v0, p1}, Lbc/g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method
