.class public Lqe/z0;
.super Lqe/N;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lte/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/N;-><init>(Lte/d;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqe/N;

    iget-object v1, p0, Lqe/N;->d:Lte/d;

    invoke-direct {v0, v1}, Lqe/N;-><init>(Lte/d;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/d;
    .locals 2

    new-instance v0, Lqe/z0;

    iget-object v1, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v1, p1, p2}, Lte/d;->subList(II)Lte/d;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/z0;-><init>(Lte/d;)V

    return-object v0
.end method
