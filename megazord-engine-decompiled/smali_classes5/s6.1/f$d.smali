.class public Ls6/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/f;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls6/f;


# direct methods
.method public constructor <init>(Ls6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls6/f$d;->b:Ls6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v0}, Ls6/f;->q1(Ls6/f;)Lo6/a;

    move-result-object v0

    invoke-virtual {v0}, Lo6/a;->g()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls6/f;->A1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v1}, Ls6/f;->q1(Ls6/f;)Lo6/a;

    move-result-object v1

    invoke-virtual {v1}, Lo6/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ln6/b$k;->NotTemplate:Ln6/b$k;

    goto :goto_0

    :cond_0
    sget-object v1, Ln6/b$k;->DonotMatter:Ln6/b$k;

    :goto_0
    iget-object v2, p0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v2}, Ls6/f;->q1(Ls6/f;)Lo6/a;

    move-result-object v2

    invoke-virtual {v2}, Lo6/a;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v3}, Ls6/f;->q1(Ls6/f;)Lo6/a;

    move-result-object v3

    invoke-static {v3}, Ls6/f;->B1(Lo6/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Ln6/b;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln6/b$k;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v1}, Ls6/f;->C1(Ls6/f;)I

    move-result v1

    iget-object v2, p0, Ls6/f$d;->b:Ls6/f;

    invoke-static {v2}, Ls6/f;->q1(Ls6/f;)Lo6/a;

    move-result-object v2

    invoke-virtual {v2}, Lo6/a;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, Ls6/f;->D1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ls6/f$d$a;

    invoke-direct {v1, p0, v0}, Ls6/f$d$a;-><init>(Ls6/f$d;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
