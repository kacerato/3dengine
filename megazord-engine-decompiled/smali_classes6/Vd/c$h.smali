.class public final LVd/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVd/c;->sendStateChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LVd/c;

.field public final synthetic c:LVd/a$d;


# direct methods
.method public constructor <init>(LVd/c;LVd/a$d;)V
    .locals 0

    iput-object p1, p0, LVd/c$h;->b:LVd/c;

    iput-object p2, p0, LVd/c$h;->c:LVd/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LVd/c$h;->b:LVd/c;

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

    iget-object v2, p0, LVd/c$h;->b:LVd/c;

    invoke-static {v2}, LVd/c;->a(LVd/c;)LVd/c$b;

    move-result-object v2

    invoke-interface {v2}, LVd/c$b;->getInstance()LVd/b;

    move-result-object v2

    iget-object v3, p0, LVd/c$h;->c:LVd/a$d;

    invoke-interface {v1, v2, v3}, LWd/d;->v(LVd/b;LVd/a$d;)V

    goto :goto_0

    :cond_0
    return-void
.end method
