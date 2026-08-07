.class public final Lwi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwi/c$l;,
        Lwi/c$m;,
        Lwi/c$o;,
        Lwi/c$n;,
        Lwi/c$f;,
        Lwi/c$p;,
        Lwi/c$j;,
        Lwi/c$b;,
        Lwi/c$k;,
        Lwi/c$c;,
        Lwi/c$h;,
        Lwi/c$q;,
        Lwi/c$a;,
        Lwi/c$i;,
        Lwi/c$d;,
        Lwi/c$e;,
        Lwi/c$g;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JdkConstants should not be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
