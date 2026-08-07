.class public final Lz1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/t;


# instance fields
.field public final a:Lz1/k;

.field public b:Lz1/E;


# direct methods
.method public synthetic constructor <init>(Lz1/k;Lz1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/i;->a:Lz1/k;

    return-void
.end method


# virtual methods
.method public final N1()Lz1/u;
    .locals 4

    iget-object v0, p0, Lz1/i;->b:Lz1/E;

    const-class v1, Lz1/E;

    invoke-static {v0, v1}, Lz1/o0;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lz1/j;

    iget-object v1, p0, Lz1/i;->a:Lz1/k;

    iget-object v2, p0, Lz1/i;->b:Lz1/E;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lz1/j;-><init>(Lz1/k;Lz1/E;Lz1/g;)V

    return-object v0
.end method

.method public final bridge synthetic a(Lz1/E;)Lz1/t;
    .locals 0

    iput-object p1, p0, Lz1/i;->b:Lz1/E;

    return-object p0
.end method
