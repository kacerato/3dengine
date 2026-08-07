.class public abstract Lo0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation runtime Lt3/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lo0/j;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo0/m;",
            ">;)",
            "Lo0/j;"
        }
    .end annotation

    new-instance v0, Lo0/d;

    invoke-direct {v0, p0}, Lo0/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Ls3/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv3/e;

    invoke-direct {v0}, Lv3/e;-><init>()V

    sget-object v1, Lo0/b;->b:Lu3/a;

    invoke-virtual {v0, v1}, Lv3/e;->k(Lu3/a;)Lv3/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv3/e;->l(Z)Lv3/e;

    move-result-object v0

    invoke-virtual {v0}, Lv3/e;->j()Ls3/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo0/m;",
            ">;"
        }
    .end annotation

    .annotation runtime Lt3/a$a;
        name = "logRequest"
    .end annotation
.end method
