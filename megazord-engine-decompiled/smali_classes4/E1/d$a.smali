.class public LE1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LE1/d$a;->a:I

    iput v0, p0, LE1/d$a;->b:I

    return-void
.end method


# virtual methods
.method public a()LE1/d;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, LE1/d$a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v4, "Activity type not set."

    invoke-static {v0, v4}, LX0/A;->y(ZLjava/lang/Object;)V

    iget v0, p0, LE1/d$a;->b:I

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Activity transition type not set."

    invoke-static {v1, v0}, LX0/A;->y(ZLjava/lang/Object;)V

    new-instance v0, LE1/d;

    iget v1, p0, LE1/d$a;->a:I

    iget v2, p0, LE1/d$a;->b:I

    invoke-direct {v0, v1, v2}, LE1/d;-><init>(II)V

    return-object v0
.end method

.method public b(I)LE1/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LE1/d;->c0(I)V

    iput p1, p0, LE1/d$a;->b:I

    return-object p0
.end method

.method public c(I)LE1/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, LE1/d$a;->a:I

    return-object p0
.end method
