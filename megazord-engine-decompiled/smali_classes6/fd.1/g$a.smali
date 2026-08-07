.class public Lfd/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfd/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lbd/d;

.field public final synthetic e:Lfd/g;


# direct methods
.method public constructor <init>(Lfd/g;IILbd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$itensPerThread",
            "val$increment",
            "val$finishCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lfd/g$a;->e:Lfd/g;

    iput p2, p0, Lfd/g$a;->b:I

    iput p3, p0, Lfd/g$a;->c:I

    iput-object p4, p0, Lfd/g$a;->d:Lbd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Lfd/g$a;->b:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lfd/g$a;->c:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v2}, Lfd/g;->a(Lfd/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    if-le v2, v1, :cond_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v3}, Lfd/g;->a(Lfd/g;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v4}, Lfd/g;->c(Lfd/g;)Lfd/g$b;

    move-result-object v4

    iget-object v5, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v5}, Lfd/g;->b(Lfd/g;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v1, v5}, Lfd/g$b;->execute(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v4, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v4}, Lfd/g;->c(Lfd/g;)Lfd/g$b;

    move-result-object v4

    iget-object v5, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v5}, Lfd/g;->b(Lfd/g;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v3, v1, v5}, Lfd/g$b;->onError(Ljava/lang/Exception;Ljava/lang/Error;ILjava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :goto_2
    iget-object v4, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v4}, Lfd/g;->c(Lfd/g;)Lfd/g$b;

    move-result-object v4

    iget-object v5, p0, Lfd/g$a;->e:Lfd/g;

    invoke-static {v5}, Lfd/g;->b(Lfd/g;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v2, v1, v5}, Lfd/g$b;->onError(Ljava/lang/Exception;Ljava/lang/Error;ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfd/g$a;->d:Lbd/d;

    invoke-virtual {v0}, Lbd/d;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lfd/g$a;->d:Lbd/d;

    invoke-virtual {v0}, Lbd/d;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lfd/g$a;->d:Lbd/d;

    invoke-virtual {v0}, Lbd/d;->a()V

    :goto_5
    return-void
.end method
