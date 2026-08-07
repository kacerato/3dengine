.class public final synthetic LE1/J0;
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

    iput-object p1, p0, LE1/J0;->a:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LE1/J0;->a:Landroid/app/PendingIntent;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {p1, v0}, LB1/A;->L0(Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
