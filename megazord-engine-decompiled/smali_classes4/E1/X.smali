.class public final synthetic LE1/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:LE1/p;

.field public final b:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(LE1/p;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/X;->a:LE1/p;

    iput-object p2, p0, LE1/X;->b:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LE1/X;->a:LE1/p;

    iget-object v1, p0, LE1/X;->b:Landroid/app/PendingIntent;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    new-instance v2, LE1/a0;

    invoke-direct {v2, p2}, LE1/a0;-><init>(LQ1/l;)V

    invoke-virtual {p1, v0, v1, v2}, LB1/A;->N0(LE1/p;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V

    return-void
.end method
