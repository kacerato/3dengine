.class public LV2/I$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV2/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LV2/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/Q<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/U;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/U<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LV2/U;->c()LV2/Q;

    move-result-object p1

    iput-object p1, p0, LV2/I$a;->a:LV2/Q;

    return-void
.end method


# virtual methods
.method public a(LV2/u;Ljava/lang/Object;)LV2/I$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;TE;)",
            "LV2/I$a<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/I$a;->a:LV2/Q;

    invoke-interface {v0, p1, p2}, LV2/Q;->w(LV2/u;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LV2/I$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)",
            "LV2/I$a<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/I$a;->a:LV2/Q;

    invoke-interface {v0, p1, p2, p3}, LV2/Q;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Ljava/lang/Object;)LV2/I$a;
    .locals 1
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LV2/I$a<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/I$a;->a:LV2/Q;

    invoke-interface {v0, p1}, LV2/Q;->q(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()LV2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/I<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/I$a;->a:LV2/Q;

    invoke-static {v0}, LV2/I;->c0(LV2/T;)LV2/I;

    move-result-object v0

    return-object v0
.end method
