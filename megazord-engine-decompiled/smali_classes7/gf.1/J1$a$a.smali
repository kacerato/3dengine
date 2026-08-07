.class public final Lgf/J1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/J1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:J

.field public final c:Lgf/J1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/J1$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLgf/J1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lgf/J1$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lgf/J1$a$a;->b:J

    iput-object p3, p0, Lgf/J1$a$a;->c:Lgf/J1$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lgf/J1$a$a;->c:Lgf/J1$a;

    invoke-static {v0}, Lgf/J1$a;->n(Lgf/J1$a;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lgf/J1$a;->o(Lgf/J1$a;)Laf/n;

    move-result-object v1

    invoke-interface {v1, p0}, Laf/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgf/J1$a;->W:Z

    invoke-virtual {v0}, Lgf/J1$a;->p()V

    :goto_0
    invoke-virtual {v0}, Lbf/v;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lgf/J1$a;->q()V

    :cond_1
    return-void
.end method
