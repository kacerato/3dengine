.class public LV5/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV5/d;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public final synthetic c:LV5/d;


# direct methods
.method public constructor <init>(LV5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LV5/d$b;->c:LV5/d;

    iput-object p2, p0, LV5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LV5/d$b;->c:LV5/d;

    invoke-static {v0}, LV5/d;->i(LV5/d;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, LV5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->a1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, LV5/d$b;->c:LV5/d;

    iget-object v2, p0, LV5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-static {v1, v2}, LV5/d;->j(LV5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LW5/d;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, LV5/d$b;->c:LV5/d;

    iget-object v2, v2, LV5/d;->h:LW5/c;

    invoke-virtual {v2}, LW5/c;->getItemCount()I

    move-result v2

    iget-object v3, p0, LV5/d$b;->c:LV5/d;

    invoke-static {v3}, LV5/d;->k(LV5/d;)I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_0

    iget-object v2, p0, LV5/d$b;->c:LV5/d;

    iget-object v3, v2, LV5/d;->h:LW5/c;

    invoke-static {v2}, LV5/d;->k(LV5/d;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v0, v1}, LW5/c;->n(ILW5/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
