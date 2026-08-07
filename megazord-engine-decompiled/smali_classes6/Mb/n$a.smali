.class public LMb/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMb/n;->apply()V
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

    iput-object p1, p0, LMb/n$a;->b:LMb/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LMb/n$a;->b:LMb/n;

    invoke-static {v0}, LMb/n;->D0(LMb/n;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    iget-object v1, p0, LMb/n$a;->b:LMb/n;

    invoke-static {v1}, LMb/n;->C0(LMb/n;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->B(Ljava/lang/Runnable;)Z

    return-void
.end method
