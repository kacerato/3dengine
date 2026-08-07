.class public Lokhttp3/c$d$a;
.super Llh/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c$d;-><init>(Lah/d$f;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lah/d$f;

.field public final synthetic d:Lokhttp3/c$d;


# direct methods
.method public constructor <init>(Lokhttp3/c$d;Llh/y;Lah/d$f;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c$d$a;->d:Lokhttp3/c$d;

    iput-object p3, p0, Lokhttp3/c$d$a;->c:Lah/d$f;

    invoke-direct {p0, p2}, Llh/i;-><init>(Llh/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$d$a;->c:Lah/d$f;

    invoke-virtual {v0}, Lah/d$f;->close()V

    invoke-super {p0}, Llh/i;->close()V

    return-void
.end method
