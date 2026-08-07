.class public LWg/e$a;
.super LWg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWg/e;
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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LTg/s;


# direct methods
.method public constructor <init>(Ljava/util/List;LTg/s;LTg/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "LTg/s;",
            "LTg/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, LWg/d;-><init>(LTg/m;)V

    iput-object p1, p0, LWg/e$a;->b:Ljava/util/List;

    iput-object p2, p0, LWg/e$a;->c:LTg/s;

    return-void
.end method

.method public static synthetic a(LWg/e$a;)LTg/s;
    .locals 0

    iget-object p0, p0, LWg/e$a;->c:LTg/s;

    return-object p0
.end method

.method public static synthetic b(LWg/e$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LWg/e$a;->b:Ljava/util/List;

    return-object p0
.end method
