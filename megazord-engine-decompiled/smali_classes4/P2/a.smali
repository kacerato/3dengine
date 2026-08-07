.class public LP2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP2/a$a;,
        LP2/a$b;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public synthetic constructor <init>(ZLP2/a$a;LP2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LP2/a;->a:Z

    invoke-static {p2}, LP2/a$a;->e(LP2/a$a;)I

    move-result p1

    iput p1, p0, LP2/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LP2/a;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, LP2/a;->a:Z

    return v0
.end method
