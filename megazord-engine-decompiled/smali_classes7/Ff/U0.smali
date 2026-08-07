.class public final LFf/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation


# static fields
.field public static final a:LFf/U0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Z
    .annotation build Ldg/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LFf/U0;

    invoke-direct {v0}, LFf/U0;-><init>()V

    sput-object v0, LFf/U0;->a:LFf/U0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0
    .annotation build LFf/f0;
    .end annotation

    return-void
.end method
