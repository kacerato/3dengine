.class public final synthetic LQ1/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LQ1/l;


# direct methods
.method public synthetic constructor <init>(LQ1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ1/S;->b:LQ1/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    iget-object v1, p0, LQ1/S;->b:LQ1/l;

    invoke-virtual {v1, v0}, LQ1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
