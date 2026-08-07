.class public Lqe/w0;
.super Lqe/g;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final f:J = -0x2348186ae0b7b9b1L


# direct methods
.method public constructor <init>(Lte/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/g;-><init>(Lte/a;)V

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqe/g;

    iget-object v1, p0, Lqe/g;->d:Lte/a;

    invoke-direct {v0, v1}, Lqe/g;-><init>(Lte/a;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lte/a;
    .locals 2

    new-instance v0, Lqe/w0;

    iget-object v1, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v1, p1, p2}, Lte/a;->subList(II)Lte/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/w0;-><init>(Lte/a;)V

    return-object v0
.end method
