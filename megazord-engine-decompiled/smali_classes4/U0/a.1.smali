.class public abstract LU0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LT0/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;)LU0/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LU0/P;

    invoke-static {p0}, LU0/t;->m(Landroid/app/Activity;)LU0/t;

    move-result-object p0

    invoke-direct {v0, p0}, LU0/P;-><init>(LU0/t;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Runnable;)LU0/a;
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
