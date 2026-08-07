.class public final Lz1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP2/c;


# instance fields
.field public final a:Lz1/n;

.field public final b:Lz1/K0;

.field public final c:Lz1/C;


# direct methods
.method public constructor <init>(Lz1/n;Lz1/K0;Lz1/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/w0;->a:Lz1/n;

    iput-object p2, p0, Lz1/w0;->b:Lz1/K0;

    iput-object p3, p0, Lz1/w0;->c:Lz1/C;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lz1/w0;->a:Lz1/n;

    invoke-virtual {v0}, Lz1/n;->a()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/app/Activity;LP2/d;LP2/c$c;LP2/c$b;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/w0;->b:Lz1/K0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lz1/K0;->c(Landroid/app/Activity;LP2/d;LP2/c$c;LP2/c$b;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lz1/w0;->c:Lz1/C;

    invoke-virtual {v0}, Lz1/C;->c()Z

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lz1/w0;->c:Lz1/C;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz1/C;->b(Lz1/E;)V

    iget-object v0, p0, Lz1/w0;->a:Lz1/n;

    invoke-virtual {v0}, Lz1/n;->d()V

    return-void
.end method
