.class public final LE1/P;
.super LE1/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:LQ1/l;

.field public final synthetic b:LE1/j;


# direct methods
.method public constructor <init>(LE1/j;LQ1/l;)V
    .locals 0

    iput-object p1, p0, LE1/P;->b:LE1/j;

    iput-object p2, p0, LE1/P;->a:LQ1/l;

    invoke-direct {p0}, LE1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1

    iget-object v0, p0, LE1/P;->a:LQ1/l;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->b0()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, LE1/P;->b:LE1/j;

    invoke-virtual {p1, p0}, LE1/j;->k0(LE1/q;)LQ1/k;

    return-void
.end method
