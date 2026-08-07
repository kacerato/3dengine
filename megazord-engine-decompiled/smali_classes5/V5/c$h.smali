.class public LV5/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV5/c;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public final synthetic c:LV5/c;


# direct methods
.method public constructor <init>(LV5/c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
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

    iput-object p1, p0, LV5/c$h;->c:LV5/c;

    iput-object p2, p0, LV5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LV5/c$h;->c:LV5/c;

    invoke-static {v0}, LV5/c;->i(LV5/c;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, LV5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->a1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, LV5/c$h;->c:LV5/c;

    iget-object v1, p0, LV5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-static {v0, v1}, LV5/c;->j(LV5/c;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LW5/d;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, LV5/c$h;->c:LV5/c;

    iget-object v2, v2, LV5/c;->g:LW5/c;

    invoke-virtual {v2}, LW5/c;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LV5/c$h;->c:LV5/c;

    iget-object v2, v2, LV5/c;->g:LW5/c;

    invoke-virtual {v2, v1}, LW5/c;->i(I)LW5/d;

    move-result-object v2

    iget-object v2, v2, LW5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v3, p0, LV5/c$h;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LV5/c$h;->c:LV5/c;

    iget-object v2, v2, LV5/c;->g:LW5/c;

    invoke-virtual {v2, v1, v0}, LW5/c;->n(ILW5/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
