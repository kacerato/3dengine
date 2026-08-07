.class public final synthetic Lp3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:Lp3/p$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lp3/p$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/l;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lp3/l;->c:Lp3/p$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lp3/l;->b:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lp3/l;->c:Lp3/p$b;

    invoke-static {v0, v1}, Lp3/o;->d(Ljava/util/concurrent/Callable;Lp3/p$b;)V

    return-void
.end method
