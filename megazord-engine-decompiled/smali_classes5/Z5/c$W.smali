.class public LZ5/c$W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/c;->V(Ljava/lang/String;[F[FLZ5/c$u0;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[F

.field public final synthetic b:[F

.field public final synthetic c:LZ5/c$u0;

.field public final synthetic d:LW5/b;


# direct methods
.method public constructor <init>([F[FLZ5/c$u0;LW5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$var",
            "val$reset",
            "val$onChanged",
            "val$rectPosVector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ5/c$W;->a:[F

    iput-object p2, p0, LZ5/c$W;->b:[F

    iput-object p3, p0, LZ5/c$W;->c:LZ5/c$u0;

    iput-object p4, p0, LZ5/c$W;->d:LW5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    iget-object p1, p0, LZ5/c$W;->a:[F

    if-eqz p1, :cond_4

    iget-object v0, p0, LZ5/c$W;->b:[F

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, p1, v2

    const/4 v3, 0x2

    aget v4, v0, v3

    aput v4, p1, v3

    const/4 v4, 0x4

    aget v0, v0, v4

    aput v0, p1, v4

    iget-object p1, p0, LZ5/c$W;->c:LZ5/c$u0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LZ5/c$u0;->a()V

    :cond_0
    iget-object p1, p0, LZ5/c$W;->d:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    aget-object p1, p1, v1

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LX5/f;->a()V

    :cond_1
    iget-object p1, p0, LZ5/c$W;->d:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    aget-object p1, p1, v2

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LX5/f;->a()V

    :cond_2
    iget-object p1, p0, LZ5/c$W;->d:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    aget-object p1, p1, v3

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_3

    invoke-interface {p1}, LX5/f;->a()V

    :cond_3
    iget-object p1, p0, LZ5/c$W;->d:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_4

    invoke-interface {p1}, LX5/f;->a()V

    :cond_4
    return-void
.end method
