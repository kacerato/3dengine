.class public final LX2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LX2/a;
.end annotation


# static fields
.field public static final a:LT2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, LT2/i;->b()LT2/i$c;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, LT2/i$c;->b(CLjava/lang/String;)LT2/i$c;

    move-result-object v0

    const/16 v1, 0x27

    const-string v2, "&#39;"

    invoke-virtual {v0, v1, v2}, LT2/i$c;->b(CLjava/lang/String;)LT2/i$c;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, LT2/i$c;->b(CLjava/lang/String;)LT2/i$c;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, LT2/i$c;->b(CLjava/lang/String;)LT2/i$c;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, LT2/i$c;->b(CLjava/lang/String;)LT2/i$c;

    move-result-object v0

    invoke-virtual {v0}, LT2/i$c;->c()LT2/h;

    move-result-object v0

    sput-object v0, LX2/b;->a:LT2/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LT2/h;
    .locals 1

    sget-object v0, LX2/b;->a:LT2/h;

    return-object v0
.end method
