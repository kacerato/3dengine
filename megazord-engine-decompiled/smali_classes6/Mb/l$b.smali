.class public LMb/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMb/l;->destroyImmediate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LMb/l;


# direct methods
.method public constructor <init>(LMb/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LMb/l$b;->b:LMb/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LMb/l$b;->b:LMb/l;

    invoke-static {v0}, LMb/l;->C0(LMb/l;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMb/l$b;->b:LMb/l;

    invoke-static {v0}, LMb/l;->C0(LMb/l;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, LPc/a;->destroyImmediate()V

    iget-object v0, p0, LMb/l$b;->b:LMb/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LMb/l;->D0(LMb/l;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    :cond_0
    return-void
.end method
