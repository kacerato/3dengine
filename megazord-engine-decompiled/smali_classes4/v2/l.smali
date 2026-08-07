.class public final Lv2/l;
.super Lv2/g;
.source "SourceFile"


# instance fields
.field public final b:Lv2/g;

.field public final c:F


# direct methods
.method public constructor <init>(Lv2/g;F)V
    .locals 0
    .param p1    # Lv2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lv2/g;-><init>()V

    iput-object p1, p0, Lv2/l;->b:Lv2/g;

    iput p2, p0, Lv2/l;->c:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lv2/l;->b:Lv2/g;

    invoke-virtual {v0}, Lv2/g;->a()Z

    move-result v0

    return v0
.end method

.method public b(FFFLv2/q;)V
    .locals 2
    .param p4    # Lv2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lv2/l;->b:Lv2/g;

    iget v1, p0, Lv2/l;->c:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lv2/g;->b(FFFLv2/q;)V

    return-void
.end method
