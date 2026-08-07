.class public final synthetic LE1/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE1/U;


# instance fields
.field public final a:LE1/j;

.field public final b:LE1/W;

.field public final c:LE1/q;

.field public final d:LE1/U;


# direct methods
.method public constructor <init>(LE1/j;LE1/W;LE1/q;LE1/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/c1;->a:LE1/j;

    iput-object p2, p0, LE1/c1;->b:LE1/W;

    iput-object p3, p0, LE1/c1;->c:LE1/q;

    iput-object p4, p0, LE1/c1;->d:LE1/U;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, LE1/c1;->a:LE1/j;

    iget-object v1, p0, LE1/c1;->b:LE1/W;

    iget-object v2, p0, LE1/c1;->c:LE1/q;

    iget-object v3, p0, LE1/c1;->d:LE1/U;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, LE1/W;->b(Z)V

    invoke-virtual {v0, v2}, LE1/j;->k0(LE1/q;)LQ1/k;

    if-eqz v3, :cond_0

    invoke-interface {v3}, LE1/U;->zza()V

    :cond_0
    return-void
.end method
