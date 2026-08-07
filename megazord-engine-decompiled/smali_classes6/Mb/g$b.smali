.class public LMb/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMb/g;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LMb/g;


# direct methods
.method public constructor <init>(LMb/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LMb/g$b;->b:LMb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LMb/g$b;->b:LMb/g;

    invoke-static {v0}, LMb/g;->E0(LMb/g;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    iget-object v1, p0, LMb/g$b;->b:LMb/g;

    invoke-static {v1}, LMb/g;->D0(LMb/g;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->B(Ljava/lang/Runnable;)Z

    return-void
.end method
