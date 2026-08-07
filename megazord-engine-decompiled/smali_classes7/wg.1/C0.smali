.class public final Lwg/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/D0;


# instance fields
.field public final b:Lwg/W0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/W0;)V
    .locals 0
    .param p1    # Lwg/W0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwg/C0;->b:Lwg/W0;

    return-void
.end method


# virtual methods
.method public d()Lwg/W0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lwg/C0;->b:Lwg/W0;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
