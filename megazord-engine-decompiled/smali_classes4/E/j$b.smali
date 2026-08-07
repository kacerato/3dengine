.class public final LE/j$b;
.super LE/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE/d<",
        "LE/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LE/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LE/m;
    .locals 1

    invoke-virtual {p0}, LE/j$b;->d()LE/j$a;

    move-result-object v0

    return-object v0
.end method

.method public d()LE/j$a;
    .locals 1

    new-instance v0, LE/j$a;

    invoke-direct {v0, p0}, LE/j$a;-><init>(LE/j$b;)V

    return-object v0
.end method

.method public e(ILjava/lang/Class;)LE/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "LE/j$a;"
        }
    .end annotation

    invoke-virtual {p0}, LE/d;->b()LE/m;

    move-result-object v0

    check-cast v0, LE/j$a;

    invoke-virtual {v0, p1, p2}, LE/j$a;->b(ILjava/lang/Class;)V

    return-object v0
.end method
