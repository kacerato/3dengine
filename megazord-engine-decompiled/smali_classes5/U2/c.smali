.class public LU2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LU2/e;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LU2/c;->a:Ljava/lang/Object;

    invoke-static {p2}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LU2/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LU2/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LU2/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LR2/z;->c(Ljava/lang/Object;)LR2/z$b;

    move-result-object v0

    const-string v1, "source"

    iget-object v2, p0, LU2/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, LR2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)LR2/z$b;

    move-result-object v0

    const-string v1, "event"

    iget-object v2, p0, LU2/c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, LR2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)LR2/z$b;

    move-result-object v0

    invoke-virtual {v0}, LR2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
