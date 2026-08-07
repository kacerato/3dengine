.class public Ls6/f$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/f$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ls6/f$d;


# direct methods
.method public constructor <init>(Ls6/f$d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ls6/f$d$a;->c:Ls6/f$d;

    iput-object p2, p0, Ls6/f$d$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ls6/f$d$a;->c:Ls6/f$d;

    iget-object v0, v0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v0}, Ls6/f;->E1(Ls6/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls6/f$d$a;->c:Ls6/f$d;

    iget-object v0, v0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v0, v1}, Ls6/f;->F1(Ls6/f;Z)Z

    iget-object v0, p0, Ls6/f$d$a;->c:Ls6/f$d;

    iget-object v0, v0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v0}, Ls6/f;->G1(Ls6/f;)Ls6/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZ7/d;->m()V

    :cond_0
    iget-object v0, p0, Ls6/f$d$a;->c:Ls6/f$d;

    iget-object v0, v0, Ls6/f$d;->b:Ls6/f;

    iget-object v2, p0, Ls6/f$d$a;->b:Ljava/util/List;

    invoke-static {v0, v2}, Ls6/f;->r1(Ls6/f;Ljava/util/List;)V

    iget-object v0, p0, Ls6/f$d$a;->c:Ls6/f$d;

    iget-object v0, v0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v0, v1}, Ls6/f;->z1(Ls6/f;Z)Z

    iget-object v0, p0, Ls6/f$d$a;->c:Ls6/f$d;

    iget-object v0, v0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v0, v1}, Ls6/f;->t1(Ls6/f;Z)Z

    return-void
.end method
