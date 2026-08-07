.class public final Lef/u;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Laf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/s<",
        "Ljava/lang/Object;",
        ">;",
        "Laf/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lef/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lef/u;

    invoke-direct {v0}, Lef/u;-><init>()V

    sput-object v0, Lef/u;->b:Lef/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/s;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t1(LTe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, LYe/e;->b(LTe/v;)V

    return-void
.end method
