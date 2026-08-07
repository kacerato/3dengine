.class public Ls6/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/d$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ls6/d$d;


# direct methods
.method public constructor <init>(Ls6/d$d;Ljava/util/List;)V
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

    iput-object p1, p0, Ls6/d$d$a;->c:Ls6/d$d;

    iput-object p2, p0, Ls6/d$d$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ls6/d$d$a;->c:Ls6/d$d;

    iget-object v0, v0, Ls6/d$d;->c:Ls6/d;

    invoke-static {v0}, Ls6/d;->z1(Ls6/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls6/d$d$a;->c:Ls6/d$d;

    iget-object v0, v0, Ls6/d$d;->c:Ls6/d;

    invoke-static {v0, v1}, Ls6/d;->A1(Ls6/d;Z)Z

    iget-object v0, p0, Ls6/d$d$a;->c:Ls6/d$d;

    iget-object v0, v0, Ls6/d$d;->c:Ls6/d;

    invoke-static {v0}, Ls6/d;->B1(Ls6/d;)Ls6/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZ7/d;->m()V

    :cond_0
    iget-object v0, p0, Ls6/d$d$a;->c:Ls6/d$d;

    iget-object v0, v0, Ls6/d$d;->c:Ls6/d;

    iget-object v2, p0, Ls6/d$d$a;->b:Ljava/util/List;

    invoke-static {v0, v2}, Ls6/d;->C1(Ls6/d;Ljava/util/List;)V

    iget-object v0, p0, Ls6/d$d$a;->c:Ls6/d$d;

    iget-object v0, v0, Ls6/d$d;->c:Ls6/d;

    invoke-static {v0, v1}, Ls6/d;->p1(Ls6/d;Z)Z

    iget-object v0, p0, Ls6/d$d$a;->c:Ls6/d$d;

    iget-object v0, v0, Ls6/d$d;->c:Ls6/d;

    invoke-static {v0, v1}, Ls6/d;->E1(Ls6/d;Z)Z

    return-void
.end method
