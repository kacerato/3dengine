.class public final Lyg/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lwg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:Lwg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/q<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/p;)V
    .locals 1
    .param p1    # Lwg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/p<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyg/j$b;->b:Lwg/p;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwg/q;

    iput-object p1, p0, Lyg/j$b;->c:Lwg/q;

    return-void
.end method


# virtual methods
.method public final a()Lwg/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwg/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/j$b;->b:Lwg/p;

    return-object v0
.end method

.method public k(LEg/P;I)V
    .locals 1
    .param p1    # LEg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/P<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lyg/j$b;->c:Lwg/q;

    invoke-virtual {v0, p1, p2}, Lwg/q;->k(LEg/P;I)V

    return-void
.end method
