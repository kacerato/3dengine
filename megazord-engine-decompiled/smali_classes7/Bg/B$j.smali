.class public final LBg/B$j;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/B;->f(Ljava/lang/Iterable;Leg/p;)LBg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/a<",
        "[TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$1\n*L\n1#1,332:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$1\n*L\n1#1,332:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:[LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LBg/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LBg/i<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/B$j;->b:[LBg/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LBg/B$j;->b:[LBg/i;

    array-length v0, v0

    const/4 v1, 0x0

    const-string v2, "T?"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->y(ILjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LBg/B$j;->c()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
