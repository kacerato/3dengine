.class public LNe/c;
.super LNe/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LNe/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LNe/a;)V
    .locals 0
    .param p1    # LNe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(LNe/a;)V
    .locals 0
    .param p1    # LNe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public d(LNe/a;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # LNe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
