.class public LZ5/c$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/c;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final synthetic c:LW5/b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;LW5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$quaternion",
            "val$reset",
            "val$rectRotVector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ5/c$o;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput-object p2, p0, LZ5/c$o;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput-object p3, p0, LZ5/c$o;->c:LW5/b;

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

    :try_start_0
    iget-object p1, p0, LZ5/c$o;->a:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v0, p0, LZ5/c$o;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p0, LZ5/c$o;->c:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LX5/f;->a()V

    :cond_0
    iget-object p1, p0, LZ5/c$o;->c:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LX5/f;->a()V

    :cond_1
    iget-object p1, p0, LZ5/c$o;->c:LW5/b;

    iget-object p1, p1, LW5/b;->p:[LW5/b;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object p1, p1, LW5/b;->k:LX5/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LX5/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
