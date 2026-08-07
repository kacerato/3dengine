.class public Lbd/M$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:[Lbd/M;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lbd/M$b;->a:I

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lbd/M;

    iput-object v0, p0, Lbd/M$b;->b:[Lbd/M;

    return-void
.end method

.method public synthetic constructor <init>(Lbd/M$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lbd/M$b;-><init>()V

    return-void
.end method
