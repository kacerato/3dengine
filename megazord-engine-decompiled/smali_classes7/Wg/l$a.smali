.class public LWg/l$a;
.super LWg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;LTg/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "LTg/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, LWg/d;-><init>(LTg/m;)V

    iput-object p1, p0, LWg/l$a;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LWg/l$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LWg/l$a;->b:Ljava/util/List;

    return-object p0
.end method
