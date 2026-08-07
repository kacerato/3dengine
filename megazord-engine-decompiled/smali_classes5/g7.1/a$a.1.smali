.class public Lg7/a$a;
.super LZ5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a;->d2()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZ5/c$n0<",
        "LSb/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg7/a;


# direct methods
.method public constructor <init>(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$a;->a:Lg7/a;

    invoke-direct {p0}, LZ5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, LSb/b;

    invoke-virtual {p0, p1}, Lg7/a$a;->e(LSb/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(LSb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg7/a$a;->a:Lg7/a;

    invoke-static {v0, p1}, Lg7/a;->C1(Lg7/a;LSb/b;)V

    iget-object p1, p0, Lg7/a$a;->a:Lg7/a;

    invoke-static {p1}, Lg7/a;->D1(Lg7/a;)V

    :cond_0
    return-void
.end method

.method public e(LSb/b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    sget-object v0, Lg7/a$x;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, LZ5/c$n0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Automatic"

    return-object p1

    :cond_1
    const-string p1, "Grid by cell count"

    return-object p1

    :cond_2
    const-string p1, "Grid by cell size"

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, LSb/b;

    invoke-virtual {p0, p1}, Lg7/a$a;->d(LSb/b;)V

    return-void
.end method
