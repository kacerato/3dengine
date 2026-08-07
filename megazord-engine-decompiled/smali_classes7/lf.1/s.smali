.class public Llf/s;
.super Llf/o;
.source "SourceFile"


# instance fields
.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Llf/o;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Llf/s;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
