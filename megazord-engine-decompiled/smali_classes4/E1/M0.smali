.class public final synthetic LE1/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/M0;->a:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LE1/M0;->a:Landroid/app/PendingIntent;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    new-instance v1, LE1/O0;

    invoke-direct {v1, p2}, LE1/O0;-><init>(LQ1/l;)V

    invoke-virtual {p1, v0, v1}, LB1/A;->M0(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V

    return-void
.end method
