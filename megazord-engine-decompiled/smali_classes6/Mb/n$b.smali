.class public LMb/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMb/n;->destroyImmediate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LMb/n;


# direct methods
.method public constructor <init>(LMb/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LMb/n$b;->b:LMb/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LMb/n$b;->b:LMb/n;

    invoke-static {v0}, LMb/n;->D0(LMb/n;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LMb/n$b;->b:LMb/n;

    invoke-static {v0}, LMb/n;->D0(LMb/n;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, LPc/a;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, LMb/n$b;->b:LMb/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LMb/n;->E0(LMb/n;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    :cond_0
    return-void
.end method
