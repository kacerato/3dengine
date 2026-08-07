.class public final Ldf/X1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/X1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:J

.field public final c:Ldf/X1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/X1$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLdf/X1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ldf/X1$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldf/X1$a$a;->b:J

    iput-object p3, p0, Ldf/X1$a$a;->c:Ldf/X1$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldf/X1$a$a;->c:Ldf/X1$a;

    invoke-static {v0}, Ldf/X1$a;->s(Ldf/X1$a;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ldf/X1$a;->u(Ldf/X1$a;)Laf/n;

    move-result-object v1

    invoke-interface {v1, p0}, Laf/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Ldf/X1$a;->g1:Z

    invoke-virtual {v0}, Ldf/X1$a;->dispose()V

    :goto_0
    invoke-virtual {v0}, Llf/n;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ldf/X1$a;->v()V

    :cond_1
    return-void
.end method
