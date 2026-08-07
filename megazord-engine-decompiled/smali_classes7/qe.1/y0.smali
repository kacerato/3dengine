.class public Lqe/y0;
.super Lqe/C;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lte/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/C;-><init>(Lte/c;)V

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqe/C;

    iget-object v1, p0, Lqe/C;->d:Lte/c;

    invoke-direct {v0, v1}, Lqe/C;-><init>(Lte/c;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/c;
    .locals 2

    new-instance v0, Lqe/y0;

    iget-object v1, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->subList(II)Lte/c;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/y0;-><init>(Lte/c;)V

    return-object v0
.end method
