.class public final LBg/B$v;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/B;->r()Leg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final b:LBg/B$v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LBg/B$v;

    invoke-direct {v0}, LBg/B$v;-><init>()V

    sput-object v0, LBg/B$v;->b:LBg/B$v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LBg/B$v;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
