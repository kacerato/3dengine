.class public Lqe/A0;
.super Lqe/Z;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lte/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/Z;-><init>(Lte/e;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqe/Z;

    iget-object v1, p0, Lqe/Z;->d:Lte/e;

    invoke-direct {v0, v1}, Lqe/Z;-><init>(Lte/e;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/e;
    .locals 2

    new-instance v0, Lqe/A0;

    iget-object v1, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v1, p1, p2}, Lte/e;->subList(II)Lte/e;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/A0;-><init>(Lte/e;)V

    return-object v0
.end method
