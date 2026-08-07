.class public LY2/q$b;
.super LY2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY2/q;-><init>(IZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY2/q;


# direct methods
.method public constructor <init>(LY2/q;)V
    .locals 0

    iput-object p1, p0, LY2/q$b;->a:LY2/q;

    invoke-direct {p0}, LY2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public m()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LY2/q$b;->a:LY2/q;

    invoke-static {v0}, LY2/q;->a(LY2/q;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
