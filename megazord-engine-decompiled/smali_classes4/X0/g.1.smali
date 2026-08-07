.class public final LX0/g;
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

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LX0/M0;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
