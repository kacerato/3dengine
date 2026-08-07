.class public final LDg/e$c;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDg/e;->e(Ljava/util/concurrent/CompletionStage;)Lwg/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/p<",
        "TT;",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lwg/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/y<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/y<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LDg/e$c;->b:Lwg/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, LDg/e$c;->b:Lwg/y;

    invoke-interface {p2, p1}, Lwg/y;->w(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, LDg/e$c;->b:Lwg/y;

    instance-of v0, p2, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/CompletionException;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :cond_3
    :goto_1
    invoke-interface {p1, p2}, Lwg/y;->b(Ljava/lang/Throwable;)Z

    move-result p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p2, LQf/l;->b:LQf/l;

    invoke-static {p2, p1}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    :goto_4
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, LDg/e$c;->c(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
