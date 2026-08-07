.class public final Lyg/z$b;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/z;->b(Lyg/B;Leg/a;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;
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
.field public static final b:Lyg/z$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg/z$b;

    invoke-direct {v0}, Lyg/z$b;-><init>()V

    sput-object v0, Lyg/z$b;->b:Lyg/z$b;

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
    invoke-virtual {p0}, Lyg/z$b;->invoke()V

    sget-object v0, LFf/P0;->a:LFf/P0;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    return-void
.end method
