.class public Lt6/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGb/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/f;->w2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Lt6/f;


# direct methods
.method public constructor <init>(Lt6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt6/f$d;->b:Lt6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lt6/f$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 1

    iget-object v0, p0, Lt6/f$d;->b:Lt6/f;

    invoke-static {v0}, Lt6/f;->v1(Lt6/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lt6/f$d$a;

    invoke-direct {v0, p0}, Lt6/f$d$a;-><init>(Lt6/f$d;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
