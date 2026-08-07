.class public final Lch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/w;


# instance fields
.field public final a:Lokhttp3/z;


# direct methods
.method public constructor <init>(Lokhttp3/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/a;->a:Lokhttp3/z;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/w$a;)Lokhttp3/E;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ldh/g;

    invoke-virtual {v0}, Ldh/g;->b0()Lokhttp3/C;

    move-result-object v1

    invoke-virtual {v0}, Ldh/g;->l()Lch/f;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lch/a;->a:Lokhttp3/z;

    invoke-virtual {v2, v4, p1, v3}, Lch/f;->i(Lokhttp3/z;Lokhttp3/w$a;Z)Ldh/c;

    move-result-object p1

    invoke-virtual {v2}, Lch/f;->d()Lch/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Ldh/g;->k(Lokhttp3/C;Lch/f;Ldh/c;Lch/c;)Lokhttp3/E;

    move-result-object p1

    return-object p1
.end method
