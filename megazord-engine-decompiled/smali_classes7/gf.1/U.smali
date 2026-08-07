.class public final Lgf/U;
.super LTe/B;
.source "SourceFile"

# interfaces
.implements Laf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/B<",
        "Ljava/lang/Object;",
        ">;",
        "Laf/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LTe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/B<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgf/U;

    invoke-direct {v0}, Lgf/U;-><init>()V

    sput-object v0, Lgf/U;->b:LTe/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, LYe/e;->c(LTe/I;)V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
