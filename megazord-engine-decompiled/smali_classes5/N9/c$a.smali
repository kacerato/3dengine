.class public LN9/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN9/c;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LN9/c;


# direct methods
.method public constructor <init>(LN9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LN9/c$a;->b:LN9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LN9/c$a;->b:LN9/c;

    invoke-static {v0}, LN9/c;->a(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LN9/c$a;->b:LN9/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LN9/c;->c(LN9/c;Z)Z

    return-void
.end method
