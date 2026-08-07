.class public abstract LIe/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIe/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LIe/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LIe/j$a;

    invoke-direct {v0}, LIe/j$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lpi/v;)Ljava/util/List;
    .param p1    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi/v;",
            ")",
            "Ljava/util/List<",
            "Lpi/v;",
            ">;"
        }
    .end annotation
.end method
