.class public LWg/g$a;
.super LWg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:LTg/s;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LTg/s;LTg/m;)V
    .locals 0

    invoke-direct {p0, p3}, LWg/d;-><init>(LTg/m;)V

    iput-object p1, p0, LWg/g$a;->b:Ljava/io/InputStream;

    iput-object p2, p0, LWg/g$a;->c:LTg/s;

    return-void
.end method

.method public static synthetic a(LWg/g$a;)LTg/s;
    .locals 0

    iget-object p0, p0, LWg/g$a;->c:LTg/s;

    return-object p0
.end method

.method public static synthetic b(LWg/g$a;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, LWg/g$a;->b:Ljava/io/InputStream;

    return-object p0
.end method
