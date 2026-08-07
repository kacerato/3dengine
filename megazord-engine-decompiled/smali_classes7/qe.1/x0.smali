.class public Lqe/x0;
.super Lqe/r;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lte/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/r;-><init>(Lte/b;)V

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqe/r;

    iget-object v1, p0, Lqe/r;->d:Lte/b;

    invoke-direct {v0, v1}, Lqe/r;-><init>(Lte/b;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/b;
    .locals 2

    new-instance v0, Lqe/x0;

    iget-object v1, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v1, p1, p2}, Lte/b;->subList(II)Lte/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/x0;-><init>(Lte/b;)V

    return-object v0
.end method
