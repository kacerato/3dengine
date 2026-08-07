.class public abstract LNe/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LNe/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LNe/c;

    invoke-direct {v0}, LNe/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(LNe/a;)V
    .param p1    # LNe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(LNe/a;)V
    .param p1    # LNe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract d(LNe/a;)Landroid/graphics/drawable/Drawable;
    .param p1    # LNe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
