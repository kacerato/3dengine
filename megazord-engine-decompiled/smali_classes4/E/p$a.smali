.class public final LE/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/m;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:LE/p$b;

.field public b:I


# direct methods
.method public constructor <init>(LE/p$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE/p$a;->a:LE/p$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LE/p$a;->a:LE/p$b;

    invoke-virtual {v0, p0}, LE/d;->c(LE/m;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, LE/p$a;->b:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LE/p$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LE/p$a;

    iget v0, p0, LE/p$a;->b:I

    iget p1, p1, LE/p$a;->b:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LE/p$a;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LE/p$a;->b:I

    invoke-static {v0}, LE/p;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
