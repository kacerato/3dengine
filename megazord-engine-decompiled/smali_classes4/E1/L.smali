.class public final synthetic LE1/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:LE1/j;

.field public final b:LB1/C;

.field public final c:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(LE1/j;LB1/C;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/L;->a:LE1/j;

    iput-object p2, p0, LE1/L;->b:LB1/C;

    iput-object p3, p0, LE1/L;->c:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LE1/L;->a:LE1/j;

    iget-object v1, p0, LE1/L;->b:LB1/C;

    iget-object v2, p0, LE1/L;->c:Landroid/app/PendingIntent;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {v0, v1, v2, p1, p2}, LE1/j;->q0(LB1/C;Landroid/app/PendingIntent;LB1/A;LQ1/l;)V

    return-void
.end method
