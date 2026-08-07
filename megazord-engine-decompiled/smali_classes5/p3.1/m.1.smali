.class public final synthetic Lp3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lp3/o;

.field public final synthetic c:Ljava/util/concurrent/Callable;

.field public final synthetic d:Lp3/p$b;


# direct methods
.method public synthetic constructor <init>(Lp3/o;Ljava/util/concurrent/Callable;Lp3/p$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/m;->b:Lp3/o;

    iput-object p2, p0, Lp3/m;->c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lp3/m;->d:Lp3/p$b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp3/m;->b:Lp3/o;

    iget-object v1, p0, Lp3/m;->c:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lp3/m;->d:Lp3/p$b;

    invoke-static {v0, v1, v2}, Lp3/o;->g(Lp3/o;Ljava/util/concurrent/Callable;Lp3/p$b;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
