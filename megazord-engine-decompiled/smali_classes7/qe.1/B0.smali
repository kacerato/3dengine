.class public Lqe/B0;
.super Lqe/k0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lte/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/k0;-><init>(Lte/h;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqe/k0;

    iget-object v1, p0, Lqe/k0;->d:Lte/h;

    invoke-direct {v0, v1}, Lqe/k0;-><init>(Lte/h;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/h;
    .locals 2

    new-instance v0, Lqe/B0;

    iget-object v1, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->subList(II)Lte/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/B0;-><init>(Lte/h;)V

    return-object v0
.end method
