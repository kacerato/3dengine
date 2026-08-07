.class public final Lcom/google/common/cache/CacheLoader$c;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/CacheLoader<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final b:LR2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/Q<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LR2/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/Q<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/Q;

    iput-object p1, p0, Lcom/google/common/cache/CacheLoader$c;->b:LR2/Q;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/common/cache/CacheLoader$c;->b:LR2/Q;

    invoke-interface {p1}, LR2/Q;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
