.class public Ls6/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/d;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo6/a;

.field public final synthetic c:Ls6/d;


# direct methods
.method public constructor <init>(Ls6/d;Lo6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$so"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ls6/d$d;->c:Ls6/d;

    iput-object p2, p0, Ls6/d$d;->b:Lo6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ls6/d$d;->b:Lo6/a;

    invoke-virtual {v0}, Lo6/a;->g()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls6/d;->v1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls6/d$d;->b:Lo6/a;

    invoke-virtual {v1}, Lo6/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ln6/b$k;->NotTemplate:Ln6/b$k;

    goto :goto_0

    :cond_0
    sget-object v1, Ln6/b$k;->DonotMatter:Ln6/b$k;

    :goto_0
    :try_start_0
    iget-object v2, p0, Ls6/d$d;->b:Lo6/a;

    invoke-virtual {v2}, Lo6/a;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ls6/d$d;->b:Lo6/a;

    invoke-static {v3}, Ls6/d;->w1(Lo6/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Ln6/b;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln6/b$k;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ls6/d$d;->c:Ls6/d;

    invoke-static {v1}, Ls6/d;->x1(Ls6/d;)I

    move-result v1

    iget-object v2, p0, Ls6/d$d;->b:Lo6/a;

    invoke-virtual {v2}, Lo6/a;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, Ls6/d;->y1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ls6/d$d$a;

    invoke-direct {v1, p0, v0}, Ls6/d$d$a;-><init>(Ls6/d$d;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ls6/d$d$b;

    invoke-direct {v1, p0, v0}, Ls6/d$d$b;-><init>(Ls6/d$d;Ljava/lang/RuntimeException;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
