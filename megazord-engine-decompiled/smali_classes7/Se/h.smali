.class public abstract LSe/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lpi/v;Lpi/v;)V
    .locals 1
    .param p0    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object v0

    invoke-virtual {p0, p1}, Lpi/v;->d(Lpi/v;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
