.class public Lqe/C0;
.super Lqe/J0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lte/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/J0;-><init>(Lte/i;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqe/J0;

    iget-object v1, p0, Lqe/J0;->d:Lte/i;

    invoke-direct {v0, v1}, Lqe/J0;-><init>(Lte/i;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/i;
    .locals 2

    new-instance v0, Lqe/C0;

    iget-object v1, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v1, p1, p2}, Lte/i;->subList(II)Lte/i;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/C0;-><init>(Lte/i;)V

    return-object v0
.end method
