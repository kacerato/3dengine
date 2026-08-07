.class public LL9/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL9/c;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LL9/c;


# direct methods
.method public constructor <init>(LL9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL9/c$c;->b:LL9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LL9/c$c;->b:LL9/c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, LL9/c;->A(LL9/c;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, LL9/c$c;->b:LL9/c;

    invoke-static {v0}, LL9/c;->z(LL9/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, LL9/c$c;->b:LL9/c;

    invoke-static {v1}, LL9/c;->B(LL9/c;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, LL9/c$c;->b:LL9/c;

    invoke-static {v2}, LL9/c;->C(LL9/c;)J

    move-result-wide v2

    iget-object v4, p0, LL9/c$c;->b:LL9/c;

    invoke-static {v4}, LL9/c;->v(LL9/c;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
