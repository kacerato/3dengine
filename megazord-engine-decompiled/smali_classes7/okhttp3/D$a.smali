.class public Lokhttp3/D$a;
.super Lokhttp3/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/D;->e(Lokhttp3/x;Llh/f;)Lokhttp3/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/x;

.field public final synthetic b:Llh/f;


# direct methods
.method public constructor <init>(Lokhttp3/x;Llh/f;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/D$a;->a:Lokhttp3/x;

    iput-object p2, p0, Lokhttp3/D$a;->b:Llh/f;

    invoke-direct {p0}, Lokhttp3/D;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/D$a;->b:Llh/f;

    invoke-virtual {v0}, Llh/f;->R()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lokhttp3/x;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/D$a;->a:Lokhttp3/x;

    return-object v0
.end method

.method public h(Llh/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/D$a;->b:Llh/f;

    invoke-interface {p1, v0}, Llh/d;->K(Llh/f;)Llh/d;

    return-void
.end method
