.class public LWg/f$a;
.super LWg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/io/File;

.field public final c:LTg/s;


# direct methods
.method public constructor <init>(Ljava/io/File;LTg/s;LTg/m;)V
    .locals 0

    invoke-direct {p0, p3}, LWg/d;-><init>(LTg/m;)V

    iput-object p1, p0, LWg/f$a;->b:Ljava/io/File;

    iput-object p2, p0, LWg/f$a;->c:LTg/s;

    return-void
.end method

.method public static synthetic a(LWg/f$a;)LTg/s;
    .locals 0

    iget-object p0, p0, LWg/f$a;->c:LTg/s;

    return-object p0
.end method

.method public static synthetic b(LWg/f$a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, LWg/f$a;->b:Ljava/io/File;

    return-object p0
.end method
