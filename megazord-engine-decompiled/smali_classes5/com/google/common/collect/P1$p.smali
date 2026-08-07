.class public final Lcom/google/common/collect/P1$p;
.super Lcom/google/common/collect/P1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$b<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final i:J = 0x3L


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1$q;Lcom/google/common/collect/P1$q;LR2/m;LR2/m;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$q;",
            "Lcom/google/common/collect/P1$q;",
            "LR2/m<",
            "Ljava/lang/Object;",
            ">;",
            "LR2/m<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/google/common/collect/P1$b;-><init>(Lcom/google/common/collect/P1$q;Lcom/google/common/collect/P1$q;LR2/m;LR2/m;ILjava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private M0(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$b;->K0(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/P1$b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$b;->J0(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private N0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$b;->g:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private O0(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$b;->L0(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
