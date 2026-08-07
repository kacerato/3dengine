.class public final Lcom/google/android/gms/location/LocationRequest;
.super LZ0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build LZ0/c$a;
    creator = "LocationRequestCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:I = 0x64

.field public static final l:I = 0x66

.field public static final m:I = 0x68

.field public static final n:I = 0x69


# instance fields
.field public b:I
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_PRIORITY"
        id = 0x1
    .end annotation
.end field

.field public c:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_INTERVAL"
        id = 0x2
    .end annotation
.end field

.field public d:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_FASTEST_INTERVAL"
        id = 0x3
    .end annotation
.end field

.field public e:Z
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_EXPLICIT_FASTEST_INTERVAL"
        id = 0x4
    .end annotation
.end field

.field public f:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_EXPIRE_AT"
        id = 0x5
    .end annotation
.end field

.field public g:I
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_NUM_UPDATES"
        id = 0x6
    .end annotation
.end field

.field public h:F
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_SMALLEST_DISPLACEMENT"
        id = 0x7
    .end annotation
.end field

.field public i:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequest.DEFAULT_MAX_WAIT_TIME"
        id = 0x8
    .end annotation
.end field

.field public j:Z
    .annotation build LZ0/c$c;
        defaultValue = "false"
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/n0;

    invoke-direct {v0}, LE1/n0;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, LZ0/a;-><init>()V

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:Z

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    const v1, 0x7fffffff

    iput v1, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->j:Z

    return-void
.end method

.method public constructor <init>(IJJZJIFJZ)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # J
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p6    # Z
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p7    # J
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p9    # I
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p10    # F
        .annotation build LZ0/c$e;
            id = 0x7
        .end annotation
    .end param
    .param p11    # J
        .annotation build LZ0/c$e;
            id = 0x8
        .end annotation
    .end param
    .param p13    # Z
        .annotation build LZ0/c$e;
            id = 0x9
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .line 2
    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    iput-wide p2, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iput-wide p4, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationRequest;->e:Z

    iput-wide p7, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    iput p9, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    iput-wide p11, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iput-boolean p13, p0, Lcom/google/android/gms/location/LocationRequest;->j:Z

    return-void
.end method

.method public static B()Lcom/google/android/gms/location/LocationRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->R0(Z)Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public static S0(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A0()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    return v0
.end method

.method public F0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:Z

    return v0
.end method

.method public G0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->j:Z

    return v0
.end method

.method public J0(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    goto :goto_1

    :cond_0
    add-long v2, p1, v0

    goto :goto_0

    :goto_1
    const-wide/16 p1, 0x0

    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    :cond_1
    return-object p0
.end method

.method public K0(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    :cond_0
    return-object p0
.end method

.method public L0(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->S0(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:Z

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    return-object p0
.end method

.method public M0(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->S0(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:Z

    if-nez v0, :cond_0

    long-to-double p1, p1

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr p1, v0

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    :cond_0
    return-object p0
.end method

.method public N0(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->S0(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    return-object p0
.end method

.method public O0(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-lez p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P0(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x68

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    return-object p0
.end method

.method public Q0(F)Lcom/google/android/gms/location/LocationRequest;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R0(Z)Lcom/google/android/gms/location/LocationRequest;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationRequest;->j:Z

    return-object p0
.end method

.method public b0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    return-wide v0
.end method

.method public c0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    return-wide v0
.end method

.method public e0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->b:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/LocationRequest;->e:Z

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->f:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->h:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->k0()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->k0()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->j:Z

    iget-boolean p1, p1, Lcom/google/android/gms/location/LocationRequest;->j:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0()J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public n0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    return v0
.end method

.method public s0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    const/16 v2, 0x64

    const/16 v3, 0x69

    if-eq v1, v2, :cond_3

    const/16 v2, 0x66

    if-eq v1, v2, :cond_2

    const/16 v2, 0x68

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    const-string v1, "???"

    goto :goto_0

    :cond_0
    const-string v1, "PRIORITY_NO_POWER"

    goto :goto_0

    :cond_1
    const-string v1, "PRIORITY_LOW_POWER"

    goto :goto_0

    :cond_2
    const-string v1, "PRIORITY_BALANCED_POWER_ACCURACY"

    goto :goto_0

    :cond_3
    const-string v1, "PRIORITY_HIGH_ACCURACY"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    const-string v2, "ms"

    if-eq v1, v3, :cond_4

    const-string v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iget-wide v5, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    const-string v1, " maxWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    const-string v1, " smallestDisplacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_8

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->b:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->e:Z

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->g:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->h:F

    invoke-static {p1, v0, v1}, LZ0/b;->w(Landroid/os/Parcel;IF)V

    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->j:Z

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
