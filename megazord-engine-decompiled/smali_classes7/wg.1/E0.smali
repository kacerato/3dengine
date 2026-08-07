.class public final Lwg/E0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwg/D0;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/D0;)V
    .locals 0
    .param p1    # Lwg/D0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwg/E0;->a:Lwg/D0;

    return-void
.end method
