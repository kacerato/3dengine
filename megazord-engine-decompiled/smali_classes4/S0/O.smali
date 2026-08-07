.class public final LS0/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field public static final a:[LS0/L;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [LS0/L;

    sget-object v1, LS0/P;->c:LS0/N;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, LS0/P;->d:LS0/N;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, LS0/O;->a:[LS0/L;

    return-void
.end method
