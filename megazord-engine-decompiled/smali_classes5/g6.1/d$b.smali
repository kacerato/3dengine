.class public Lg6/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/d;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lg6/d;


# direct methods
.method public constructor <init>(Lg6/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$waitSeconds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg6/d$b;->c:Lg6/d;

    iput p2, p0, Lg6/d$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lg6/d$b;->b:I

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lg6/d$b;->c:Lg6/d;

    invoke-static {v1}, Lg6/d;->q(Lg6/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lg6/d$b$a;

    invoke-direct {v1, p0, v0}, Lg6/d$b$a;-><init>(Lg6/d$b;I)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    iget-object v0, p0, Lg6/d$b;->c:Lg6/d;

    invoke-static {v0}, Lg6/d;->q(Lg6/d;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lg6/d$b$b;

    invoke-direct {v0, p0}, Lg6/d$b$b;-><init>(Lg6/d$b;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
