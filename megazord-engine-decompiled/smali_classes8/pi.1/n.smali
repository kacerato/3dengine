.class public Lpi/n;
.super Lpi/b;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpi/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lpi/C;)V
    .locals 0

    invoke-interface {p1, p0}, Lpi/C;->v(Lpi/n;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpi/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpi/n;->f:Ljava/lang/String;

    return-void
.end method
