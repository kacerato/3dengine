.class public Lq0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/l$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "BackendRegistry"

.field public static final e:Ljava/lang/String; = "backend:"


# instance fields
.field public final a:Lq0/l$a;

.field public final b:Lq0/j;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq0/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq0/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    new-instance v0, Lq0/l$a;

    invoke-direct {v0, p1}, Lq0/l$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lq0/l;-><init>(Lq0/l$a;Lq0/j;)V

    return-void
.end method

.method public constructor <init>(Lq0/l$a;Lq0/j;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq0/l;->c:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lq0/l;->a:Lq0/l$a;

    .line 5
    iput-object p2, p0, Lq0/l;->b:Lq0/j;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lq0/n;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lq0/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq0/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lq0/l;->a:Lq0/l$a;

    invoke-virtual {v0, p1}, Lq0/l$a;->b(Ljava/lang/String;)Lq0/d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lq0/l;->b:Lq0/j;

    invoke-virtual {v1, p1}, Lq0/j;->a(Ljava/lang/String;)Lq0/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lq0/d;->create(Lq0/i;)Lq0/n;

    move-result-object v0

    iget-object v1, p0, Lq0/l;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
