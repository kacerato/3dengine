.class public final synthetic Ly0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ly0/s;

.field public final synthetic c:Lp0/r;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ly0/s;Lp0/r;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/k;->b:Ly0/s;

    iput-object p2, p0, Ly0/k;->c:Lp0/r;

    iput p3, p0, Ly0/k;->d:I

    iput-object p4, p0, Ly0/k;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ly0/k;->b:Ly0/s;

    iget-object v1, p0, Ly0/k;->c:Lp0/r;

    iget v2, p0, Ly0/k;->d:I

    iget-object v3, p0, Ly0/k;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Ly0/s;->i(Ly0/s;Lp0/r;ILjava/lang/Runnable;)V

    return-void
.end method
