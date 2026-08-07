.class public final LAb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LUb/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LUb/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LAb/g$a;

    invoke-direct {v0}, LAb/g$a;-><init>()V

    sput-object v0, LAb/g;->a:Ljava/lang/ThreadLocal;

    new-instance v0, LAb/g$b;

    invoke-direct {v0}, LAb/g$b;-><init>()V

    sput-object v0, LAb/g;->b:Ljava/lang/ThreadLocal;

    new-instance v0, LAb/g$c;

    invoke-direct {v0}, LAb/g$c;-><init>()V

    sput-object v0, LAb/g;->c:Ljava/lang/ThreadLocal;

    new-instance v0, LAb/g$d;

    invoke-direct {v0}, LAb/g$d;-><init>()V

    sput-object v0, LAb/g;->d:Ljava/lang/ThreadLocal;

    new-instance v0, LAb/g$e;

    invoke-direct {v0}, LAb/g$e;-><init>()V

    sput-object v0, LAb/g;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LUb/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    invoke-static {p0, v0}, LAb/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUb/f;)LUb/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUb/f;)LUb/f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->j:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lyb/e;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_1

    invoke-static {v1, p1}, LAb/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUb/f;)LUb/f;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LUb/f;->T()V

    :goto_0
    sget-object v0, LAb/g;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p0, v0}, LAb/g;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)V

    invoke-virtual {p1, v0, p1}, LUb/f;->X(LUb/f;LUb/f;)LUb/f;

    return-object p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, LUb/f;->T()V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;[F)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [F

    :cond_0
    sget-object v0, LAb/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    invoke-static {p0, v0}, LAb/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUb/f;)LUb/f;

    invoke-virtual {v0, p1}, LUb/f;->B([F)[F

    return-object p1
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LUb/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    invoke-static {p0, v0}, LAb/g;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUb/f;)LUb/f;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUb/f;)LUb/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LAb/g;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)LUb/f;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, LUb/f;->T()V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)LUb/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    invoke-static {p0, v0}, LAb/g;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)LUb/f;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)LUb/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    invoke-virtual {p1}, LUb/f;->T()V

    return-object p1

    :cond_0
    invoke-static {p0, p1}, LAb/g;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;[F)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [F

    :cond_0
    sget-object v0, LAb/g;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    invoke-static {p0, v0}, LAb/g;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUb/f;)LUb/f;

    invoke-virtual {v0, p1}, LUb/f;->B([F)[F

    return-object p1
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;[F)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "out"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [F

    :cond_0
    sget-object v0, LAb/g;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUb/f;

    invoke-static {p0, v0}, LAb/g;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)LUb/f;

    invoke-virtual {v0, p1}, LUb/f;->B([F)[F

    return-object p1
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LUb/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "out"
        }
    .end annotation

    sget-object v0, LAb/g;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v1, LAb/g;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    sget-object v2, LAb/g;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0, v1, v2}, LUb/f;->j1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method
