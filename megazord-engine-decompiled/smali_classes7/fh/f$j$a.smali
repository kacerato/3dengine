.class public Lfh/f$j$a;
.super LYg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/f$j;->a(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lfh/h;

.field public final synthetic d:Lfh/f$j;


# direct methods
.method public varargs constructor <init>(Lfh/f$j;Ljava/lang/String;[Ljava/lang/Object;Lfh/h;)V
    .locals 0

    iput-object p1, p0, Lfh/f$j$a;->d:Lfh/f$j;

    iput-object p4, p0, Lfh/f$j$a;->c:Lfh/h;

    invoke-direct {p0, p2, p3}, LYg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lfh/f$j$a;->d:Lfh/f$j;

    iget-object v0, v0, Lfh/f$j;->d:Lfh/f;

    iget-object v0, v0, Lfh/f;->c:Lfh/f$h;

    iget-object v1, p0, Lfh/f$j$a;->c:Lfh/h;

    invoke-virtual {v0, v1}, Lfh/f$h;->f(Lfh/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lhh/f;->k()Lhh/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http2Connection.Listener failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfh/f$j$a;->d:Lfh/f$j;

    iget-object v3, v3, Lfh/f$j;->d:Lfh/f;

    iget-object v3, v3, Lfh/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Lhh/f;->r(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lfh/f$j$a;->c:Lfh/h;

    sget-object v1, Lfh/a;->PROTOCOL_ERROR:Lfh/a;

    invoke-virtual {v0, v1}, Lfh/h;->f(Lfh/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
