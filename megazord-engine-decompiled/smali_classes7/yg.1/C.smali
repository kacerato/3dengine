.class public final Lyg/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/y1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwg/y1;"
    }
.end annotation


# instance fields
.field public final b:Lwg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/q<",
            "Lyg/p<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/q;)V
    .locals 0
    .param p1    # Lwg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/q<",
            "-",
            "Lyg/p<",
            "+TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyg/C;->b:Lwg/q;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lyg/C;->b:Lwg/q;

    invoke-virtual {v0, p1, p2}, Lwg/q;->k(LEg/P;I)V

    return-void
.end method
