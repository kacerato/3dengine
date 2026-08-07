.class public LZ5/c$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/c;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LZ5/c$u0;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic c:LZ5/c$u0;

.field public final synthetic d:LW5/b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LZ5/c$u0;LW5/b;)V
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

    iput-object p1, p0, LZ5/c$y;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p2, p0, LZ5/c$y;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p3, p0, LZ5/c$y;->c:LZ5/c$u0;

    iput-object p4, p0, LZ5/c$y;->d:LW5/b;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    iget-object p1, p0, LZ5/c$y;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz p1, :cond_2

    iget-object v0, p0, LZ5/c$y;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->T0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object p1, p0, LZ5/c$y;->c:LZ5/c$u0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LZ5/c$u0;->a()V

    :cond_0
    iget-object p1, p0, LZ5/c$y;->d:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LX5/f;->a()V

    :cond_1
    iget-object p1, p0, LZ5/c$y;->d:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LX5/f;->a()V

    :cond_2
    return-void
.end method
