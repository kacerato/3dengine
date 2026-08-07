.class public Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/y;


# static fields
.field public static final f:Ljava/lang/String; = "AlarmManagerScheduler"

.field public static final g:Ljava/lang/String; = "attemptNumber"

.field public static final h:Ljava/lang/String; = "backendName"

.field public static final i:Ljava/lang/String; = "priority"

.field public static final j:Ljava/lang/String; = "extras"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lz0/d;

.field public c:Landroid/app/AlarmManager;

.field public final d:Ly0/g;

.field public final e:LB0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz0/d;LB0/a;Ly0/g;)V
    .locals 7

    .line 1
    const-string v0, "alarm"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Ly0/a;-><init>(Landroid/content/Context;Lz0/d;Landroid/app/AlarmManager;LB0/a;Ly0/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz0/d;Landroid/app/AlarmManager;LB0/a;Ly0/g;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ly0/a;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Ly0/a;->b:Lz0/d;

    .line 7
    iput-object p3, p0, Ly0/a;->c:Landroid/app/AlarmManager;

    .line 8
    iput-object p4, p0, Ly0/a;->e:LB0/a;

    .line 9
    iput-object p5, p0, Ly0/a;->d:Ly0/g;

    return-void
.end method


# virtual methods
.method public a(Lp0/r;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ly0/a;->b(Lp0/r;IZ)V

    return-void
.end method

.method public b(Lp0/r;IZ)V
    .locals 7

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backendName"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Lp0/r;->d()Ll0/e;

    move-result-object v1

    invoke-static {v1}, LC0/a;->a(Ll0/e;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Lp0/r;->c()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lp0/r;->c()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extras"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ly0/a;->a:Landroid/content/Context;

    const-class v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "attemptNumber"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "AlarmManagerScheduler"

    if-nez p3, :cond_1

    invoke-virtual {p0, v1}, Ly0/a;->c(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "Upload for context %s is already scheduled. Returning..."

    invoke-static {v0, p2, p1}, Lv0/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p3, p0, Ly0/a;->b:Lz0/d;

    invoke-interface {p3, p1}, Lz0/d;->B0(Lp0/r;)J

    move-result-wide v3

    iget-object p3, p0, Ly0/a;->d:Ly0/g;

    invoke-virtual {p1}, Lp0/r;->d()Ll0/e;

    move-result-object v5

    invoke-virtual {p3, v5, v3, v4, p2}, Ly0/g;->h(Ll0/e;JI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, v3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d"

    invoke-static {v0, p2, p1}, Lv0/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Ly0/a;->a:Landroid/content/Context;

    const/high16 p2, 0x4000000

    invoke-static {p1, v2, v1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p2, p0, Ly0/a;->c:Landroid/app/AlarmManager;

    iget-object p3, p0, Ly0/a;->e:LB0/a;

    invoke-interface {p3}, LB0/a;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v5

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public c(Landroid/content/Intent;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Ly0/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x24000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
