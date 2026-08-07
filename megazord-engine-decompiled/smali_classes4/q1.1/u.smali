.class public final Lq1/u;
.super LA1/X;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lq1/c;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lq1/u;->e:LQ1/l;

    invoke-direct {p0}, LA1/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .locals 1
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lq1/u;->e:LQ1/l;

    invoke-static {p1, p2, v0}, LU0/s;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
