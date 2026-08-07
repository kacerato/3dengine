.class public LWg/i$a;
.super LWg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;LTg/m;)V
    .locals 0

    invoke-direct {p0, p2}, LWg/d;-><init>(LTg/m;)V

    iput-object p1, p0, LWg/i$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(LWg/i$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LWg/i$a;->b:Ljava/lang/String;

    return-object p0
.end method
