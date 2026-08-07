.class public Lv3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/e;->j()Ls3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv3/e;


# direct methods
.method public constructor <init>(Lv3/e;)V
    .locals 0

    iput-object p1, p0, Lv3/e$a;->a:Lv3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lv3/f;

    iget-object v0, p0, Lv3/e$a;->a:Lv3/e;

    invoke-static {v0}, Lv3/e;->f(Lv3/e;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lv3/e$a;->a:Lv3/e;

    invoke-static {v0}, Lv3/e;->g(Lv3/e;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lv3/e$a;->a:Lv3/e;

    invoke-static {v0}, Lv3/e;->h(Lv3/e;)Ls3/d;

    move-result-object v4

    iget-object v0, p0, Lv3/e$a;->a:Lv3/e;

    invoke-static {v0}, Lv3/e;->i(Lv3/e;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lv3/f;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Ls3/d;Z)V

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Lv3/f;->s(Ljava/lang/Object;Z)Lv3/f;

    invoke-virtual {v6}, Lv3/f;->C()V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lv3/e$a;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
