.class public final LFf/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LFf/G;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LFf/G;

    invoke-direct {v0}, LFf/G;-><init>()V

    sput-object v0, LFf/G;->a:LFf/G;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()LFf/F;
    .locals 4
    .annotation runtime Ldg/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LFf/F;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LFf/F;-><init>(III)V

    return-object v0
.end method
