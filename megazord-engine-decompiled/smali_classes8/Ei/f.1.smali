.class public LEi/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LEi/x;II)LEi/q;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "tileX",
            "tileY"
        }
    .end annotation

    invoke-static {p1}, LEi/w;->d(LEi/x;)LEi/q;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, LEi/q;->a:LEi/r;

    iput p2, v0, LEi/r;->c:I

    iput p3, v0, LEi/r;->d:I

    :cond_0
    return-object p1
.end method
