.class public Lb2/g$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final d:F = 3.4028235E38f


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lb2/g$e;->a:F

    .line 5
    iput p2, p0, Lb2/g$e;->b:F

    .line 6
    iput p3, p0, Lb2/g$e;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lb2/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb2/g$e;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb2/g$e;)V
    .locals 2
    .param p1    # Lb2/g$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    iget v0, p1, Lb2/g$e;->a:F

    iget v1, p1, Lb2/g$e;->b:F

    iget p1, p1, Lb2/g$e;->c:F

    invoke-direct {p0, v0, v1, p1}, Lb2/g$e;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lb2/g$e;->c:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(FFF)V
    .locals 0

    iput p1, p0, Lb2/g$e;->a:F

    iput p2, p0, Lb2/g$e;->b:F

    iput p3, p0, Lb2/g$e;->c:F

    return-void
.end method

.method public c(Lb2/g$e;)V
    .locals 2
    .param p1    # Lb2/g$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lb2/g$e;->a:F

    iget v1, p1, Lb2/g$e;->b:F

    iget p1, p1, Lb2/g$e;->c:F

    invoke-virtual {p0, v0, v1, p1}, Lb2/g$e;->b(FFF)V

    return-void
.end method
