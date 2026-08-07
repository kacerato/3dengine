.class public Lch/c$a;
.super Lkh/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/c;->s(Lch/f;)Lkh/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lch/f;

.field public final synthetic f:Lch/c;


# direct methods
.method public constructor <init>(Lch/c;ZLlh/e;Llh/d;Lch/f;)V
    .locals 0

    iput-object p1, p0, Lch/c$a;->f:Lch/c;

    iput-object p5, p0, Lch/c$a;->e:Lch/f;

    invoke-direct {p0, p2, p3, p4}, Lkh/a$g;-><init>(ZLlh/e;Llh/d;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lch/c$a;->e:Lch/f;

    invoke-virtual {v0}, Lch/f;->c()Ldh/c;

    move-result-object v2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lch/f;->r(ZLdh/c;JLjava/io/IOException;)V

    return-void
.end method
