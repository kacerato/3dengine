.class public final LG2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFF)LG2/c;
    .locals 2

    const/16 p4, 0xff

    const/4 v0, 0x0

    invoke-static {p4, v0, p2, p3, p1}, LG2/v;->n(IIFFF)I

    move-result v1

    invoke-static {v0, p4, p2, p3, p1}, LG2/v;->n(IIFFF)I

    move-result p1

    invoke-static {v1, p1}, LG2/c;->b(II)LG2/c;

    move-result-object p1

    return-object p1
.end method
