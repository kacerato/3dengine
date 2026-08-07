.class public Lbc/g$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lbc/g$a;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public d:I

.field public e:I

.field public final f:Lbc/g$c;

.field public g:Z


# direct methods
.method public constructor <init>(Lbc/g$a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "uv",
            "normal"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbc/g$c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lbc/g$c;-><init>(D)V

    iput-object v0, p0, Lbc/g$e;->f:Lbc/g$c;

    .line 3
    new-instance v0, Lbc/g$a;

    invoke-direct {v0, p1}, Lbc/g$a;-><init>(Lbc/g$a;)V

    iput-object v0, p0, Lbc/g$e;->a:Lbc/g$a;

    .line 4
    iput-object p2, p0, Lbc/g$e;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 5
    iput-object p3, p0, Lbc/g$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vector3",
            "uv",
            "normal"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lbc/g$c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lbc/g$c;-><init>(D)V

    iput-object v0, p0, Lbc/g$e;->f:Lbc/g$c;

    .line 8
    new-instance v0, Lbc/g$a;

    invoke-direct {v0, p1}, Lbc/g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, Lbc/g$e;->a:Lbc/g$a;

    .line 9
    iput-object p2, p0, Lbc/g$e;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 10
    iput-object p3, p0, Lbc/g$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic a(Lbc/g$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0

    iget-object p0, p0, Lbc/g$e;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object p0
.end method

.method public static synthetic b(Lbc/g$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lbc/g$e;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic c(Lbc/g$e;)Z
    .locals 0

    iget-boolean p0, p0, Lbc/g$e;->g:Z

    return p0
.end method

.method public static synthetic d(Lbc/g$e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbc/g$e;->g:Z

    return p1
.end method

.method public static synthetic e(Lbc/g$e;)I
    .locals 0

    iget p0, p0, Lbc/g$e;->e:I

    return p0
.end method

.method public static synthetic f(Lbc/g$e;I)I
    .locals 0

    iput p1, p0, Lbc/g$e;->e:I

    return p1
.end method

.method public static synthetic g(Lbc/g$e;)I
    .locals 2

    iget v0, p0, Lbc/g$e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbc/g$e;->e:I

    return v0
.end method

.method public static synthetic h(Lbc/g$e;)Lbc/g$a;
    .locals 0

    iget-object p0, p0, Lbc/g$e;->a:Lbc/g$a;

    return-object p0
.end method

.method public static synthetic i(Lbc/g$e;)Lbc/g$c;
    .locals 0

    iget-object p0, p0, Lbc/g$e;->f:Lbc/g$c;

    return-object p0
.end method

.method public static synthetic j(Lbc/g$e;)I
    .locals 0

    iget p0, p0, Lbc/g$e;->d:I

    return p0
.end method

.method public static synthetic k(Lbc/g$e;I)I
    .locals 0

    iput p1, p0, Lbc/g$e;->d:I

    return p1
.end method
