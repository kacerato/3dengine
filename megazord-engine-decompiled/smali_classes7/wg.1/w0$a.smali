.class public final Lwg/w0$a;
.super LQf/b;
.source "SourceFile"


# annotations
.annotation build LFf/w;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LQf/b<",
        "Lwg/M;",
        "Lwg/w0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lwg/M;->Key:Lwg/M$a;

    .line 3
    sget-object v1, Lwg/w0$a$a;->b:Lwg/w0$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, LQf/b;-><init>(LQf/j$c;Leg/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwg/w0$a;-><init>()V

    return-void
.end method
