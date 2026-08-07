.class public final LVd/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVd/c;->sendReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LVd/c;


# direct methods
.method public constructor <init>(LVd/c;)V
    .locals 0

    iput-object p1, p0, LVd/c$g;->b:LVd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LVd/c$g;->b:LVd/c;

    invoke-static {v0}, LVd/c;->a(LVd/c;)LVd/c$b;

    move-result-object v0

    invoke-interface {v0}, LVd/c$b;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWd/d;

    iget-object v2, p0, LVd/c$g;->b:LVd/c;

    invoke-static {v2}, LVd/c;->a(LVd/c;)LVd/c$b;

    move-result-object v2

    invoke-interface {v2}, LVd/c$b;->getInstance()LVd/b;

    move-result-object v2

    invoke-interface {v1, v2}, LWd/d;->i(LVd/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method
