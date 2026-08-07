.class public final synthetic LE1/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:J

.field public final b:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(JLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LE1/H0;->a:J

    iput-object p3, p0, LE1/H0;->b:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, LE1/H0;->a:J

    iget-object v2, p0, LE1/H0;->b:Landroid/app/PendingIntent;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {p1, v0, v1, v2}, LB1/A;->I0(JLandroid/app/PendingIntent;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
