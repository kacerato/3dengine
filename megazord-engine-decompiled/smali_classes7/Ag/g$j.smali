.class public final LAg/g$j;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAg/g;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/a<",
        "LFf/P0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LAg/g$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LAg/g$j;

    invoke-direct {v0}, LAg/g$j;-><init>()V

    sput-object v0, LAg/g$j;->b:LAg/g$j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LAg/g$j;->invoke()V

    sget-object v0, LFf/P0;->a:LFf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    invoke-static {}, LAg/g;->a()LAg/b;

    move-result-object v0

    invoke-virtual {v0}, LAg/b;->r()V

    return-void
.end method
