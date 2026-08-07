.class public final Lng/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lng/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lng/v;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lng/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lng/v;-><init>(IIILkotlin/jvm/internal/x;)V

    return-object v0
.end method
