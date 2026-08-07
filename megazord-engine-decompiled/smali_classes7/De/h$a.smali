.class public LDe/h$a;
.super Lue/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDe/h;->we(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:LDe/h;


# direct methods
.method public constructor <init>(LDe/h;I)V
    .locals 0

    iput-object p1, p0, LDe/h$a;->g:LDe/h;

    invoke-direct {p0, p2}, Lue/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    iget-object v0, p0, Lue/e;->b:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, LDe/h$a;->g:LDe/h;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iget-object v0, p0, Lue/e;->b:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lue/e;->b:[I

    :cond_0
    return-void
.end method
