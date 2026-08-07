.class public Lve/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:D

.field public b:Lve/c$c;

.field public c:Lve/c$c;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lve/c$c;->a:D

    return-void
.end method


# virtual methods
.method public a()Lve/c$c;
    .locals 1

    iget-object v0, p0, Lve/c$c;->c:Lve/c$c;

    return-object v0
.end method

.method public b()Lve/c$c;
    .locals 1

    iget-object v0, p0, Lve/c$c;->b:Lve/c$c;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lve/c$c;->a:D

    return-wide v0
.end method

.method public d(Lve/c$c;)V
    .locals 0

    iput-object p1, p0, Lve/c$c;->c:Lve/c$c;

    return-void
.end method

.method public e(Lve/c$c;)V
    .locals 0

    iput-object p1, p0, Lve/c$c;->b:Lve/c$c;

    return-void
.end method

.method public f(D)V
    .locals 0

    iput-wide p1, p0, Lve/c$c;->a:D

    return-void
.end method
