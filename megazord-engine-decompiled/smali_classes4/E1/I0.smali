.class public final synthetic LE1/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:LE1/c;

.field public final b:Landroid/app/PendingIntent;

.field public final c:LE1/E;


# direct methods
.method public constructor <init>(LE1/c;Landroid/app/PendingIntent;LE1/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/I0;->a:LE1/c;

    iput-object p2, p0, LE1/I0;->b:Landroid/app/PendingIntent;

    iput-object p3, p0, LE1/I0;->c:LE1/E;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LE1/I0;->a:LE1/c;

    iget-object v1, p0, LE1/I0;->b:Landroid/app/PendingIntent;

    iget-object v2, p0, LE1/I0;->c:LE1/E;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    new-instance v3, LE1/N0;

    invoke-direct {v3, v0, p2}, LE1/N0;-><init>(LE1/c;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LB1/n;

    invoke-interface {p1, v1, v2, v3}, LB1/n;->u0(Landroid/app/PendingIntent;LE1/E;Lcom/google/android/gms/common/api/internal/e;)V

    return-void
.end method
