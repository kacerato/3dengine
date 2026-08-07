.class public Lbf/y;
.super Lbf/w;
.source "SourceFile"


# instance fields
.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbf/w;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
