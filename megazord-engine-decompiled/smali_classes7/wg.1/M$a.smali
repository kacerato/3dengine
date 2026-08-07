.class public final Lwg/M$a;
.super LQf/b;
.source "SourceFile"


# annotations
.annotation build LFf/w;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LQf/b<",
        "LQf/g;",
        "Lwg/M;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, LQf/g;->m0:LQf/g$b;

    .line 3
    sget-object v1, Lwg/M$a$a;->b:Lwg/M$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, LQf/b;-><init>(LQf/j$c;Leg/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwg/M$a;-><init>()V

    return-void
.end method
