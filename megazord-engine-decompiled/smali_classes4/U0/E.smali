.class public final LU0/E;
.super LU0/V;
.source "SourceFile"


# instance fields
.field public final synthetic b:LX0/f$c;


# direct methods
.method public constructor <init>(LU0/F;Lcom/google/android/gms/common/api/internal/r;LX0/f$c;)V
    .locals 0

    iput-object p3, p0, LU0/E;->b:LX0/f$c;

    invoke-direct {p0, p2}, LU0/V;-><init>(Lcom/google/android/gms/common/api/internal/r;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Le3/a;
        value = "lock"
    .end annotation

    new-instance v0, LS0/c;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LS0/c;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, LU0/E;->b:LX0/f$c;

    invoke-interface {v1, v0}, LX0/f$c;->c(LS0/c;)V

    return-void
.end method
