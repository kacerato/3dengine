.class public LWg/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LWg/c;->l(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "LTg/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LWg/c;


# direct methods
.method public constructor <init>(LWg/c;)V
    .locals 0

    iput-object p1, p0, LWg/c$a;->b:LWg/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTg/j;LTg/j;)I
    .locals 2

    invoke-virtual {p1}, LTg/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LTg/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, LTg/j;->T()J

    move-result-wide v0

    invoke-virtual {p2}, LTg/j;->T()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LTg/j;

    check-cast p2, LTg/j;

    invoke-virtual {p0, p1, p2}, LWg/c$a;->a(LTg/j;LTg/j;)I

    move-result p1

    return p1
.end method
